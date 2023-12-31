class ShiftsController < ApplicationController
    def new
    end

    def create
        logger.debug "Params: #{params.inspect}"
        @shift = Shift.new(shift_params)
        if @shift.save
            flash[:success] = "保存成功"
            redirect_to share_path
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

    def share
        @token = Shift.new_token
    end

    private
        def shift_params
            allowed_params = (0..47).map do |time|
                (0..6).map do |week_day|
                    "week_day_#{time}_#{week_day}".to_sym
                end
            end
            params.require(:shift).permit(allowed_params)
        end
end
