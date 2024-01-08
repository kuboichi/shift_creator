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

    describe "/new page" do
        it 'can create a new shift' do
            visit new_shift_path
            expect {
                click_button "Save"
            }.to change(Shift, :count).by(1)
            expect(page).to have_text "共有URLへアクセス"
        end

        it "return error when creating a wrong shift data" do
            visit new_shift_path
            fill_in "shift[week_day_0_0]", with: nil
            click_button "Save"
            expect(page).to have_content "保存失敗"
        end
    end

    describe "/share page" do
        before do
            visit new_shift_path
            click_button "Save"
        end

        # headありのテストでacceptを押した場合しか成功しない
        # it "can copy link" do
        #     click_button "コピー"
        #     page.driver.browser.switch_to.alert.accept
        #     expect(page.evaluate_script("navigator.clipboard.readText()")).to eq(@link)
        # end

        it "can access to show" do
            link = page.find("#sharedUrl").value
            visit link
            expect(page).to have_text("提出済みのシフト")
        end
    end
end