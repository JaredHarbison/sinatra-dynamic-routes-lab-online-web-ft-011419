require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    "Hello #{@user_name.reverse!}!"
  end
  get "/square/:number" do
    @number = params[:number]
    @result = @number.to_i * @number.to_i
    @result.to_s 
  end
end
