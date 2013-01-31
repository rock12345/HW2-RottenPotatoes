class Movie < ActiveRecord::Base
def self.ratings
Movie.select("rating").group("rating").collect{|result| result.rating}
end
end
