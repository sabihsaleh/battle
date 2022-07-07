RSpec.describe 'Player_names', type: :feature do
    it 'allows user to enter names and display them' do
        sign_in_and_play
        expect(page).to have_content 'Ronan vs Ollie'
    end
end
