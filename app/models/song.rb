class Song < ApplicationRecord
  belongs_to :performer, class_name: "User"
  belongs_to :author, class_name: "User"

  validates :release_date, presence: true
  validate :not_released_in_future

  def not_released_in_future
    if release_date && (release_date > Time.now)
      errors.add(:relase_date, "song cannot have a release date in the future")
    end
  end
end
