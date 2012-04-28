require 'spec_helper'

describe "invitations/new" do
  before(:each) do
    assign(:invitation, stub_model(Invitation,
      :type => 1,
      :user_id => 1,
      :event_id => 1
    ).as_new_record)
  end

  it "renders new invitation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invitations_path, :method => "post" do
      assert_select "input#invitation_type", :name => "invitation[type]"
      assert_select "input#invitation_user_id", :name => "invitation[user_id]"
      assert_select "input#invitation_event_id", :name => "invitation[event_id]"
    end
  end
end
