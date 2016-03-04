require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      :street_address => "MyString",
      :city => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_street_address[name=?]", "location[street_address]"

      assert_select "input#location_city[name=?]", "location[city]"

      assert_select "input#location_latitude[name=?]", "location[latitude]"

      assert_select "input#location_longitude[name=?]", "location[longitude]"
    end
  end
end
