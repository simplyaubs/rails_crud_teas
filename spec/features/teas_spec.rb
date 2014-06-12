require 'spec_helper'

feature 'CRUD favorite teas' do
  scenario 'User can create a list of teas' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a tea'
    fill_in 'Name', with: 'Earl Grey'
    fill_in 'Category', with: 'Black'
    click_on 'Add tea'
    expect(page).to have_content 'Earl Grey'
    expect(page).to have_content 'Black'
  end
end