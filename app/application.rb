class Application
  @@items = []
  
  def call(env)
     req = Rack::Request.new(env)
     resp = Rack::Response.new

     if req.path.match(/items/)
 
      song_title = req.path.split("/items/").last 
      song = @@items.find{|s| s.title == song_title}
 
      resp.write song.artist
    end

     resp.finish
   end
end