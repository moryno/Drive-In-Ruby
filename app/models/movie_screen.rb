class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
   @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all << self
  end
  
  def self.all_screens
    @@all
  end

  def cars
    Car.all.select do |car|
      car.movie_screen == self
    end
  end
 
  def number_of_viewers
    num_of_viewers = 0

    cars.map do |car|
      num_of_viewers += car.passenger_count
    end

    num_of_viewers
  end

  def at_capacity?
    if cars.count >= self.capacity 
      return true
    else
      return false
    end
  end

  def available_spots
    result = self.capacity - cars.count
    if result > 0
      return result
    else
      return 0
    end

  end
  
  def add_car(car)
    if !at_capacity?
      car.current_movie_screen = self
      puts "Enjoy!"
    else
      "Sold Out!"
    end
  end


end
