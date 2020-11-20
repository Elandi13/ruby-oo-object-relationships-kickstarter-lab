class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        pb1 = ProjectBacker.all.select {|pb| pb.backer == self}
        pb1.map {|pb| pb.project }
    end


end