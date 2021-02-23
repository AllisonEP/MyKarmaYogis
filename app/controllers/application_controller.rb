class ApplicationController < ActionController::Base
    
    def current_vounteer
        @current_volunteer ||= Volunteer.find_by_id(session[:volunteer_id]) if session[:volunteer_id]
    end

    def logged_in?
        !!session[:volunteer_id]
    end

    def redirect_if_not_logged_in?
        redirect_to '/' if !logged_in?
    end
end
