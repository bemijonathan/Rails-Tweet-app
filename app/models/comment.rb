class Comment < ApplicationRecord
    validates :user_id ,presence: true
    validates :content ,presence: true
    validates :post_id ,presence: true
end
