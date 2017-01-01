class Behavior < ApplicationRecord
  belongs_to :entry
  belongs_to :behavior_type

  belongs_to :parent, {
    class_name: Behavior,
    foreign_key: :parent_id,
    required: false
  }

  has_many  :children, {
    class_name: Behavior,
    foreign_key: :parent_id
  }
end
