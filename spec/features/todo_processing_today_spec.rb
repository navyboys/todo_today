require 'rails_helper'

feature 'todo processing: today' do
  scenario 'show, add, complete and delete todos' do
    navy = Fabricate(:user)
    visit_clinic = Fabricate(:todo, user: navy)
    buy_ticket = Fabricate(:todo, user: navy)

    sign_in(navy)
    expect(page).to have_content visit_clinic[:title]
    expect(page).to have_content buy_ticket[:title]

    fill_in 'Title', with: 'Cook Dinner'
    click_button 'Add'
    expect(page).to have_content 'Cook Dinner'

    find("a[href='/todos/#{visit_clinic.id}.completed']").click
    expect(page).to have_css('strike')

    find("a[href='/todos/#{buy_ticket.id}']").click
    expect(page).to have_no_content buy_ticket[:title]
  end
end
