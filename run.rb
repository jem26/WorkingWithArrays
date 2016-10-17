require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/years' do
	@years = [*1995..2016] # that's event a different way to do it!
	@description = "These years represent the range of years that I have been alive."
  erb :years, layout: :main
end

get '/states' do
	@states = ["Illinois", "Colorado", "Ohio", "Indiana", "California", "Florida", "Arizona", "Wisconsin", "Texas", "Tennessee", "South Carolina", "North Carolina", "Pennsylvania", "Oklahoma", "New Mexico", "Nevada", "Missouri", "Michigan", "Massachusetts", "Kentucky", "Iowa", "Georgia", "Arkansas"]
	@states.sort
	@states.sort!
  erb :states, layout: :main
end
