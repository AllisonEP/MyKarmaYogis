class VolunteersController < ApplicationController
    def new
        @volunteer = Volunteer.new
    end

    def create
       @volunteer = Volunteer.new(volunteer_params)
       if @volunteer.save
        session[:volunteer_id] = @volunteer_id
        redirect_to @volunteer
       else
        render :new
       end
    end 

    def show
    end

    private 

    def volunteer_params
        params.require(:volunteer).permit(:username, :email, :password)
    end 

end
