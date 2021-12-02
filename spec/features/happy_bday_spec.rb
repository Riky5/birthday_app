feature 'Displays a message' do
  scenario 'Shows Happy Birthday with a name' do
    visit('/')
    expect(page).to have_content('Happy Birthday Riky!')
  end
end