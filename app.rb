require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places')

get('/') do
  @places_been = Place.all()
  erb(:index)
end

post('/places') do
  place_name = params.fetch('place_name')
  place = Place.new(place_name)
  place.save()
  erb(:places)
end
