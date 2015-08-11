require('rspec')
require('places')

describe(Place) do

    before() do
      Place.clear()
    end
    

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

  describe('#clear') do
    it('Clears the array of places so future tests can run') do
      test_place = Place.new('Cambodia')
      test_place.save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end

end
