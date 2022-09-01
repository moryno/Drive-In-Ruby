require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###
# create drivein
drive1 = DriveIn.new("Soho")
drive2 = DriveIn.new("Paris")
drive3 = DriveIn.new("Route 66")
drive4 = DriveIn.new("Connecticut")
drive5 = DriveIn.new("Langata")

# create new moviescren
screen1 = MovieScreen.new("Drive", 40, drive1)
screen2 = MovieScreen.new("Avengers", 60, drive1)
screen3 = MovieScreen.new("Coco", 26, drive1)
screen4 = MovieScreen.new("Ratatoulie", 100, drive2)
screen5 = MovieScreen.new("Devil wear Prada", 60, drive2)
screen6 = MovieScreen.new("Minions", 96, drive2)
screen7 = MovieScreen.new("Pulp Fiction", 100, drive4)
screen8 = MovieScreen.new("A Fistfull of Dollars", 20, drive4)
screen9 = MovieScreen.new("True Grit", 39, drive4)
screen10 = MovieScreen.new("Sweet home Alabama", 100, drive3)
screen11 = MovieScreen.new("The Batman", 70, drive3)
screen12 = MovieScreen.new("Rango", 40, drive3)
screen13 = MovieScreen.new("Children of men", 1, drive5)

# create new car
car1 = Car.new(1)
car2 = Car.new(4)
car3 = Car.new(3)
car4 = Car.new(2)
car5 = Car.new(2)
car6 = Car.new(6)
car7 = Car.new(5)
car8 = Car.new(3)
car9 = Car.new(2)
car10 = Car.new(4)

binding.pry

0
