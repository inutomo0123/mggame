class Journal::KikaikouguController < ApplicationController
  def new
    @object = Journal::Kikaikougu.new
  end

  def create
    @object =  Journal::Kikaikougu.new(journal_kikaikougu_params)
    @object.entry_id = current_entry_id

    b = Behavior.new behavior_type_id: 1, account_title_id: 9
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

    def journal_kikaikougu_params
      params.require(:journal_kikaikougu).permit(:amount, :remarks)
    end
end
