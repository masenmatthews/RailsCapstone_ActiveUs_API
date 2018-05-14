organization_list = [
  
  [ "Homelessness", [
    [ "Transition Projects", [
      "Transition Projects delivers life-saving and life-changing assistance to some of Portland’s most vulnerable residents. Whether by helping a homeless veteran and her family find housing, sheltering hundreds of people each night with nowhere else to turn, or opening new pathways to employment, Transition Projects represents an invaluable part of Portland’s social fabric.", "665 NW Hoyt St, Portland, OR 97209", "(503) 280-4700", "https://www.tprojects.org/" ]],
    [ "Portland Homeless Family Solutions", [
      "Giving hope to homeless families with children. Our mission is to empower homeless families with children to get back into housing - and stay there.", "1221 SW Yamhill St #210, Portland, OR 97205", "(503) 915-8306", "http://pdxhfs.org/" ]],
    [ "Portland Rescue Mission", [
      "Food, shelter, clothing, mail service, restrooms, showers and other emergency services are available free of charge at Portland Rescue Mission's Burnside Shelter.", "111 W Burnside St, Portland, OR 97209", "(503) 906-7690", "https://www.portlandrescuemission.org/.../food-shelter-services/" ]]]],

  [ "Animal welfare", [
    [ "Portland Animal Welfare Team", [
      "The Portland Animal Welfare (PAW) Team saves lives, alleviates suffering, and keeps pets and people together by providing free veterinary care to the pets of people who are experiencing homelessness or extreme poverty.", " 1718 NE 82nd Ave, Portland, OR 97220", "(503) 206-6033", "https://www.pawteam.org/" ]],
    [ "Oregon Humane Society", [
      "Oregon Humane Society located in Portland, Oregon is a private, nonprofit animal shelter serving the needs of over 11000 pets each year.", "1067 NE Columbia Blvd, Portland, OR 97211", "(503) 285-7722", "https://www.oregonhumane.org/" ]],
    [ "Animal Aid Inc.", [
      "We are a nonprofit, no-kill animal rescue and welfare organization that has been dedicated to passionately serving animals and the people they love since 1969.", "5335 SW 42nd Ave, Portland, OR 97221", "(503) 292-6628", "https://animalaidpdx.org/" ]]]],

  [ "Music and Art", [
    [ "My Voice Music", [
      "MVM is a nonprofit in Portland, Oregon that engages youth in music and performance to promote self-esteem, social skills, and emotional expression.", "538 SE Ash St, Portland, OR 97214", "(971) 533-8953", "http://myvoicemusic.org/" ]],
    [ "Vibe of Portland", [
      "Vibe's Mission : Empowering Portland's Youth through Art & Music ; Inspiring the next generation of creative leaders. Vibe believes everyone should have access to quality arts education. Through our school and studio programming, creatives have a chance to have processed based instruction, local mentors that are practicing artists and musicians themselves, and learn in a safe, inviting and positive environment.", "5633 SE Division St, Portland, OR 97206", "https://vibepdx.org/" ]],
    [ "Ethos Music Center", [
      "Founded in 1998, Ethos provides group classes, private lessons, summer camps and music outreach programs to over 7,000 youth across Oregon. Ethos has been named one of the top 50 after school arts programs by the President's Commission for the Arts and Humanities on 8 separate occasions.", "2 N Killingsworth St, Portland, OR 97217", "(503) 283-8467", "http://ethos.org/" ]]]],

    ]  # Closes organizations list

organization_list.each do |name, category, description, address, phone, website|
  Organization.create(
    name: name,
    category: category,
    description: description,
    address: address,
    phone: phone,
    website: website)
end
