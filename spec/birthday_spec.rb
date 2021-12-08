require 'birthday'

describe Birthday do
  let(:birthday) { Birthday.new }
  describe '#days_left' do
    it "returns days left to birthday" do
      expect(birthday.days_left(13, 12)).to eq 5
    end
  end
end