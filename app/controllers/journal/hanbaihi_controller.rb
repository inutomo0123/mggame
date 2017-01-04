class Journal::HanbaihiController < ApplicationController
  def new
    @object = Journal::Hanbaihi.new
  end

  def create
    @object =  Journal::Hanbaihi.new(journal_hanbaihi_params)
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

    def journal_hanbaihi_params
      params.require(:journal_hanbaihi).permit(:amount, :remarks)
    end
end
