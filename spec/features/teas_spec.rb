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

  scenario 'User can update a tea from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a tea'
    fill_in 'Name', with: 'Earl Grey'
    fill_in 'Category', with: 'Black'
    click_on 'Add tea'
    expect(page).to have_content 'Earl Grey'
    expect(page).to have_content 'Black'
    click_on 'Earl Grey'
    expect(page).to have_content 'Earl Grey'
    expect(page).to have_content 'Black'
    click_on 'Edit'
    fill_in 'Name', with: 'Cream Oolong'
    fill_in 'Category', with: 'Oolong'
    click_on 'Update tea'
    expect(page).to have_content 'Cream Oolong'
    expect(page).to have_content 'Oolong'
    expect(page).to_not have_content 'Earl Grey'
    expect(page).to_not have_content 'Black'
  end

  scenario 'User can delete a tea from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a tea'
    fill_in 'Name', with: 'Earl Grey'
    fill_in 'Category', with: 'Black'
    click_on 'Add tea'
    expect(page).to have_content 'Earl Grey'
    expect(page).to have_content 'Black'
    click_on 'Earl Grey'
    expect(page).to have_content 'Earl Grey'
    expect(page).to have_content 'Black'
    click_on 'Delete'
    expect(page).to_not have_content 'Earl Grey'
    expect(page).to_not have_content 'Black'
  end
end