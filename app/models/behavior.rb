class Behavior < ApplicationRecord
  belongs_to :entry
  belongs_to :behavior_type
  belongs_to :account_title,   required: false
  belongs_to :decision_making, required: false
  belongs_to :risk,            required: false

  has_one :journal, {
    class_name:   Journal::Journal,
    foreign_key:  'journal_journal_id',
    required:     false
  }

  has_one :decision, {
    class_name:   Decision::Decision,
    foreign_key:  'decision_decision_id',
    required:     false
  }
end
