class Seed

def self.begin
  seed = Seed.new
  seed.generate_organizations
end

def generate_organizations
Organization.destroy_all

organization_list = [
  [ name: "Transition Projects",
    category: "Homelessness",
    description: "Transition Projects delivers life-saving and life-changing assistance to some of Portland’s most vulnerable residents. Whether by helping a homeless veteran and her family find housing, sheltering hundreds of people each night with nowhere else to turn, or opening new pathways to employment, Transition Projects represents an invaluable part of Portland’s social fabric.",
    address: "665 NW Hoyt St, Portland, OR 97209",
    phone: "(503) 280-4700",
    website: "https://www.tprojects.org/"
  ],
  [ name: "Portland Homeless Family Solutions",
    category: "Homelessness",
    description: "Giving hope to homeless families with children. Our mission is to empower homeless families with children to get back into housing - and stay there.",
    address: "1221 SW Yamhill St #210, Portland, OR 97205",
    phone: "(503) 915-8306",
    website: "http://pdxhfs.org/"
  ],
  [ name: "Portland Rescue Mission",
    category: "Homelessness",
    description: "Food, shelter, clothing, mail service, restrooms, showers and other emergency services are available free of charge at Portland Rescue Mission's Burnside Shelter.",
    address: "111 W Burnside St, Portland, OR 97209",
    phone: "(503) 906-7690",
    website: "https://www.portlandrescuemission.org/.../food-shelter-services/"
  ],
  [ name: "Portland Animal Welfare Team",
    category: "Animal welfare",
    description: "The Portland Animal Welfare (PAW) Team saves lives, alleviates suffering, and keeps pets and people together by providing free veterinary care to the pets of people who are experiencing homelessness or extreme poverty.",
    address: "1718 NE 82nd Ave, Portland, OR 97220",
    phone: "(503) 206-6033",
    website: "https://www.pawteam.org/"
  ],
  [ name: "Oregon Humane Society",
    category: "Animal welfare",
    description: "Oregon Humane Society located in Portland, Oregon is a private, nonprofit animal shelter serving the needs of over 11000 pets each year.",
    address: "1067 NE Columbia Blvd, Portland, OR 97211",
    phone: "(503) 285-7722",
    website: "https://www.oregonhumane.org/"
  ],
  [ name: "Animal Aid Inc.",
    category: "Animal welfare",
    description: "We are a nonprofit, no-kill animal rescue and welfare organization that has been dedicated to passionately serving animals and the people they love since 1969.",
    address: "5335 SW 42nd Ave, Portland, OR 97221",
    phone: "(503) 292-6628",
    website: "https://animalaidpdx.org/"
  ],
  [ name: "My Voice Music",
    category: "Music and Art",
    description: "MVM is a nonprofit in Portland, Oregon that engages youth in music and performance to promote self-esteem, social skills, and emotional expression.",
    address: "538 SE Ash St, Portland, OR 97214",
    phone: "(971) 533-8953",
    website: "http://myvoicemusic.org/"
  ],
  [ name: "Vibe of Portland",
    category: "Music and Art",
    description: "Empowering Portland's Youth through Art & Music ; Inspiring the next generation of creative leaders. Vibe believes everyone should have access to quality arts education. Through our school and studio programming, creatives have a chance to have processed based instruction, local mentors that are practicing artists and musicians themselves, and learn in a safe, inviting and positive environment.",
    address: "5633 SE Division St, Portland, OR, 97206",
    phone: "(503) 560-3592",
    website: "https://vibepdx.org/"
  ],
  [ name: "Ethos Music Center",
    category: "Music and Art",
    description: "Founded in 1998, Ethos provides group classes, private lessons, summer camps and music outreach programs to over 7,000 youth across Oregon. Ethos has been named one of the top 50 after school arts programs by the President's Commission for the Arts and Humanities on 8 separate occasions.",
    address: "2 N Killingsworth St, Portland, OR 97217",
    phone: "(503) 283-8467",
    website: "http://ethos.org/"
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
