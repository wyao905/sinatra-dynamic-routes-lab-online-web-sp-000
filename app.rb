require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end
  
  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    @squared.to_s
  end
  
  get '/say/:number/:phrase' do
    params[:number].to_i.times{params[:phrase]}
  end
end