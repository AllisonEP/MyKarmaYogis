class ProjectsController < ApplicationController
    before_action :redirect_if_not_logged_in?
    def new 
        @project = Project.new
    end

    def create
        @project = current_volunteer.projects.build(project_params)
        if @project.save
            redirect_to projects_path
        else 
            render :new
    end  
end

    private 

    def post_params
        params.require(:project).permit(:title, :content)
    end

end
