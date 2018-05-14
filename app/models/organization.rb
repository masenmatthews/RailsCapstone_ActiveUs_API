class Destination < ApplicationRecord
  validates :category, :presence => true
  def self.search(category)
    matches = []
    Destination.all.each do |single_record|
      if single_record.country == category
        matches.push(single_record)
      end
    end
      return matches
  end
end
