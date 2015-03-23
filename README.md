##Recipe Organizer
Stores and lists recipes with ingredients, ingredient amount, and instructions, organized by categories created by the user.

Ruby v.2.2.0

##Project Setup (in the project directory)

1. `gem install bundler`
2. `gem install sinatra-activerecord`
3. `gem install rake`
4. `gem install bundler`
5. `bundle`
6. in a separate tab in the terminal, enter `postgres`
7. `rake db:create`
8. `rake db:migrate`
9. `ruby app.rb`
10. navigate to *https://localhost:4567* in a Web browser

##Tests

Tests for Ruby methods can be run using the RSpec gem.

`gem install rspec`
`rspec`

##Motivation

To practice the following: creating classes and methods, using Active Record, handling many-to-many relationships, using postgres databases.

##Known Bugs

As of 2015-03-22, the recipes_ingredients relationship had yet to be fully articulated in the app.rb.

##License

MIT License. Copyright 2015. Authors: **Carli Martinez** and **J. TURNER**
