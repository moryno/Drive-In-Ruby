class DriveIn
    attr_reader :name
    
    def initialize(name)
        @name = name
    end

    def screens
        MovieScreen.all_screens.select do |screen|
        screen.drive_in == self
       end
    end

    def whats_playing
        screens.collect{|screen| screen.movie_title}
    end

    def full_house?
        screens.map do |screen|
            if screen.available_spots == 0
                return true
            end            
        end
        return false
    end

end
