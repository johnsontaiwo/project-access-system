class UsersController < ApplicationController

get '/account' do 
 erb :'/users/create_user'
end

post '/users/new' do
  if !params["username"].empty? && !params["email"].empty? && !params["password"].empty?
    @user = User.create(username: params["username"], email: params["email"], password: params["password"])
     session[:user_id] = @user.id
     erb :'/projects/homepage'
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
      erb :'projects/homepage'
    else
      redirect to '/login'
    end
  end

  get '/logout' do
    if !!current_user
       session.clear
      redirect "/"
    end
  end


end