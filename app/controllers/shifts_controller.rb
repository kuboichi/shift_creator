class ShiftsController < ApplicationController
    def new
    end

    def create
        @shift = Shift.new(shift_params)
        if @shift.save
            shift_id = @shift.id # Get the id of @shift
            flash[:success] = "保存成功"
            link = Shift.id_to_token(@shift.id)
            id_from_link = Shift.token_to_id(link)
            redirect_to share_path(link)
        else
            flash.now[:danger] = "保存失敗"
            render :new
        end
    end
    
    def show
        token = params[:token].to_s
        shift_id = Shift.token_to_id(token)
        @shift = Shift.find_by(id: shift_id)

        unless @shift
            flash[:danger] = "共有先が見つかりません。URLを確認してください"
            render :new
        end
    end

    def destroy
    end

    def share
    end

    def determined
        token = params[:token].to_s
        shift_id = Shift.token_to_id(token)
        @shift = Shift.find_by(id: shift_id)
        
        unless @shift
            flash[:danger] = "共有先が見つかりません。URLを確認してください"
            render :new
        end

        @shift.distribute_worker(@shift)

        if @shift.save
            if @shift.is_enough_worker(@shift)
                flash[:success] = "シフトが作成されました"
            else
                flash[:danger] = "人数が足りない時間があります"
            end
        else
            flash[:danger] = "データが正しいか確認してください"
            redirect_to show_path(token)
        end
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
