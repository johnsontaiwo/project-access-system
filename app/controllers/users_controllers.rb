  class UsersController < ApplicationController


get '/account' do 
 erb :'/users/create_user'
end

get '/users' do
  @users = User.all
  erb :'/users/index'
end

post '/users/new' do
  if !params["username"].empty? && !params["email"].empty? && !params["password"].empty?
    @user = User.create(username: params["username"], email: params["email"], password: params["password"])
    @user.projects.build
     session[:user_id] = @user.id
     erb :'/users/show'
   else
    redirect to "/account"
  end
end
  
  get '/login' do
    erb :'/users/login'
  end

  post '/login' do
    @user = User.find_by(:username => params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      erb :'users/show'
    else
      redirect to '/login'
    end
  end

  get '/users/:id' do
    @user = User.find_by(params[:id])
    erb :'/users/show'
  end

  get '/logout' do
    session.clear
    redirect "/"
  end
   
   

end