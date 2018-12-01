class Application 
  
  def call(env)
    resp = Rack::Response.new 
    time = Time.new 
    current_hour = time.hour
    
    if current_hour < 12 
      resp.write "Good Morning!"
    else 
      resp.write "Good Afternoon"
    end 
  end 
end 