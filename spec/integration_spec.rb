require('spec_helper')

describe('New shoe brand functionality', {:type => :feature}) do
  it('allows a user to add a new shoe brand') do
    visit('/')
    click_link('Shoes')
    fill_in('shoe_name', :with => "nike")
    fill_in('shoe_price', :with => "10")
    click_button('Add Shoe')
    expect(page).to have_content('Nike $10')
  end
end
describe('New shoe brand functionality', {:type => :feature}) do
  it('allows a user to view details for a shoe brand') do
    visit('/shoes')
    fill_in('shoe_name', :with => "reebok")
    fill_in('shoe_price', :with => "10")
    click_button('Add Shoe')
    click_link("Reebok $10")
    expect(page).to have_content('Shoe Brand: Reebok')
  end
end
describe('New shoe brand functionality', {:type => :feature}) do
  it('allows a user to associate a shoe with a store') do
    visit('/stores')
    fill_in('store_name', :with => "payless")
    click_button('Add Store')
    visit('/shoes')
    fill_in('shoe_name', :with => "reebok")
    fill_in('shoe_price', :with => "10")
    click_button('Add Shoe')
    click_link('Reebok $10')
    select("Payless", :from => "store_id")
    click_button("Submit")
    expect(page).to have_content('Payless')
  end
end
