require('rspec')
require('places')

describe (Place) do
  describe('#place_title') do
    it('Makes a new place, with a title, returns title') do
      test_place = Place.new('Venice')
      expect(test_place.place_title()).to(eq('Venice'))

    end
  end

end
