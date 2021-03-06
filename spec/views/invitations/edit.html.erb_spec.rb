require 'spec_helper'

describe "invitations/edit" do
  before(:each) do
    @invitation = assign(:invitation, stub_model(Invitation,
      :type => 1,
      :user_id => 1,
      :event_id => 1
    ))
  end

  it "renders the edit invitation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invitations_path(@invitation), :method => "post" do
      assert_select "input#invitation_type", :name => "invitation[type]"
      assert_select "input#invitation_user_id", :name => "invitation[user_id]"
      assert_select "input#invitation_event_id", :name => "invitation[event_id]"
    end
  end
end
