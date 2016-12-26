class Journal::UrikakekinNyuukin < Journal::Journal

  ACCOUNT_TITLE_ID = 1

  before_validation { self.account_title_id ||= ACCOUNT_TITLE_ID }

end
