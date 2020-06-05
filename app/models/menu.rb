class Menu < ApplicationRecord
  belongs_to :post
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :repetition
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :weight
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :set_count


end

