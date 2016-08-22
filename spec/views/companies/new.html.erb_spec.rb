require 'rails_helper'

RSpec.describe "companies/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      :name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :address => "MyString"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_phone[name=?]", "company[phone]"

      assert_select "input#company_email[name=?]", "company[email]"

      assert_select "input#company_address[name=?]", "company[address]"
    end
  end
end
