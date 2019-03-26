class UserController < ApplicationController
    before_action :autheticate_user, {only: [:view]}
    def view
        @users = User.all
    end
    def signup
    end
    def new
        @user = User.new
        @user.name = params[:name]
        @user.email = params[:email]
        @user.password = params[:password]
        @user.save
        redirect_to("/")
    end

    def loginform

    end

    def login 
        @user = User.find_by(email: params[:email], password: params[:password])
        if @user
            session[:user_id] = @user.id
            flash[:notice] = "You have logged in successfully"
            redirect_to("/posts")
        else
            @error_message = "Invalid email/password combination"
            @email = params[:email]
            @password = params[:password]
            render("user/loginform")  
        end
    end 
end
