feature 'Displays a message' do
  scenario 'wishes happy birthday' do
    visit('/')
    fill_in('first_name', with: 'Ru')
    fill_in('day', with: 3)
    select('December', from: 'month')
    click_button('Go!')
    expect(page).to have_content('🥳 Happy Birthday Ru! 🎉🎁🎂')
  end
end