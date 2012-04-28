require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :type => 1,
      :vehicle => "Vehicle",
      :plate => "Plate",
      :from_landmark => "From Landmark",
      :to_landmark => "To Landmark",
      :passenger_limit => 1,
      :cost => 1.5,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Vehicle/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Plate/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/From Landmark/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/To Landmark/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
