class EntriesController < ApplicationController


      before_action :set_account



      def index
        @entries = @incident.entries
        render json: @entries
      end


      def show
        @entry = Entry.find(params[:id])
        render json: @entry
      end



      def create
        @entry = @incident.entries.new(entry_params)
        if @entry.save
          render json: @entry
        else
          render json: {error: "entry not saved"}
        end
      end


      def destroy
        @entry = Entry.find(params[:id])
        @entry.destroy
      end




  private

  def set_entry
    @incident = Entry.find(params[:incident_id])
  end

  def entry_params
    params.require(:entry).permit(:content, :situation, :selftalk, :friendresponse)
  end

end
