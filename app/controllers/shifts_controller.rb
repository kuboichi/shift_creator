class ShiftsController < ApplicationController
    def new
    end

    def create
        logger.debug "Params: #{params.inspect}"
        @shift = Shift.new(shift_params)
        if @shift.save
            flash[:success] = "保存成功"
            redirect_to root_path
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
