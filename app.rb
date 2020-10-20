require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do 
    @result = params[:number].to_i*params[:number].to_i
    "#{@result}.to_s"
  end
  
  get '/say/:number/:phrase' do
    @result = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      @result += @phrase
      @result += "\n"
    end
    "#{@result}"
  end
end