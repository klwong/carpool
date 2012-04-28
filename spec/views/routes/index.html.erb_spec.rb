require 'spec_helper'

describe "routes/index" do
  before(:each) do
    assign(:routes, [
      stub_model(Route,
        :type => 1,
        :city_id => 1,
        :event_id => 1
      ),
      stub_model(Route,
        :type => 1,
        :city_id => 1,
        :event_id => 1
      )
    ])
  end

  it "renders a list of routes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
