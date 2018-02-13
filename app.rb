require 'pry-byebug'
require 'sinatra'
require 'sinatra/activerecord'
# require './models/model'
require './models/event'
require './models/person'
require './models/registration'
require './config/environments' #database configuration

get '/' do
	erb :index
end

get '/people' do
	@list_people= Person.all
	erb :person
end

get '/person/new' do
	erb :create_person
end

get '/events' do
	@list_events= Event.all
	erb :event
end

get '/event/new' do
	erb :create_event
end

get '/registrations' do
	@list_registrations= Registration.all
	erb :registration
end

get '/registration/new' do
	erb :create_registration
end

post '/submit_person' do
	@person = Person.new(params[:current_person])
	if @person.save
		redirect '/people'
	else
		"Sorry, there was an error!"
	end
end

post '/submit_event' do
	@event = Event.new(params[:current_event])
	if @event.save
		redirect '/events'
	else
		"Sorry, there was an error!"
	end
end

post '/submit_registration' do
	@registration = Registration.new(params[:current_registration])
	if @registration.save
		redirect '/registrations'
	else
		"Sorry, there was an error!"
	end
end

# post '/submit' do
#   @model = Model.new(params[:model])
#   if @model.save
#     redirect '/models'
#   else
#     'Sorry, there was an error!'
#   end
# end
#
# get '/models' do
# 	@models = Model.all
# 	erb :models
# end
