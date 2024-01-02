class ShiftsController < ApplicationController
    def new
    end

    def create
        logger.debug "Params: #{params.inspect}"
        @shift = Shift.new(shift_params)
        if @shift.save
            shift_id = @shift.id # Get the id of @shift
            flash[:success] = "保存成功"
            link = id_to_token(@shift.id)
            redirect_to share_path(link)
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
