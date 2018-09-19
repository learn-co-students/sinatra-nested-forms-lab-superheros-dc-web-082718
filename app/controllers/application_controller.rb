require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do

      erb :super_hero
    end

    post "/teams" do
      # {"team"=>
      #   {"name"=>"Team Ruby",
      #  "motto"=>"We love Ruby!",
      #  "hero"=>
      #   [{"name"=>"Amanda", "power"=>"Ruby", "bio"=>"I love Ruby!"},
      #    {"name"=>"Arel", "power"=>"JavaScript", "bio"=>"I love JavaScript!"},
      #    {"name"=>"Katie", "power"=>"Sinatra", "bio"=>"I love Sinatra!"}]}}
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @heroes = params[:team][:hero]
      erb :team
    end


end
