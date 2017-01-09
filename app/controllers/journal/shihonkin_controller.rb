class Journal::ShihonkinController < Journal::JournalBaseController
  def new
    @object = Journal::Shihonkin.new
  end

  def create
    @object =  Journal::Shihonkin.new(journal_shihonkin_params)
    @object.entry_id = current_entry_id

    b = Behavior.new behavior_type_id: 1, account_title_id: 6
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

    def journal_shihonkin_params
      params.require(:journal_shihonkin).permit(:amount, :remarks)
    end
end
