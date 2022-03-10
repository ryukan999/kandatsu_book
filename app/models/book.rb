# == Schema Information
#
# Table name: books
#
#  id                                     :integer          not null, primary key
#  author                                 :string
#  borrower                               :string
#  comment                                :text
#  group                                  :string
#  image                                  :string
#  isbn                                   :string
#  price                                  :integer
#  published_at                           :date
#  publisher                              :string
#  registrator                            :string
#  status                                 :string
#  summary                                :text
#  title                                  :string
#  created_at                             :datetime         not null
#  updated_at                             :datetime         not null
#  google_books_api_id                    :string
#  group_id                               :bigint
#  rental_user_id(本を借りているユーザー) :bigint
#  user_id                                :bigint
#
# Indexes
#
#  index_books_on_group_id        (group_id)
#  index_books_on_rental_user_id  (rental_user_id)
#  index_books_on_user_id         (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (group_id => groups.id)
#  fk_rails_...  (rental_user_id => users.id)
#  fk_rails_...  (user_id => users.id)
#
class Book < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :rentals, class_name: "Rental"
    has_many :rental_users, through: :rentals, source: :user 
    belongs_to :user
    belongs_to :group
    validates :isbn, uniqueness: true
    scope :now_rentals, -> do
        eager_load(:rentals).where(rentals: {returned: false})
      end 
    
    def rental_user
        not_returned_rental = rentals.where(returned: false).first
        not_returned_rental&.user
    end

    def now_rental?
        rentals.now_rental.present?
    end 
end
