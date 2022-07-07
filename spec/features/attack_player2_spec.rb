RSpec.describe 'attack player 2', type: :feature do
  it 'allows the user to attack player 2 and receive confirmation' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Attack successful'
  end
end