require 'rails_helper'

RSpec.describe Shift, type: :model do
  # it "is valid with valid attributes" do
  #   shift = FactoryBot.build(:shift) # ファクトリボットを使用してShiftモデルのインスタンスを作成
  #   expect(shift).to be_valid
  # end

  # it "is invalid without necessary information" do
  #   shift = FactoryBot.build(:shift, weekday_0_0: nil) # 必要な情報がない場合は無効とする
  #   expect(shift).to_not be_valid
  # end

  # it "stores the required number of people for each time slot" do
  #   shift = FactoryBot.create(:shift, weekday_0_0: 3, weekday_0_1: 2, weekday_1_0: 5)
  #   expect(shift.weekday_0_0).to eq(3)
  #   expect(shift.weekday_0_1).to eq(2)
  #   expect(shift.weekday_1_0).to eq(5)
  # end
end
