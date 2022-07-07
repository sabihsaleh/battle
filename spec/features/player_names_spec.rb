RSpec.describe 'Player_names', type: :feature do
    it 'allows user to enter names and display them' do
        visit '/'
        fill_in 'Player1', with: 'Ronan'
        fill_in 'Player2', with: 'Ollie'
        click_button 'Submit'
        expect(page).to have_content 'Ronan vs Ollie'
    end
end
# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them
