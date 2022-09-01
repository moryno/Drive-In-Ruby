class Car
  attr_accessor :movie_screen
  attr_reader :passenger_count
  attr_writer :passenger_count

   @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    @@all << self
  end

  def self.all
    @@all
  end
  
  def current_movie_screen
    @movie_screen
  end

  def current_movie_screen=(movie_screen)
    @movie_screen = movie_screen
  end

 

end
