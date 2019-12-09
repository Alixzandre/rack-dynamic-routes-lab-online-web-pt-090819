class Application
  @@items = []
  
  def call(env)
     req = Rack::Request.new(env)
     resp = Rack::Response.new

     if req.path.match(/items/)
      item_name = req.path.split("/items/").last 
      name = @@items.find{|s| s.name == item_name}
     else
      
    end

     resp.finish
   end
end