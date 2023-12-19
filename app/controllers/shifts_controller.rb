class ShiftsController < ApplicationController
    def new
    end

    def create
        @shift = Shift.new(shift_params)
        if @shift.save
            flash.now[:success] = "保存成功"
            render :new
            #本当は別のページにredirectする
        else
            flash.now[:danger] = "保存失敗"
            render :new
        end
    end
    
    def edit
    end

    def update
    end

    def destroy
    end

    private
        def shift_params
            params.require(:people_needed).permit(:time, :week_day)
        end
end
