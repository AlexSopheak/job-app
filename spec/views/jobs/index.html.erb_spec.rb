require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        :title => "Title",
        :total_employees => 2,
        :description => "MyText",
        :requirement => "MyText",
        :term => "Term",
        :location => "Location",
        :salary => "9.99",
        :approved_state => "Approved State",
        :status => "Status",
        :remark => "MyText"
      ),
      Job.create!(
        :title => "Title",
        :total_employees => 2,
        :description => "MyText",
        :requirement => "MyText",
        :term => "Term",
        :location => "Location",
        :salary => "9.99",
        :approved_state => "Approved State",
        :status => "Status",
        :remark => "MyText"
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Term".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Approved State".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
