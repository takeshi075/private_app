class Coment < ApplicationRecord
  belongs_to :post,optional: true
  belongs_to :user
end

