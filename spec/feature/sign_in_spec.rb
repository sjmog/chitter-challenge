# As a Maker
# So that I can post messages on Chitter as me
# I want to log in to Chitter

feature 'Signing in' do
  scenario 'I can sign in' do
    visit '/sign-in'
    fill_in :email, with: 'example@me.com'
    fill_in :password, with: 'password123'
    click_button 'Submit'
    expect(page).to have_content 'Welcome, example@me.com'
  end
end