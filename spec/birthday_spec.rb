require 'birthday'

describe Birthday do
  let(:birthday) { Birthday.new }
  let(:faketoday) { Date.new(2021, 12, 8) }
  describe '#days_left' do
    it "returns days left to birthday" do
      expect(birthday.days_left(13, 12, faketoday)).to eq 5
    end
  end
end