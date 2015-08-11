require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places')


get('/') do
  @places_been = Place.all()
  # attachment "info.txt"
  # "store it"
  erb(:index)
end

post ('/upload') do
"upload page"
  end




post('/places') do



    place_name = params.fetch('place_name')
    place = Place.new(place_name)
    place.save()



    File.open('public/slideshow_pictures/' + params['file'][:filename], "w") do |f|
      f.write(params['file'][:tempfile].read)
      @pic_name = params['file'][:filename]
    erb(:places)
  end
end
