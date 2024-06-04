# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Child.destroy_all
Couple.destroy_all
FlatPerk.destroy_all
Flat.destroy_all
ProfileResearch.destroy_all
User.destroy_all


users = User.create!([
  { first_name: 'Etienne',
    last_name: 'Martin',
    email: 'martin.etienne@gmail.com',
    password: '123456',
    address: "10 Rue de la République, 69001 Lyon",
    long_description: "I am Etienne, a single father of three children: Thomas (13 years old), Hugo (9 years old),
    and Élise (6 years old). As a university teacher with a structured schedule,
    I am looking for a co-tenant to share a future apartment on a part-time basis.
    I want to find someone responsible and respectful, capable of keeping the apartment clean and tidy.
    After we 'match', we will find an apartment together that suits our needs.",
    avatar_url: "https://images.unsplash.com/photo-1599566150163-29194dcaad36?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    job_title: "University teacher",
    tagline: "I am Etienne, a single father of three children: Thomas (13 years old), Hugo (9 years old),
    and Élise (6 years old).",
    alternance: "odd",
    rythm: "all week",
    min_budget: 400,
    max_budget: 800,
    cleanliness: "3",
    lifestyle: "3",
    sharing: "1",
    cooking: "1",
    storage: "3"
   },

  { first_name: 'Jules',
    last_name: 'Dupuis',
    email: 'dupuis.jules@gmail.com',
    password: '123456',
    address: "15 Avenue Thiers, 06000 Nice",
    long_description: "I am Jules, a young father of 33 years with a 6-year-old daughter, Zoé. As an entrepreneur in the digital sector,
    I often work from home, but I am looking for a co-tenant to share a future apartment on a part-time basis. I want someone who is discreet,
    organized, and respectful of our space. Cleanliness and the ability to maintain a calm environment are important qualities.
    Once we 'match', we will search together for an apartment that meets our shared needs.",
    avatar_url: "https://images.unsplash.com/photo-1527980965255-d3b416303d12?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    job_title: "Digital entreprener",
    tagline: "I am Jules, a young father of 33 years with a 6-year-old daughter, Zoé.",
    alternance: "odd",
    rythm: "week-days",
    min_budget: 500,
    max_budget: 900,
    cleanliness: "3",
    lifestyle: "1",
    sharing: "2",
    cooking: "3",
    storage: "1"
  },

  { first_name: 'Laure',
    last_name: 'Roy',
    email: 'roy.laure@gmail.com',
    password: '123456',
    address: "23 Rue Sainte-Catherine, 33000 Bordeaux",
    long_description: "My name is Laure, a single mother of two children, Lou (4 years old) and Max (2 years old).
    As a nurse with changing schedules, I am looking for a co-tenant to share a future apartment on a part-time basis.
    I am seeking a reliable and respectful person who appreciates a well-maintained environment.
    Once we 'match', we will search together for an apartment that suits our respective needs.",
    avatar_url: "https://plus.unsplash.com/premium_photo-1658527049634-15142565537a?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    job_title: "Nurse",
    tagline: "My name is Laure, a single mother of two children, Lou (4 years old) and Max (2 years old).",
    alternance: "even",
    rythm: "all week",
    min_budget: 500,
    max_budget: 800,
    cleanliness: "3",
    lifestyle: "1",
    sharing: "1",
    cooking: "2",
    storage: "3"
  },

  { first_name: 'Marie',
    last_name: 'Dupont',
    email: 'dupont.marie@gmail.com',
    password: '123456',
    address: "8 Rue des Carmes, 44000 Nantes",
    long_description: "I am Marie, an active mom of 35 years with a passion for cooking and gardening.
    I have a teenage daughter, Clara (14 years old), with whom I share a love for creative activities.
    I am looking for a co-tenant to share a future apartment on a part-time basis.
    Ideally, I would like someone who respects our home and is attentive to maintaining a clean and pleasant environment.
    Once we 'match', we will search together for a place that meets our expectations.",
    avatar_url: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    job_title: "Digital marketing freelancer",
    tagline: "I am Marie, an active mom of 35 years with a passion for cooking and gardening.",
    alternance: "odd",
    rythm: "week-ends",
    min_budget: 300,
    max_budget: 750,
    cleanliness: "3",
    lifestyle: "2",
    sharing: "3",
    cooking: "3",
    storage: "1"
  },

  { first_name: 'Elodie',
    last_name: 'Girard',
    email: 'girardelodie@gmail.com',
    password: '123456',
    address: "35 puy de cornac, 33720 Cérons",
    long_description: "I am Elodie, happy mum of two: Max, who is 3 years old and Dalilah, 11 years old.
    We love going for walks and outdoor activities, but also baking cakes and cooking delicious meals together. We don't need too much space but we are looking for a functional apartment.
    Once we 'match', we will search together for a place that meets our expectations.",
    avatar_url: "https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=1961&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    job_title: "Lawyer",
    tagline: "I am Elodie, a joyful mom of 39 years with 2 kids.",
    alternance: "even",
    rythm: "all week",
    min_budget: 400,
    max_budget: 700,
    cleanliness: "2",
    lifestyle: "2",
    sharing: "1",
    cooking: "3",
    storage: "1"
  },

  { first_name: 'Pierre',
    last_name: 'Jouard',
    email: 'pierrotjouard@gmail.com',
    password: '123456',
    address: "50 rue des courlis, 66000 Perpignan",
    long_description: "Hello I am Pierre, solo dad with 2 boys : Adam, 5 years old and Jules, 7 years old. We are a dynamic family.
    We love to have fun together, play video games and watch sports on TV. We are easy-going and nice folks.
    We are looking for another family to share a flat as I only come to Paris for even weeks.",
    avatar_url: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    job_title: "Fire fighter",
    tagline: "I am Pierre, an easy-going dad of two boys.",
    alternance: "even",
    rythm: "all week",
    min_budget: 400,
    max_budget: 800,
    cleanliness: "1",
    lifestyle: "1",
    sharing: "3",
    cooking: "1",
    storage: "2"
  },

  { first_name: 'Barbara',
    last_name: 'Frelon',
    email: 'bfrelon@gmail.com',
    password: '123456',
    address: "5 place de la république, 69000 Lyon",
    long_description: "Hello I am Barbara, single mum with a 1 year old baby. The father lives in Paris so I am looking for another parent to rent a flat there every other week.
    I don't need much space but I would like to feel at home in this flat and raise my baby there happily.",
    avatar_url: "https://images.unsplash.com/photo-1607746882042-944635dfe10e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    job_title: "Social worker",
    tagline: "I am Barbara, a social worker with good manners.",
    alternance: "odd",
    rythm: "week-days",
    min_budget: 300,
    max_budget: 600,
    cleanliness: "3",
    lifestyle: "1",
    sharing: "1",
    cooking: "2",
    storage: "3"
  }
])

