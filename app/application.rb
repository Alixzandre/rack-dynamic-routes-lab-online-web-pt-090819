class Application
  @@items = []
  
  def call(env)
     req = Rack::Request.new(env)
     resp = Rack::Response.new

     if req.path.match(/songs/)
 
      song_title = req.path.split("/songs/").last #turn /songs/Sorry into Sorry
      song = @@songs.find{|s| s.title == song_title}
 
      resp.write song.artist
    end

     resp.finish
   end
end