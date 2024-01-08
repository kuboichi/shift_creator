require 'rails_helper'

RSpec.describe Shift, type: :model do
  it "is valid with valid attributes" do
    shift = FactoryBot.build(:shift) # ファクトリボットを使用してShiftモデルのインスタンスを作成
    expect(shift).to be_valid
  end

  it "is invalid without necessary information" do
    invalid_shift = FactoryBot.build(:shift) # 必要な情報がない場合は無効とする
    invalid_shift.week_day_0_0 = nil
    expect(invalid_shift).to_not be_valid
  end

  it "stores the required number of people for each time slot" do
    shift = FactoryBot.create(:shift)
    expect(shift.week_day_0_0).to eq(1)
  end
end
