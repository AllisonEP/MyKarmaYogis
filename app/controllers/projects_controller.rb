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


        def index 
            @projects = Project.all 
        end 

    #def index 
       #if params[:volunteer_id] && @volunteer = Volunteer.find_by_id(params[:project_id])
                #@projects = @volunteer.projects
        #else
            #@error = "This isn't an existing volunteer" if params[:volunteer_id]
            #@projects = Projects.all
        #end
    #end


end

    private 

    def project_params
        params.permit(:title, :content)
    end

end
