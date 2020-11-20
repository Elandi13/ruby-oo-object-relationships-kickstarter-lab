class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers  
        pb1 = ProjectBacker.all.select {|pb| pb.project == self}
        pb1.map {|pb| pb.backer }
    end

end
