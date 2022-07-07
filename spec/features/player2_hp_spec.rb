RSpec.describe 'Player_2_hit points', type: :feature do
    it 'shows the user their opponents hit points' do
        sign_in_and_play
        expect(page).to have_content 'Ronan, youre fighting Ollie who has 10hp remaining!'
    end
end