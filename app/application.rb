class Application
  @@items = []
  
  def call(env)
     req = Rack::Request.new(env)
     resp = Rack::Response.new

     

     resp.finish
   end
end