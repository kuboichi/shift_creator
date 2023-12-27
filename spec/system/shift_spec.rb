require "rails_helper"

RSpec.describe "shifts", type: :system do
    it "get shifts/new" do
        visit "/shifts/new"
        expect(page).to have_text("各時間に必要な人数")
    end

    it "redirect to shifts/new from root" do
        visit "static_pages/home"
        click_on "Create"
        expect(page).to have_text("各時間に必要な人数")
    end
end