class Journal::EigyougaiShuueki < Journal::Journal

  ACCOUNT_TITLE_ID = 3

  before_validation { self.account_title_id ||= ACCOUNT_TITLE_ID }

end
