require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
<<<<<<< HEAD
      erb :super_hero
    end

=======
      erb "../views/super_hero".to_sym
    end


>>>>>>> bb1b92a9028e6e80efd2d931e609ef95b74f7ac2
    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:members].each do |details|
        Member.new(details)
      end
<<<<<<< HEAD
      @members = Member.all
      erb :team
=======

      @members = Member.all

      erb "../views/team".to_sym
>>>>>>> bb1b92a9028e6e80efd2d931e609ef95b74f7ac2
    end

end
