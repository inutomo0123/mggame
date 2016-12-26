class Journal::Kariirekin < Journal::Journal

  ACCOUNT_TITLE_ID = 5

  before_validation { self.account_title_id ||= ACCOUNT_TITLE_ID }

end
