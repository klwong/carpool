require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :provider => "MyString",
      :uid => "MyString",
      :contact => "MyString",
      :years_experience => 1
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_provider", :name => "user[provider]"
      assert_select "input#user_uid", :name => "user[uid]"
      assert_select "input#user_contact", :name => "user[contact]"
      assert_select "input#user_years_experience", :name => "user[years_experience]"
    end
  end
end
