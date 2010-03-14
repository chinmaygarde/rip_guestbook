class EntryController < RestedController

  # HTTP GET
  get "/?" do
    @entrys = Entry.all
    #to_xml(entrys)
	to_html(:index)
  end

  get "/new" do
    @entry = Entry.new
    #to_xml(entry)
	to_html(:new)
  end

  get "/:id" do
    @entry = Entry.get(params[:id])
    #to_xml(entry)
	to_html(:show)
  end

  # HTTP POST
  post "/?" do
    @entry = Entry.new
    @entry.attributes = params[:entry]
    @entry.save
    #to_xml(entry)
	to_html(:show)
  end
end