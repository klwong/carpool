require 'spec_helper'

describe "routes/edit" do
  before(:each) do
    @route = assign(:route, stub_model(Route,
      :type => 1,
      :city_id => 1,
      :event_id => 1
    ))
  end

  it "renders the edit route form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => routes_path(@route), :method => "post" do
      assert_select "input#route_type", :name => "route[type]"
      assert_select "input#route_city_id", :name => "route[city_id]"
      assert_select "input#route_event_id", :name => "route[event_id]"
    end
  end
end
