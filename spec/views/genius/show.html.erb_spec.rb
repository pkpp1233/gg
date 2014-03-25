require 'spec_helper'

describe "genius/show" do
  before(:each) do
    @geniu = assign(:geniu, stub_model(Geniu,
      :first_name => "First Name",
      :last_name => "Last Name",
      :string => "String",
      :software_id => 1,
      :linkedin_url => "Linkedin Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/String/)
    rendered.should match(/1/)
    rendered.should match(/Linkedin Url/)
  end
end
