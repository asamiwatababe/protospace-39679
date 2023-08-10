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
        @prototypes = @user.prototypes 
    end

    #def logout
       # session[:user_id] = nil
        #redirect_to root_path
    #end

   
    
      private
    
    def user_params
        params.require(:user).permit(:password, :email) 
    end
    
end
