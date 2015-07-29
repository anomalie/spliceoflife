class UsersController < ApplicationController
      def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to '/'
        else
            flash[:error] = @user.errors.full_messages.to_sentence
            redirect_to('/new')
        end
    end

    def show
        if current_user
            @user = current_user
        else
            redirect_to "/"
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
