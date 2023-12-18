class ShiftsController < ApplicationController
    def new
    end

    def create
        @shift = Shift.new(shift_params)
    end
    
    def edit
    end

    def update
    end

    def destroy
    end

    private
        def shift_params
            params.require(:shift).permit(:time, :week_day)
        end
end
