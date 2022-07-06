class StepsController < ApplicationController
    def update
        step = Step.find(params[:id])
        if step
            step.completed = !step.completed
            step.save!
            render json: step
        else
            render json: {message: "Failed to find step with id"}
        end
    end
end
