class WorkerDesiresController < ApplicationController
    
    def new
    end

    def create
        @shift = Shift.find_by(id: params[:worker_desire][:shift_id])
        @worker_desire = @shift.worker_desires.build(worker_desire_params)
        if @worker_desire.save
            flash[:success] = "保存成功"
            redirect_to root_url
        else
            flash[:danger] = "保存失敗"
            redirect_to root_url
        end
    end

    private
    def worker_desire_params
    params.require(:worker_desire).permit(:shift_id, :name, :comment, :start_time_monday, :end_time_monday,
                                     :start_time_tuesday, :end_time_tuesday,
                                     :start_time_wednesday, :end_time_wednesday,
                                     :start_time_thursday, :end_time_thursday,
                                     :start_time_friday, :end_time_friday,
                                     :start_time_saturday, :end_time_saturday,
                                     :start_time_sunday, :end_time_sunday)
    end
end
