class Seed

  def self.begin
    seed = Seed.new
    seed.generate_organizations
  end

  def generate_organizations
    # Destination.destroy_all
    # Review.destroy_all

    20.times do |i|
      Organization.create!(
        category: Faker::Address.country,
      )
      @organization_id = Organization.last.id
    end
  end
end

p "Created #{Organization.count} organizations"
Seed.begin

organization_list = [
  [ "Transition Projects", "Homelessness", "Transition Projects delivers life-saving and life-changing assistance to some of Portland’s most vulnerable residents. Whether by helping a homeless veteran and her family find housing, sheltering hundreds of people each night with nowhere else to turn, or opening new pathways to employment, Transition Projects represents an invaluable part of Portland’s social fabric.", "665 NW Hoyt St, Portland, OR 97209", "(503) 280-4700", "tamara@tprojects.org" ],
  [ "Portland Homeless Family Solutions", "Homelessness", "", "1221 SW Yamhill St #210, Portland, OR 97205", "(503) 915-8306", "http://pdxhfs.org/" ],
  [ "Sycamore", "Platanus" ],
  [ "Alder", "Alnus" ],
  [ "Birch", "Betula"],
  [ "Cherry", "Prunus"]
]

organization_list.each do |name, category, description, address, phone, email|
  Organization.create(
    name: name,
    category: category,
    description: description,
    address: address,
    phone: phone,
    email: email)
end
