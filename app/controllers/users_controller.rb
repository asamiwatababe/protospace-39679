class UsersController < ApplicationController

    def show 
        @user = User.find(params[:id]) 
    end

    #def logout
       # session[:user_id] = nil
        #redirect_to root_path
    #end
    
end
