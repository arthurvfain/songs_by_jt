class SuperFansController < ApplicationController
    def index
        fans = SuperFan.all
        render json: fans
    end

    def destroy
        fan = SuperFan.find(params[:id])
        destroyed = fan.destroy
        if destroyed.valid?
            head :no_content
        else
            render json: { error: "failed to delete" }, status: 422
        end
    end
end
