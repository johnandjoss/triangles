require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('path to triangle type', {:type => :feature}) do
  it('processess user input of lengths of triangle sides and returns triangle type to user') do
    visit('/')
    fill_in('side1', :with => '2')
    fill_in('side2', :with => '3')
    fill_in('side3', :with => '3')
    click_button('Send lengths!')
    expect(page).to have_content('It is')
  end
end
