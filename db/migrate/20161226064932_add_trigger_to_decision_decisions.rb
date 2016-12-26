class AddTriggerToDecisionDecisions < ActiveRecord::Migration[5.0]
  def up

    execute <<-SQL
CREATE TRIGGER decision_decisions_before_insert BEFORE INSERT
  ON decision_decisions FOR EACH ROW
BEGIN
  DECLARE max INT DEFAULT 0;
  SELECT MAX(serial) INTO max FROM decision_decisions WHERE entry_id = NEW.entry_id;
  SET NEW.serial = IFNULL(max, 0) + 1;
END
    SQL

  end

  def down
    execute "DROP TRIGGER decision_decisions_before_insert; "
  end
end
