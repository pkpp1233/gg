require 'spec_helper'

describe "genius/index" do
  before(:each) do
    assign(:genius, [
      stub_model(Geniu,
        :first_name => "First Name",
        :last_name => "Last Name",
        :string => "String",
        :software_id => 1,
        :linkedin_url => "Linkedin Url"
      ),
      stub_model(Geniu,
        :first_name => "First Name",
        :last_name => "Last Name",
        :string => "String",
        :software_id => 1,
        :linkedin_url => "Linkedin Url"
      )
    ])
  end

  it "renders a list of genius" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Linkedin Url".to_s, :count => 2
  end
end
