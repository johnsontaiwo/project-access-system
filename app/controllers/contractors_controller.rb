class ContractorsController < ApplicationController

get '/contractors' do
  @contractors = Contractor.all
  if !@contractors.empty?
  erb :'/contractors/show_contractors'
  else
    redirect to "/contractors/new"
  end
end


get '/contractors/new' do
  erb :'/contractors/contractor_new'
end

post '/contractors/new' do
  if !params[:contractor].empty?
  contractor = Contractor.create(params[:contractor])
  redirect to "/projects"
  else
  redirect to "/contractors/new"
  end
end

get '/contractors/:id' do
  @contractor = Contractor.find_by(params[:id])
  erb :'/contractors/single_contractor'
end

get '/contractors/:id/edit' do
  if logged_in?
    @contractor = Contractor.find(params[:id])
    erb :'/contractors/edit'
  else
    redirect to "/login"
  end
patch '/contractors/:id/edit' do
      contractor = Contractor.find_by_id(params[:id])
      contractor.update(params[:contractor])
      redirect to "/contractors/#{contractor.id}"
    end
  end

  delete '/contractors/:id/delete' do
    contractor = Contractor.find_by(params[:id])
     contractor.delete
     redirect to "/contractors"
   end



end