class ProjectsController < ApplicationController

get '/projects' do
  @projects = Project.all
  erb :'/projects/projects'
end
  


end