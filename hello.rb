require 'sinatra'

get '/' do
  @name = %w(Asterix Obelix Viking).sample
  erb :index
end

get '/hello' do
  if params[:name] && params[:lastname]
    @visitor = params[:name]+" "+params[:lastname]
  else
    if params[:name]
      @visitor = params[:name]
    end
  end
  erb :index
end

get '/secret' do
  'This is a secret page'
end