class School

    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
       
       if @roster.keys.include?(grade)
        roster[grade] << name
       else
        @roster[grade] = []
        @roster[grade] << name
       end
    end

    def grade(number)
        @roster[number]
    end

    def sort
        @roster.map {|key, value| @roster[key] = value.sort}
        @roster
    end

end