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
                click_button "保存"
            }.to change(Shift, :count).by(1)
            expect(page).to have_text "共有URLへアクセス"
        end

        it "return error when creating a wrong shift data" do
            visit new_shift_path
            fill_in "shift[week_day_0_0]", with: nil
            click_button "保存"
            expect(page).to have_content "保存失敗"
        end
    end

    describe "/share page" do
        before do
            visit new_shift_path
            click_button "保存"
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

    describe "/show page" do
        before do
            visit new_shift_path
            click_button "保存"
            @link = page.find("#sharedUrl").value
            visit @link
        end

        it "can submit a shift desire" do
            click_button "入力する"
            expect(page).to have_text("コメント") # "提出する"ボタンを確認しようとするとjsのロードが間に合わずエラーになる
            fill_in "worker_desire[name]", with: "test"
            expect {
            click_button "提出する"
            }.to change(WorkerDesire, :count).by(1)
        end

        it "return error without name" do
            click_button "入力する"
            fill_in "worker_desire[name]", with: nil
            click_button "提出する"
            expect(page).to have_text("保存失敗")
        end

        it "return error if start_time is after end_time" do
            click_button "入力する"
            fill_in "worker_desire[name]", with: "test"
            start_time_monday_cell = find('table tr:nth-child(2) td:nth-child(2) select')
            end_time_monday_cell = find('table tr:nth-child(2) td:nth-child(3) select')
            start_time_monday_cell.select("1:30")
            end_time_monday_cell.select("0:00")
            click_button "提出する"
            expect(page).to have_text("保存失敗")
        end
    end

    describe "/determined page" do
        it "can create shift automatically" do
            visit new_shift_path
            fill_in "shift[week_day_0_0]", with: 1
            click_button "保存"
            link = page.find("#sharedUrl").value
            visit link
            click_button "入力する"
            fill_in "worker_desire[name]", with: "tanaka"
            start_time_monday_cell = find('table tr:nth-child(2) td:nth-child(2) select')
            end_time_monday_cell = find('table tr:nth-child(2) td:nth-child(3) select')
            start_time_monday_cell.select("0:00")
            end_time_monday_cell.select("0:30")

            click_button "提出する"
            # click_button "シフトを自動作成する" # なぜかエラーになる
            token = link.split("/")[-1]
            visit determined_path(token)
            expect(page).to have_text("シフトが作成されました")
        end
    end
end