class Place

  @@places_been = []

  def initialize(place_name)
    @place_name = place_name
  end

  def place_title
    @place_name
  end

  def save
    @@places_been.push(self)
  end

  define_singleton_method(:all) do
    @@places_been
  end


end