p users

children = Child.create!([
  { first_name: 'Thomas',
    last_name: 'Martin',
    age_range: 'teenager',
    gender: 'male',
    user: users[0]
   },

   { first_name: 'Hugo',
    last_name: 'Martin',
    age_range: 'child',
    gender: 'male',
    user: users[0]
   },

   { first_name: 'Elise',
    last_name: 'Martin',
    age_range: 'child',
    gender: 'female',
    user: users[0]
   },

   { first_name: 'Zoé',
    last_name: 'Dupuis',
    age_range: 'child',
    gender: 'female',
    user: users[1]
   },

   { first_name: 'Lou',
    last_name: 'Roy',
    age_range: 'toddler',
    gender: 'female',
    user: users[2]
   },

   { first_name: 'Max',
    last_name: 'Roy',
    age_range: 'toddler',
    gender: 'male',
    user: users[2]
   },

   { first_name: 'Clara',
    last_name: 'Dupont',
    age_range: 'teenager',
    gender: 'female',
    user: users[3]
   },

   { first_name: 'Dalilah',
    last_name: 'Girard',
    age_range: 'teenager',
    gender: 'female',
    user: users[4]
   },

   { first_name: 'Max',
    last_name: 'Girard',
    age_range: 'toddler',
    gender: 'male',
    user: users[4]
   },

   { first_name: 'Adam',
    last_name: 'Jouard',
    age_range: 'child',
    gender: 'male',
    user: users[5]
   },

   { first_name: 'Jules',
    last_name: 'Jouard',
    age_range: 'child',
    gender: 'male',
    user: users[5]
   },

   { first_name: 'Mael',
    last_name: 'Frelon',
    age_range: 'baby',
    gender: 'male',
    user: users[6]
   }
])

