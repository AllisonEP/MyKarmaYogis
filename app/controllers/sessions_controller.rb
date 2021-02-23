class SessionsController < ApplicationController

    def destroy
        session.clear
        redirect_to root_path
    end 

    def create 
       volunteer = Volunteer.find_by(username: params[:volunteer][:username])

       if volunteer && volunteer.authenticate(params[:volunteer][:password])
        session[:volunteer_id] = volunteer.id
     
        redirect_to "/"

       else
        flash[:message] = "Not your karma, please try again!"
        redirect_to "/login"
       end 

    end

end
