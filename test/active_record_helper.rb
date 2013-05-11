require 'active_support'
require 'active_record'

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")
ActiveRecord::Schema.define(:version => 1) do
  create_table "samples", :force => true do |t|
    t.string   "string"
    t.text     "text"
    t.integer  "integer"
    t.float    "float"
    t.decimal  "decimal"
    t.datetime "datetime"
    t.datetime "timestamp"
    t.time     "time"
    t.date     "date"
    t.binary   "binary"
    t.boolean  "boolean"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end
end