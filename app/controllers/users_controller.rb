class UsersController < ApplicationController
    before_action :move_to_index, except: [:index, :show]

    def index
       
    end
    
    def new
        @user = User.new
    end

    def edit
    end

    def show
        @user = User.find(params[:id])
        @prototypes = current_user.prototypes 
    end

    def move_to_index
        unless user_signed_in?
            redilect_to action: :index
        end
    end

    def update
        if current_user.update(user_params)
            redirect_to root_path
        else
            render :edit, status: :unprocessable_entity
        end
    end
    
      private
    
    def user_params
        params.require(:user).permit(:password, :email) 
    end
end
