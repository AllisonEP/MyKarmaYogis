class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?
    #these gives access to methods in views
    
    private 
    def current_volunteer
        @current_volunteer ||= Volunteer.find_by_id(session[:volunteer_id]) if session[:volunteer_id]
    end

    def logged_in?
        !!session[:volunteer_id]
    end

    def redirect_if_not_logged_in?
        redirect_to '/' if !logged_in?
    end
end
