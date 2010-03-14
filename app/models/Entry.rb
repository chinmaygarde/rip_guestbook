class Entry

	include DataMapper::Resource
	
    property :id, Serial
	
	property :comment, String
	
	property :name, String
	
end