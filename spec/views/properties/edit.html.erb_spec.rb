require 'rails_helper'

RSpec.describe "properties/edit", type: :view do
  let(:property) {
    Property.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:property, property)
  end

  it "renders the edit property form" do
    render

    assert_select "form[action=?][method=?]", property_path(property), "post" do

      assert_select "input[name=?]", "property[name]"
    end
  end
end
