class Seed

def self.begin
  seed = Seed.new
  seed.generate_organizations
end

def generate_organizations
Organization.destroy_all

organization_list = [
  [ mame: "Transition Projects",
    category: "Homelessness",
    description: "Transition Projects delivers life-saving and life-changing assistance to some of Portland’s most vulnerable residents. Whether by helping a homeless veteran and her family find housing, sheltering hundreds of people each night with nowhere else to turn, or opening new pathways to employment, Transition Projects represents an invaluable part of Portland’s social fabric.",
    address: "665 NW Hoyt St, Portland, OR 97209",
    phone: "(503) 280-4700",
    website: "https://www.tprojects.org/"
  ]



]

    organization_list.each do |name, category, description, address, phone, website|
    Organization.create(
      name: name,
      category: category,
      description: description,
      address: address,
      phone: phone,
      website: website )
    end
  end
end

p "Created #{Organization.count} organizations"
Seed.begin
