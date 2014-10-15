class Restaurant
  attr_reader :star_number

  def initialize (nationality, star_number, place)
    @nationality = nationality
    @star_number = star_number
    @place = place
  end

  def is_expansive?
    return star_number
  end

end


mac_donalds = Restaurant.new("american", 0 , "bastille" )
mac_donalds.star_number

ermitage = Restaurant.new("suisse", 3 , "louvre")
romarais = Restaurant.new("francais", 1 , "saint paul")



