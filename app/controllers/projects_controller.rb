class ProjectsController < ApplicationController
 
get '/projects/home' do
  erb :'/projects/homepage'
end

get '/projects' do
  @projects = Project.all
  erb :'/projects/projects'
end
  
  get '/projects/new' do
    if logged_in?
      erb :'/projects/create_project'
    else
      redirect to "/login"
    end
  end

  post '/projects' do
    if !params[:project].empty?
    project = Project.create(params[:project])
    redirect to "/projects/#{project.id}"
    else
      erb :'/projects/homepage'
  end
end
 
  get '/projects/:id' do
   if logged_in?
    @project = Project.find(params[:id])
    erb :'/projects/show_single_project'
   else
    redirect to "/login"
   end
  end

  get '/projects/:id/edit' do
  
    @project = Project.find(params[:id])
    erb :'/projects/edit'
  end

  patch '/projects/:id/edit' do
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

end