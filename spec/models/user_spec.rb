require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {build(:user)}

  it "should be valid by default" do
    expect(user).to be_valid
  end

  it "should in invalid with a blank email" do
    user.email = "test.example.com"
    expect(user).not_to be_valid
  end

end
