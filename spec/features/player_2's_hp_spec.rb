RSpec.describe 'Player_2_hit points', type: :feature do
    it 'shows the user their opponents hit points' do
        visit '/'
        fill_in 'Player1', with: 'Ronan'
        fill_in 'Player2', with: 'Ollie'
        click_button 'Submit'
        expect(page).to have_content 'Ronan, youre fighting Ollie who has 10hp remaining!'
    end
end

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points