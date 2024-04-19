# Stones

[![Gem Version](https://badge.fury.io/rb/stones.png)](http://badge.fury.io/rb/stones)
[![GEM Downloads](https://img.shields.io/gem/dt/stones?color=168AFE&logo=ruby&logoColor=FE1616)](https://rubygems.org/gems/stones)

Each time I created a new Rails project these files are required.
I got tired of it and collected them in a gem.

Some files (e.g. reset.css) can be overwritten by a
corresponding one from your project.

Files:

    app/assets/images/facebook_32.png
    app/assets/images/github_32.png
    app/assets/images/google_32.png
    app/assets/images/matiq.ico
    app/assets/images/twitter_32.png
    app/assets/stylesheets/print.css
    app/assets/stylesheets/reset.css
    app/components/about_component.rb
    app/views/layouts/application.html.erb
    app/views/layouts/_body.slim
    app/views/layouts/_flash.slim
    app/views/layouts/_footer.slim
    app/views/layouts/_header.slim
    app/views/layouts/_html_head.slim
    app/views/root/about.slim
    app/views/shared/_error_explanation.html.erb
    config/initializers/concerns.rb

## Installation

As usual:
```ruby
# Gemfile
gem "stones"
```
and run "bundle install".

## Recommended

- rvm
- ruby 3.1+
- rails 7.0+

Dropped/cleaned files (still available in version 0.2.5):

- Rakefile
- .watchr
- lib/tasks/backup.rake

## Rails

"stones" takes care of a tag-head change introduced by Rails 7.x.

## Miscellaneous

Copyright (c) 2012-2023 Dittmar Krall (www.matiq.com),
released under the [MIT license](https://opensource.org/licenses/MIT).
