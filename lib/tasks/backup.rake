def dir
  unless @dir
    @dir = "#{Rails.root}/db/backup"
    FileUtils.mkdir_p(@dir)
  end
  @dir
end

def interesting_tables
  rval = ActiveRecord::Base.connection.tables.sort
  rval.reject! do |tbl|
    ['schema_migrations','schema_info', 'sessions', 'public_exceptions'].include?(tbl)
  end
  rval
end

namespace :db do
  namespace :backup do

#    desc "Reload the database and rerun migrations"
#    task :redo do
#      Rake::Task['db:backup:write'].invoke
#      Rake::Task['db:drop'].invoke
#      Rake::Task['db:create'].invoke
#      Rake::Task['db:migrate'].invoke
#      Rake::Task['db:backup:read'].invoke
#    end

    desc "Dump entire db."
    task :write => :environment do
      FileUtils.chdir(dir)
      interesting_tables.each do |tbl|
	klass = tbl.classify.constantize
	puts "Writing #{tbl}..."
	File.open("#{tbl}.yml", 'w+') { |f| YAML.dump klass.find(:all).collect(&:attributes), f }
      end
      FileUtils.chdir(Rails.root)
    end

    desc "Loads the entire db."
    task :read => [:environment, 'db:schema:load'] do
      FileUtils.chdir(dir)

      interesting_tables.each do |tbl|
	ActiveRecord::Base.transaction do
	  begin
	    klass = tbl.classify.constantize
	    klass.destroy_all
	    klass.reset_column_information

	    puts "Loading #{tbl}..."
	    YAML.load_file("#{tbl}.yml").each do |fixture|
	      data = {}
	      klass.columns.each do |c|
		# filter out missing columns
		data[c.name] = fixture[c.name] if fixture[c.name]
	      end
	      sql = "INSERT INTO #{tbl} "
	      sql += "(#{data.keys.map{|kk| "#{kk}"}.join(",")}) "
	      sql += "VALUES (#{data.values.collect { |value| ActiveRecord::Base.connection.quote(value) }.join(",")})"

	      ActiveRecord::Base.connection.execute sql, 'Fixture Insert'
	    end
	  rescue Exception => exc
	    puts "failed to load table #{tbl}; Exception: #{exc}"
	  end
	end
      end
    end

    desc "Loads a table; e.g. rake db:backup:load[users]"
    task :load, [:table]  => :environment  do |t, args|
      FileUtils.chdir(dir)

      tbl = args.table
      ActiveRecord::Base.transaction do
	begin
	  klass = tbl.classify.constantize
	  klass.reset_column_information
	  puts "Loading #{tbl}..."
	  YAML.load_file("#{tbl}.yml").each do |fixture|
	    data = {}
	    klass.columns.each do |c|
	      # filter out missing columns
	      data[c.name] = fixture[c.name] if fixture[c.name]
	    end
	    sql = "INSERT INTO #{tbl} "
	    sql += "(#{data.keys.map{|kk| "#{kk}"}.join(",")}) "
	    sql += "VALUES (#{data.values.collect { |value| ActiveRecord::Base.connection.quote(value) }.join(",")})"

	    ActiveRecord::Base.connection.execute sql, 'Fixture Insert'

	  end
	rescue Exception => exc
	  puts "failed to load table #{tbl}; Exception: #{exc}"
	end
      end
    end

  end
end
