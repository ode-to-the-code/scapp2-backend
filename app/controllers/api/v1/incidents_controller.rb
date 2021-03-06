

class Api::V1::IncidentsController < ApplicationController


    def index
      # binding.pry
      @incidents = Incident.all
      render json: @incidents
    end

    def create
#
      @incident = Incident.new(incident_params)
      if @incident.save
        # binding.pry

        render json: @incident
      else
        render json: {error: 'Error saving incident'}
      end
    end

    def show
      @incident = Incident.find(params[:id])
      render json: @incident
    end

    def destroy
      @incident = Incident.find(params[:id])
      @incident.destroy
    end




    private

    def incident_params
      params.require(:incident).permit(:title, :date)
    end

end
