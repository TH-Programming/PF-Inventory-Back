class SessionsController < ApplicationController
    skip_before_action :validate_authenticity_token

    def create
        user = user.where(email: params[:email]).first

        if user.valid_password?(params[:password])
            session[:user_id] = user.user_id

            render json: user
        else
            head(:unauthorized)
        end
    end

    def destroy
        session[:user_id].destroy
    end
end