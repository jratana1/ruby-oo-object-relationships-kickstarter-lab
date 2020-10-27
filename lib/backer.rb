class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select {|backed_project| backed_project.backer == self}.collect {|backed_project| backed_project.project}
    end
end