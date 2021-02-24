class TeamsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index 
        if params[project_id] 
            @project = Project.find_by_id(params[:project_id])
            if @project 
                @teams = @project.teams
        else
            @error = "That isn't a current project."
            @teams = Team.all
        end
    end

    def index
        @teams = Team.all
    end

    def new 
        @team = Team.new
    end 

    def create
        @team = current_volunteer.teams.build(teams_params)
        if @team.save 
         redirect_to comments_path 
        else
            render :new
        end
    end

    def show 
        @team = Team.find_by(id: params[:id])
    end

    def edit
        @team = Team.find_by(id: params[:id])
    end

    def update
        @team = Team.find_by(id: params[:id])
    end
end
