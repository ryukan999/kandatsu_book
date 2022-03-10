# == Schema Information
#
# Table name: rentals
#
#  id         :bigint           not null, primary key
#  returned   :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  book_id    :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_rentals_on_book_id  (book_id)
#  index_rentals_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (book_id => books.id)
#  fk_rails_...  (user_id => users.id)
#
class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :book
  scope :now_rental, -> do
    where(returned: false)
  end 
end
