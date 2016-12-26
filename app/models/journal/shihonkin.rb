class Journal::Shihonkin < Journal::Journal

  ACCOUNT_TITLE_ID = 6

  before_validation { self.account_title_id ||= ACCOUNT_TITLE_ID }

end
