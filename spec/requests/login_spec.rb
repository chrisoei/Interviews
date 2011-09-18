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
end