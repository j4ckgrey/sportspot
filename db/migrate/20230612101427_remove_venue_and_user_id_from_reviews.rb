class RemoveVenueAndUserIdFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_reference(:reviews, :venue, index: true)
    remove_reference(:reviews, :user, index: true)
  end
end
