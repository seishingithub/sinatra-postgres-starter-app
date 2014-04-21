require 'spec_helper'
require 'capybara/rspec'

Capybara.app = Application

feature 'Homepage' do
  scenario 'User can register' do
    visit '/'

    click_link 'Register'

    expect(current_path).to eq('/register')
    fill_in('email', :with => 'joe@schmo.com')
    fill_in('password', :with => '1234')

    click_button 'Register'

    expect(page).to have_content('Welcome, joe@schmo.com')
  end
end