class Building < ApplicationRecord
  has_many :offices
  has_many :companies, through: :offices


  def total_rent_for_building
    self.rent_per_floor * self.number_of_floors
  end

  def number_of_floors_available
    # Will not work until relationships and schema are corretly setup

    all_floors = Array(1..self.number_of_floors)
    self.offices.each do |office|
      all_floors.delete(office.floor)
    end
    all_floors.join(' ')
  end

  def empty_offices
    number_of_floors_available.map { |f| offices.build(floor: f) }
  end

  # def offices_in_building 
  #   Office.all.each do |o|
  #       o.building
  #       byebug
  #   end
  # end
end
