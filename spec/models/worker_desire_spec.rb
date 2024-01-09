require 'rails_helper'

RSpec.describe WorkerDesire, type: :model do
  subject { 
    worker_desire = FactoryBot.create(:worker_desire)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  WorkerDesire::DAYS.each do |day|
    it "is not valid if start_time_#{day} is after end_time_#{day}" do
      subject.send("start_time_#{day}=", Time.parse("01:00"))
      subject.send("end_time_#{day}=", Time.parse("00:00"))
      expect(subject).to_not be_valid
    end

    it "is not valid if start_time_#{day} or end_time_#{day} is not present" do
      subject.send("start_time_#{day}=", nil)
      subject.send("end_time_#{day}=", nil)
      expect(subject).to_not be_valid
    end
  end
end
