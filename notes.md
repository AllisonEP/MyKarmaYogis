Volunteer app 

Project model 
-belongs to a volunteer 
-has many volunteers through teams
-belongs to a department
-title
-content 

Volunteer Model
-has many projects
-has many teams
-has many projects through teams
-has many departments through projects
-username
-email
-password digest 

Team Model joining volunteers and projects 
-belongs to a volunteer 
-belongs to a project 
-content (list of volunteers)


Department
-name 
-has many projects   
-has many volunteers through projects 

Many-mant join table 

*volunteers through teams have many projects, projects through teams has many volunteer s 