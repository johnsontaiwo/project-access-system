class ProjectsController < ApplicationController
 
get '/projects/home' do
  erb :'/projects/homepage'
end

get '/projects' do
  if logged_in?
  @projects = Project.all
  erb :'/projects/projects'
else
  redirect to "/login"
end
end
  
  get '/projects/new' do
    if logged_in?
      @project = current_user.projects.build
      erb :'/projects/create_project'
    else
      redirect to "/login"
    end
  end

  post '/projects/new' do
    
    if logged_in?
    @user = current_user
    @project = current_user.projects.create(params[:project])

    redirect to "/users/#{@user.id}"
    else 
      
      erb :'/projects/new'
    end 
    
  end
    
end
 
 get '/projects/:id/edit' do
    @project = Project.find(params[:id])
    erb :'/projects/edit'
  end
  
  get '/projects/:id' do
    if logged_in?
    @project = Project.find_by_id(params[:id])
    erb :'/projects/show'
   end
  end

  
  patch '/projects/:id' do
    if params[:project].empty?
      redirect to "/projects"
    else
      project = Project.find_by_id(params[:id])
      project.update(params[:project])
      redirect to "/projects/#{project.id}"
    end
 end
 
 delete '/projects/:id/delete' do
  project = Project.find_by_id(params[:id])
  project.delete
   redirect to "/projects"

end

