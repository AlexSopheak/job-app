require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :title => "MyString",
      :total_employees => 1,
      :description => "MyText",
      :requirement => "MyText",
      :term => "MyString",
      :location => "MyString",
      :salary => "9.99",
      :approved_state => "MyString",
      :status => "MyString",
      :remark => "MyText"
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_title[name=?]", "job[title]"

      assert_select "input#job_total_employees[name=?]", "job[total_employees]"

      assert_select "textarea#job_description[name=?]", "job[description]"

      assert_select "textarea#job_requirement[name=?]", "job[requirement]"

      assert_select "input#job_term[name=?]", "job[term]"

      assert_select "input#job_location[name=?]", "job[location]"

      assert_select "input#job_salary[name=?]", "job[salary]"

      assert_select "input#job_approved_state[name=?]", "job[approved_state]"

      assert_select "input#job_status[name=?]", "job[status]"

      assert_select "textarea#job_remark[name=?]", "job[remark]"
    end
  end
end
