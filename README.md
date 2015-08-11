[![Build Status](https://travis-ci.org/timrobertson0122/binstagram.svg?branch=master)](https://travis-ci.org/timrobertson0122/binstagram)
[![Coverage Status](https://coveralls.io/repos/timrobertson0122/binstagram/badge.svg?branch=master&service=github)](https://coveralls.io/github/timrobertson0122/binstagram?branch=master)
[![Code Climate](https://codeclimate.com/github/timrobertson0122/binstagram/badges/gpa.svg)](https://codeclimate.com/github/timrobertson0122/binstagram)

Binstagram - this is rubbish!
===================

Try it out on Heroku  
http://binstagram.herokuapp.com/  

![Screenshot Homepage](/img/Screen.png)

Task
-----

Build something similar to Instagram using Rails.
       
Technologies
------------

Built on Rails  
Tested with Rspec, Capybara and Shoulda  
ORM - ActiveRecord  
Image management - Paperclip, Imagemagick, AWS S3  
Authentication - Devise, OmniAuth  
Styled with Bootstrap Sass

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* Ruby on Rails
* PSQL

### Project setup on local environment

```
git clone git@github.com:timrobertson0122/binstagram.git
cd binstagram
bundle
bin/rake db:create
rails s
```

#### Tests

```
bin/rake db:create RAILS_ENV=test
rspec
```

### Future Functionality

Edit users/photos  
Add name field to users    
Inline comments  
Twitter integration including handles/hashtags  
Better styling  
