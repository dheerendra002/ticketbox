require 'rails_helper'

RSpec.describe "roles/edit", :type => :view do
  before(:each) do
    @role = assign(:role, Role.create!(
      :name => "MyString",
      :level => "MyString",
      :user_id => 1,
      :group_id => 1,
      :owner_id => 1
    ))
  end

  it "renders the edit role form" do
    render

    assert_select "form[action=?][method=?]", role_path(@role), "post" do

      assert_select "input#role_name[name=?]", "role[name]"

      assert_select "input#role_level[name=?]", "role[level]"

      assert_select "input#role_user_id[name=?]", "role[user_id]"

      assert_select "input#role_group_id[name=?]", "role[group_id]"

      assert_select "input#role_owner_id[name=?]", "role[owner_id]"
    end
  end
end
