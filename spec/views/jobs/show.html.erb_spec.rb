require 'rails_helper'

RSpec.describe "jobs/show", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Term/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Approved State/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/MyText/)
  end
end
