class Organization < ApplicationRecord
  validates :category, :presence => true
  def self.search(category)
    matches = []
    Organization.all.each do |single_record|
      if single_record.category == category
        matches.push(single_record)
      end
    end
      return matches
  end
end
