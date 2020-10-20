require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@user_name.reverse}"
  end
  
  get '/square/:number' do 
    @result = params[:number].to_i*params[:number].to_i
    "#{@results}.to_s"
  end
  
  get '/say/:number/:phrase' do
    
  end
end