class Journal::UrikakekinNyuukinController < ApplicationController

    def index
      @journal_urikakekin_nyuukins = Journal.where(
          entry_id: current_entry.id,
          account_title_id: Journal::URIKAKEKIN_NYUUKIN_ID
        )

    end

    def show
    end

    def new
      @journal_urikakekin_nyuukin = Journal.new(
          entry_id: current_entry.id,
          account_title_id: Journal::URIKAKEKIN_NYUUKIN_ID
        )

    end

    def edit
    end

    def create
      @journal_urikakekin_nyuukin = Journal.new({entry_id: current_entry.id,
        account_title_id: Journal::URIKAKEKIN_NYUUKIN_ID}.marge journal_urikakekin_nyuukin_params)

      respond_to do |format|
        if @journal_urikakekin_nyuukin.save
          format.html { redirect_to @journal_urikakekin_nyuukin,
            notice: 'UrikakekinNyuukin was successfully created.' }
          format.json { render :show,
            status: :created,
            location: @journal_urikakekin_nyuukin }
        else
          format.html { render :new }
          format.json { render json: @journal_urikakekin_nyuukin.errors,
            status: :unprocessable_entity }
        end
      end
    end


    def update
      respond_to do |format|
        if @journal_urikakekin_nyuukin.update(journal_urikakekin_nyuukin_params)
          format.html { redirect_to @journal_urikakekin_nyuukin,
            notice: 'UrikakekinNyuukin was successfully updated.' }
          format.json { render :show,
            status: :ok,
            location: @journal_urikakekin_nyuukin }
        else
          format.html { render :edit }
          format.json { render json: @journal_urikakekin_nyuukin.errors,
            status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @journal_urikakekin_nyuukin.destroy
      respond_to do |format|
        format.html { redirect_to journal_urikakekin_nyuukin_url,
            notice: 'UrikakekinNyuukin was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

      def set_journal_urikakekin_nyuukin
        @journal_urikakekin_nyuukin = Journal.find(param[:id])
          .where(
            entry_id: current_entry.id,
            account_title_id: Journal::URIKAKEKIN_NYUUKIN_ID
          )
      end

      def journal_urikakekin_nyuukin_params
        params.require(:journal_urikakekin_nyuukin).permit(:amount)
      end
end
