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
        @volunteer = Volunteer.find_by_id(params[:id])
        redirect_to '/' if !@Volunteer
    end

    private 

    def volunteer_params
        params.require(:volunteer).permit(:username, :email, :password)
    end 

end
