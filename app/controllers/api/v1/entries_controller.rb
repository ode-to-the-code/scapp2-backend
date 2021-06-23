class Api::V1::EntriesController < ApplicationController


      before_action :set_incident



      def index
        if @incident
          @entries = @incident.entries
        else
          @entries = Entry.all
        end
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

  def set_incident
    @incident = Incident.find(params[:incident_id])
  end

  def entry_params
    params.require(:entry).permit(:content, :situation, :selftalk, :friendresponse)
  end

end
