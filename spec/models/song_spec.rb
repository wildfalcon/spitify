require 'rails_helper'

RSpec.describe Song, type: :model do
  let(:song) { build(:song) }


  it "should be valid with default factor" do
    expect(song).to be_valid
  end

  it "should be invalide with future release date" do
    song.release_date = Time.now + 1.week
    expect(song).not_to be_valid
  end
 
end

