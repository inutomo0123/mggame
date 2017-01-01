class AddTriggerToBehaviors < ActiveRecord::Migration[5.0]
  def up

    execute <<-SQL
CREATE TRIGGER behaviors_before_insert BEFORE INSERT
  ON behaviors FOR EACH ROW
BEGIN
  DECLARE max INT DEFAULT 0;
  SELECT MAX(serial) INTO max FROM behaviors WHERE entry_id = NEW.entry_id;
  SET NEW.serial = IFNULL(max, 0) + 1;
END
    SQL

  end

  def down
    execute "DROP TRIGGER behaviors_before_insert; "
  end
end
