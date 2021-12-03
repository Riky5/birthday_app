feature 'Displays a message' do
  scenario 'wishes happy birthday' do
    visit('/')
    fill_in('first_name', with: 'Ru')
    fill_in('day', with: 3)
    select('December', from: 'month')
    click_button('Go!')
    expect(page).to have_content('🥳 Happy Birthday Ru! 🎉🎁🎂')
  end

   scenario 'number of days left to birthday' do
    visit('/')
    fill_in('first_name', with: 'Riky')
    fill_in('day', with: 8)
    select('December', from: 'month')
    click_button('Go!')
    expect(page).to have_content('Your birthday will be in 5 days, Riky')
  end
end