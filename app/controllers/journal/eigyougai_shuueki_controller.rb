class Journal::EigyougaiShuuekiController < Journal::JournalBaseController
  def new
    @object = Journal::EigyougaiShuueki.new
  end

  def create
    @object =  Journal::EigyougaiShuueki.new(journal_eigyougai_shuueki_params)
    @object.entry_id = current_entry_id

    b = Behavior.new behavior_type_id: 1, account_title_id: 3
    b.entry_id = current_entry_id

    begin
      @object.transaction do
        @object.save!
        b.journal_journal_id = @object.id
        b.save!
      end
    rescue
      render :new
    end

    redirect_to '/'
  end

  private

    def journal_eigyougai_shuueki_params
      params.require(:journal_eigyougai_shuueki).permit(:amount, :remarks)
    end
end
