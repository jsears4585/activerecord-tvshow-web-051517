class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    rating = Show.maximum(:rating)
    popular = Show.find_by_rating(rating)
    popular
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    rating = Show.minimum(:rating)
    unpopular = Show.find_by_rating(rating)
    unpopular
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("Rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.all.order("name asc")
  end
end
