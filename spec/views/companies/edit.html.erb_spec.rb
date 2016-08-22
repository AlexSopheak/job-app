require 'rails_helper'

RSpec.describe "companies/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_phone[name=?]", "company[phone]"

      assert_select "input#company_email[name=?]", "company[email]"

      assert_select "input#company_address[name=?]", "company[address]"
    end
  end
end
