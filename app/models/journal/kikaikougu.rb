class Journal::Kikaikougu < Journal::Journal

  ACCOUNT_TITLE_ID = 12

  before_validation { self.account_title_id ||= ACCOUNT_TITLE_ID }

end
