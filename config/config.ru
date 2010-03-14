require 'datamapper'
require 'rested_db'
require 'sinatra/base'
require 'builder'
require '/Users/Buzzy/Desktop/guestbook/app/models/Entry.rb'
require '/Users/Buzzy/Desktop/guestbook/app/controllers/EntryController.rb'
Sinatra::Base.set :public, File.join(File.dirname(File.dirname(__FILE__)), 'public')
map "/entry" do
	DataMapper.setup(:default, "sqlite3:///Users/Buzzy/Desktop/guestbook/db/development.sqlite3")
	controller = EntryController.new(File.dirname(File.dirname(__FILE__)))
	run controller
end
map "/public" do
	run RestedController.new(File.dirname(File.dirname(__FILE__)))
end
