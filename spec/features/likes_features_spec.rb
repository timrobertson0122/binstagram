require 'rails_helper'
require_relative 'helpers/session'
include SessionHelpers

feature 'liking a photo' do
  
  before do
    visit('/')
    click_link('Sign up')
    fill_in('Email', with: 'test@example.com')
    fill_in('Password', with: 'testpassword')
    fill_in('Password confirmation', with: 'testpassword')
    click_button('Sign up')
    add_photo('Dumpster', 'Industrial bin in blue with 4 multi-directional wheels.')
  end

  xscenario 'a user can like a photo, which increments the photo likes count' do    
    visit '/photos'
    click_link 'Like'
    expect(page).to have_content('1')
  end

  xscenario 'a user can only like a particular photo once' do
    visit '/photos'
    click
  end

end

