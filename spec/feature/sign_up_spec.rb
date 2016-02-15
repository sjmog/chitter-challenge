# As a Maker
# So that I can post messages on Chitter as me
# I want to sign up for Chitter

feature 'Signing up' do
  scenario 'I can sign up' do
    visit '/'
    fill_in :email, with: 'example@me.com'
    fill_in :password, with: 'password123'
    click_button 'Submit'
    expect(page).to have_content 'Welcome, example@me.com'
  end
end