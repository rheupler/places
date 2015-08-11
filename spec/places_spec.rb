require('rspec')
require('places')

describe(Place) do
  describe('#place_title') do
    it('Makes a new place, with a title, returns title') do
      test_place = Place.new('Venice')
      expect(test_place.place_title()).to(eq('Venice'))
    end
  end

  describe('#save') do
    it('Saves the place to the list') do
      test_place = Place.new('Venice')
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end
end
