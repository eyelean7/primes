require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('prime', {:type => :feature}) do
  it('returns primes up to the user\'s input') do
    visit('/')
    fill_in('prime', :with => '10')
    click_button('Send')
    expect(page).to have_content('2 3 5 7')
  end
end
