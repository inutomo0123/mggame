class Journal::UketoriHokenkin < Journal::Journal

  ACCOUNT_TITLE_ID = 4

  before_validation { self.account_title_id ||= ACCOUNT_TITLE_ID }

end
