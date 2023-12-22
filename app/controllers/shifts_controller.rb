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
            allowed_params = (0..47).flat_map do |time|
                (0..6).map do |week_day|
                    "week_day_#{time}_#{week_day}".to_sym
                end
            end
            params.require(:shift).permit(allowed_params)
        end
end
