require 'spec_helper'

describe "genius/edit" do
  before(:each) do
    @geniu = assign(:geniu, stub_model(Geniu,
      :first_name => "MyString",
      :last_name => "MyString",
      :string => "MyString",
      :software_id => 1,
      :linkedin_url => "MyString"
    ))
  end

  it "renders the edit geniu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", geniu_path(@geniu), "post" do
      assert_select "input#geniu_first_name[name=?]", "geniu[first_name]"
      assert_select "input#geniu_last_name[name=?]", "geniu[last_name]"
      assert_select "input#geniu_string[name=?]", "geniu[string]"
      assert_select "input#geniu_software_id[name=?]", "geniu[software_id]"
      assert_select "input#geniu_linkedin_url[name=?]", "geniu[linkedin_url]"
    end
  end
end
