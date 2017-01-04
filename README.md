# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.4

* System dependencies:
  - SQLite

* Configuration

* Database creation

* Database initialization

  `rake db:migrate`

* How to run the test suite

  `rake test`

* Deployment instructions
  - Use git clone url to clone repo in your preferred place
  - Use start_app_dev or start_app_prod scripts to run app
  - You can use included nginx virtual host config to configure it as proxy for api and web parts

* Bash script with API using examples
  ```
url_base='http://localhost:8081/api/v1/'
url_part='todos'

# New Todo create
# curl -XPOST -sd '{"todo":{"comment":"My First Todo","done":false}}' \
# -H 'Content-Type:application/json'  "${url_base}${url_part}"

# Get All data
curl -H 'Content-Type:application/json' "${url_base}${url_part}"

# Delete existed Todo item
# deleteitem='1'
# curl -XDELETE -sd -H 'Content-Type:application/json'  "${url_base}${url_part}/${deleteitem}"
```

* Create app
  - rails new --api todo-api
  - rails g scaffold Todo done:boolean comment:string date_end:date priority:integer
  - rake db:migrate
  - rake test
