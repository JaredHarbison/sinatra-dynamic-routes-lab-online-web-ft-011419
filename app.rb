require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    "Hello #{@user_name.reverse!}!"
  end
  get "/square/:number" do
    @number = params[:number]
    "#{@number * @number}"
end
