require('spec_helper')

describe('Ability to add new shoe brand', {:type => :feature}) do
  it('allows a user to add a new shoe brand') do
    visit('/')
    click_link('Shoes')
    fill_in('shoe_name', :with => "nike")
    fill_in('shoe_price', :with => "10")
    click_button('Add Shoe')
    expect(page).to have_content('Nike $10')
  end
end
#   it('allows a user to view details for a single employee') do
#     visit('/employees')
#     fill_in('employee_name', :with => "Lulu Beansy")
#     click_button('Add Employee')
#     click_link("Lulu Beansy")
#     expect(page).to have_content('Employee: Lulu Beansy')
#   end
#
#   it('allows a user to associate a project with an employee') do
#     visit('/projects')
#     fill_in('project_name', :with => "Book incineration project")
#     click_button('Add Project')
#     click_link('View Employees')
#     fill_in('employee_name', :with => "Guy Montagues")
#     click_button('Add Employee')
#     click_link("Guy Montague")
#     select("book incineration project", :from => "project_id")
#     click_button("Submit")
#     expect(page).to have_content('book incineration project')
#   end
# end
