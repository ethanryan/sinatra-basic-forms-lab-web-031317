require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do

    dog_name = params[:name]
    dog_breed = params[:breed]
    dog_age = params[:age]

    @new_puppy = Puppy.new(dog_name, dog_breed, dog_age)

    erb :display_puppy
  end

end #end class
