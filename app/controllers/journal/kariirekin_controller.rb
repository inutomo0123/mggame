class Journal::KariirekinController < ApplicationController
  def new
    @object = Journal::Kariirekin.new
  end

  def create
    @object =  Journal::Kariirekin.new(journal_kariirekin_params)
    @object.entry_id = current_entry_id

    b = Behavior.new behavior_type_id: 1, account_title_id: 1
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

    def journal_kariirekin_params
      params.require(:journal_kariirekin).permit(:amount, :remarks)
    end
end
