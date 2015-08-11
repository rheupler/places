require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the places path', {:type => :feature}) do
  it('Processes user entry, displays list of places') do
    visit('/')
    fill_in('place_name', :with => 'Venice')
    click_button('Submit')
    expect(page).to have_content('Place added!')
  end
end
