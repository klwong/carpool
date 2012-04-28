require 'spec_helper'

describe "passengers/new" do
  before(:each) do
    assign(:passenger, stub_model(Passenger,
      :event_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new passenger form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => passengers_path, :method => "post" do
      assert_select "input#passenger_event_id", :name => "passenger[event_id]"
      assert_select "input#passenger_user_id", :name => "passenger[user_id]"
    end
  end
end