perks = Perk.create!([

    { name: 'large living area',
      status: 'positive' },

    { name: 'cooking utensils',
      status: 'positive'},

    { name: 'plenty of storage',
      status: 'positive'},

    { name: 'well-equipped kitchen',
      status: 'positive'},

    { name: 'washing machine',
      status: 'positive'},

    { name: 'dishwasher',
      status: 'positive'},

    { name: 'television',
      status: 'positive'},

    { name: 'bathtub',
      status: 'positive'},

    { name: 'designer furniture',
      status: 'positive'},

    { name: 'decoration to my taste',
      status: 'positive'},

    { name: 'park nearby',
      status: 'positive'},

    { name: 'no elevator',
      status: 'negative'},

    { name: 'fragile furniture',
      status: 'negative'},

    { name: 'bunk beds',
      status: 'negative'},

    { name: 'small children’s room(s)',
      status: 'negative'},

    { name: 'open kitchen',
      status: 'negative'},

    { name: 'children’s area in the living room',
      status: 'negative'},

    { name: 'bedrooms without shutters',
      status: 'negative'},

    { name: 'toilet in the bathroom',
      status: 'negative'},

    { name: 'photos on the walls',
      status: 'negative'},

    { name: 'peeling paint',
      status: 'negative'},

])

flats = Flat.create!([

  { rooms: '3',
    is_furnished: 'true',
    style: 'industrial'
   },

   { rooms: '3',
    is_furnished: 'neutral',
    style: 'scandinavian'
   },

   { rooms: '2',
    is_furnished: 'false',
    style: 'boheme'
   },

   { rooms: '3',
    is_furnished: 'true',
    style: 'no opinion'
   },

   { rooms: '2',
    is_furnished: 'neutral',
    style: 'vintage'
   },

   { rooms: '2',
    is_furnished: 'true',
    style: 'art deco'
   },

   { rooms: '2',
    is_furnished: 'neutral',
    style: 'no opinion'
   }

])

flats_perks = FlatPerk.create!([

    {flat: flats[0], perk: perks[0]},
    {flat: flats[0], perk: perks[2]},
    {flat: flats[0], perk: perks[6]},
    {flat: flats[0], perk: perks[12]},
    {flat: flats[0], perk: perks[15]},
    {flat: flats[0], perk: perks[18]},
    {flat: flats[1], perk: perks[1]},
    {flat: flats[1], perk: perks[4]},
    {flat: flats[1], perk: perks[8]},
    {flat: flats[1], perk: perks[13]},
    {flat: flats[1], perk: perks[15]},
    {flat: flats[1], perk: perks[18]},
    {flat: flats[2], perk: perks[4]},
    {flat: flats[2], perk: perks[7]},
    {flat: flats[2], perk: perks[8]},
    {flat: flats[2], perk: perks[13]},
    {flat: flats[2], perk: perks[14]},
    {flat: flats[2], perk: perks[16]},
    {flat: flats[3], perk: perks[2]},
    {flat: flats[3], perk: perks[4]},
    {flat: flats[3], perk: perks[5]},
    {flat: flats[3], perk: perks[12]},
    {flat: flats[3], perk: perks[15]},
    {flat: flats[3], perk: perks[17]},
    {flat: flats[4], perk: perks[2]},
    {flat: flats[4], perk: perks[3]},
    {flat: flats[4], perk: perks[7]},
    {flat: flats[4], perk: perks[12]},
    {flat: flats[4], perk: perks[14]},
    {flat: flats[4], perk: perks[15]},
    {flat: flats[5], perk: perks[3]},
    {flat: flats[5], perk: perks[4]},
    {flat: flats[5], perk: perks[9]},
    {flat: flats[5], perk: perks[10]},
    {flat: flats[5], perk: perks[12]},
    {flat: flats[5], perk: perks[17]},
    {flat: flats[6], perk: perks[5]},
    {flat: flats[6], perk: perks[6]},
    {flat: flats[6], perk: perks[9]},
    {flat: flats[6], perk: perks[14]},
    {flat: flats[6], perk: perks[12]},
    {flat: flats[6], perk: perks[15]},
])

profile_researches = ProfileResearch.create!([

  { user: users[0],
    flat: flats[0],
    location: '75012 Paris'
   },

   { user: users[1],
    flat: flats[1],
    location: '75011 Paris'
   },

   { user: users[2],
    flat: flats[2],
    location: '75019 Paris'
   },

   { user: users[4-1],
    flat: flats[3],
    location: '75012 Paris'
   },

   { user: users[5-1],
    flat: flats[4],
    location: '75011 Paris'
   },

   { user: users[6-1],
    flat: flats[5],
    location: '75010 Paris'
   },

   { user: users[6],
    flat: flats[6],
    location: '75019 Paris'
   },

])
