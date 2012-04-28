require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :type => 1,
      :vehicle => "MyString",
      :plate => "MyString",
      :from_landmark => "MyString",
      :to_landmark => "MyString",
      :passenger_limit => 1,
      :cost => 1.5,
      :user_id => 1
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path(@event), :method => "post" do
      assert_select "input#event_type", :name => "event[type]"
      assert_select "input#event_vehicle", :name => "event[vehicle]"
      assert_select "input#event_plate", :name => "event[plate]"
      assert_select "input#event_from_landmark", :name => "event[from_landmark]"
      assert_select "input#event_to_landmark", :name => "event[to_landmark]"
      assert_select "input#event_passenger_limit", :name => "event[passenger_limit]"
      assert_select "input#event_cost", :name => "event[cost]"
      assert_select "input#event_user_id", :name => "event[user_id]"
    end
  end
end
