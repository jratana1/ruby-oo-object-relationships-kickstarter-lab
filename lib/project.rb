class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select {|backed_project| backed_project.project == self}.collect {|backed_project| backed_project.backer}
    end    
end