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

    describe "Shift.new" do
        it 'Create a new shift' do
            visit new_shift_path
            expect {
                click_button "Save"
            }.to change(Shift, :count).by(1)
        end

        it "Create a wrong shift data" do
            visit new_shift_path
            fill_in "shift[week_day_0_0]", with: nil
            click_button "Save"
            expect(page).to have_content "保存失敗"
        end
    end
end