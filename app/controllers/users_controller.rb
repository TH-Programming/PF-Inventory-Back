class UsersController < ApplicationController

    def index
        users = User.all
        byebug
        render json: users
    end

    def create
    end

    def show
        auth = request.headers['Authorization']
        byebug
    end

    def destroy

    end
end
