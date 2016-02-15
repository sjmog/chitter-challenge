# As a Maker
# So that I can post messages on Chitter as me
# I want to sign up for Chitter

feature 'Signing up' do
  scenario 'A new user is created' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, example@me.com')
    expect(User.first.email).to eq('example@me.com')
  end

  private

  def sign_up
    visit '/'
    fill_in :email, with: 'example@me.com'
    fill_in :password, with: 'password123'
    click_button 'Submit'
  end
end