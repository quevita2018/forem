require 'spec_helper'

describe "forum moderators" do
  before do
    sign_in(FactoryBot.create(:admin))
    user = FactoryBot.create(:user, :login => "bob")
    group = FactoryBot.create(:group, :name => "The Mods")
    group.members << user

    forum = FactoryBot.create(:forum)

    visit edit_admin_forum_path(forum)
  end

  it "can assign a group as a moderators" do
    check "The Mods"
    click_button "Update Forum"
    within(".forum .moderators") do
      expect(page).to have_content("The Mods")
    end
  end
end
