require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'new'
    end

    post '/teams' do 

      @member1 = params[:team][:hero][0]
      @member2 = params[:team][:hero][1]
      @member3 = params[:team][:hero][2]
      @team = params[:team]

      erb  :'team'
    end 

    get '/team' do 
      erb :'team'
    end




end
