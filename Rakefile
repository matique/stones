begin
  require "bundler"
  require "bundler/setup"
rescue LoadError
  puts "You must `gem install bundler` and `bundle install` to run rake tasks"
end

Bundler::GemHelper.install_tasks

desc "Clean automatically generated files"
task :clean do
  FileUtils.rm_rf "pkg"
end
