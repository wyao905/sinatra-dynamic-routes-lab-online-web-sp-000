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
    params[:phrase] * params[:number].to_i
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word1]} #{params[:word1]} #{params[:word1]} #{params[:word1]}"
  end
  
  get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'add'
      added = params[:number1].to_i + params[:number2].to_i
      added.to_s
      
end