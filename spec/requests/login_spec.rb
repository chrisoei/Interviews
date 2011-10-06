require 'spec_helper'

describe 'Login' do
  
  it 'should show login page' do
    visit lock_login_path
    page.should have_button('Unlock')
  end
  
  it 'should allow logins' do
    visit lock_login_path
    fill_in 'password', :with=>'wideruled'
    click_on 'Unlock'
    page.should have_content('Unlocked!')
  end
  
  it 'should disallow incorrect logins' do
    visit lock_login_path
    fill_in 'password', :with=>'incorrect'
    click_on 'Unlock'
    page.should_not have_content('Unlocked!')
  end
  
  describe 'When logged in' do
    before :each do
      visit lock_login_path
      fill_in 'password', :with=>'wideruled'
      click_on 'Unlock'
      page.should have_content('Unlocked!')
      click_on 'Go to home page'
      page.should have_content("Listing questions")
    end
    
    it 'should list companies' do
      click_on "Companies"
      page.should have_content("Listing companies")
    end
    
    it 'should list postings' do
      click_on "Postings"
      page.should have_content("Listing postings")
#      save_and_open_page
    end
  end
end