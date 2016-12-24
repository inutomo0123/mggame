class AddTriggerToJounals < ActiveRecord::Migration[5.0]
  def up

    execute <<-SQL
CREATE TRIGGER journals_before_insert BEFORE INSERT
  ON journals FOR EACH ROW

BEGIN
  DECLARE max INT DEFAULT 0;

  SELECT MAX(serial) INTO max FROM journals WHERE entry_id = NEW.entry_id;

  SET NEW.serial = IFNULL(max, 0) + 1;

END
    SQL

    end

  def down

    execute "DROP TRIGGER journals_before_insert; "

  end
end
