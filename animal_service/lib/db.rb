require 'sequel'

class DB
  DATABASE ||= Sequel.connect(adapter: 'sqlite', database: './db/animal_db.sqlite3')
end