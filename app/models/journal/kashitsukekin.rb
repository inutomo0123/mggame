class Journal::Kashitsukekin < Journal::Journal

  ACCOUNT_TITLE_ID = 11

  before_validation { self.account_title_id ||= ACCOUNT_TITLE_ID }

end
