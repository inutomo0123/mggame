require 'test_helper'

class Journal::JournalTest < ActiveSupport::TestCase

  test "連番が記録される" do
    current = Journal::Journal.where(entry_id: entries(:one).id).maximum(:serial)

    un = Journal::UrikakekinNyuukin.new
    un.entry_id = entries(:one).id
    un.amount = 9999
    un.save!

    assert_equal current + 1, un.serial
  end

end
