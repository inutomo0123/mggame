class Journal::KashitsukekinController < ApplicationController
  def new
    @object = Journal::UrikakekinNyuukin.new
  end

  def create
    @object =  Journal::UrikakekinNyuukin.new(journal_kashitsukekin_params)
    @object.entry_id = current_entry_id

    b = Behavior.new behavior_type_id: 1, account_title_id: 8
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

    def journal_kashitsukekin_params
      params.require(:journal_kashitsukekin).permit(:amount, :remarks)
    end
end