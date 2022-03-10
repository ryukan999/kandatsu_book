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
require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
