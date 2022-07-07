def sign_in_and_play
  visit '/'
  fill_in 'Player1', with: 'Ronan'
  fill_in 'Player2', with: 'Ollie'
  click_button 'Submit'
end