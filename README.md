# Stones

[![Gem Version](https://img.shields.io/gem/v/stones?color=168AFE&logo=rubygems&logoColor=FE1616)](https://rubygems.org/gems/stones)
[![Downloads](https://img.shields.io/gem/dt/stones?color=168AFE&logo=rubygems&logoColor=FE1616)](https://rubygems.org/gems/stones)
[![GitHub Build](https://img.shields.io/github/actions/workflow/status/matique/stones/rake.yml?logo=github)](https://github.com/matique/stones/actions/workflows/rake.yml)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-standard-168AFE.svg)](https://github.com/standardrb/standard)
[![MIT License](https://img.shields.io/badge/license-MIT-168AFE.svg)](http://choosealicense.com/licenses/mit/)

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
    app/components/flash_component.rb
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
- ruby 3.3+
- rails 7.2+

Dropped/cleaned files (still available in version 0.2.5):

- Rakefile
- .watchr
- lib/tasks/backup.rake

## AboutComponent

### Usage
```ruby
...
render AboutComponent(title: "My App", text: "Does something")
...
```

## FlashComponent

### Usage
```ruby
...
flash[:error] = "Something failed"
...
render FlashComponent.new(flash)
...
```

## Rails

"stones" takes care of a tag-head change introduced by Rails 7.x.

## Miscellaneous

Copyright (c) 2012-2025 Dittmar Krall (www.matiq.com),
released under the [MIT license](https://opensource.org/licenses/MIT).
