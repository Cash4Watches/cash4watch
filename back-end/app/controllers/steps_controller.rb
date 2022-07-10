class StepsController < ApplicationController
    def update
        step = Step.find(params[:id])
        if step
            step.completed = !step.completed
            step.save!
            case step.index
            when 1
                # email for step 1
            when 2
                # email for step 2
            when 3
                # email for step 3
            when 4
                # email for step 4
            when 5
                # email for step 5
            end
            render json: step
        else
            render json: {message: "Failed to find step with id"}
        end
    end
end
