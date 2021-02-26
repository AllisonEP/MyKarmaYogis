class TeamsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index 
        if params[project_id] && @project = Project.find_by_id(params[:project_id])
                @teams = @project.teams
        else
            @error = "That isn't a current project."
            @teams = Team.all
        end
    end


    def new 

        if params[project_id] && @project = Project.find_by_id(params[:project_id])
            @team = @project.teams.build
        else

            @error = "That isn't a current project." if params[:project_id]
            @team = Team.new

    end 
end

    def create
        @team = current_volunteer.teams.build(teams_params)
        if @team.save 
         redirect_to teams_path 
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
        if @team.update(team_params)
            redirect_to team_path(@team)
        else
            render :edit
        end 
    end

    private 

    def teams_params
        params.require(:team).permit(:content,:project_id)
    end
end
