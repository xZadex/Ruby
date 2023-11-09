class Project
    attr_accessor :name, :description
    def initialize(p_name, p_description)
        @name = p_name
        @description = p_description
    end

    def elevator_pitch
        puts "Hello Sharks, our company is called #{self.name} and our company is about #{self.description}."
    end
end

project_01 = Project.new("Ring Doorbell", "home security")
puts project_01.name
project_01.elevator_pitch