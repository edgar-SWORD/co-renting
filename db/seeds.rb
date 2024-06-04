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
    avatar_url: "etienne_avatar_ifvs6p",
    job_title: "University teacher",
    tagline: "I am Etienne, a single father of three children: Thomas (13 years old), Hugo (9 years old),
    and Élise (6 years old).",
    alternance: "odd",
    rythm: "all week",
    min_budget: 300,
    max_budget: 800
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
    avatar_url: "jules_avatar_jpslju",
    job_title: "Digital entreprener",
    tagline: "I am Jules, a young father of 33 years with a 6-year-old daughter, Zoé.",
    alternance: "odd",
    rythm: "week-days",
    min_budget: 400,
    max_budget: 600 },

  { first_name: 'Laure',
    last_name: 'Roy',
    email: 'roy.laure@gmail.com',
    password: '123456',
    address: "23 Rue Sainte-Catherine, 33000 Bordeaux",
    long_description: "My name is Laure, a single mother of two children, Lou (4 years old) and Max (2 years old).
    As a nurse with changing schedules, I am looking for a co-tenant to share a future apartment on a part-time basis.
    I am seeking a reliable and respectful person who appreciates a well-maintained environment.
    Once we 'match', we will search together for an apartment that suits our respective needs.",
    avatar_url: "laure_avatar_an8vbv",
    job_title: "Nurse",
    tagline: "My name is Laure, a single mother of two children, Lou (4 years old) and Max (2 years old).",
    alternance: "even",
    rythm: "all week",
    min_budget: 500,
    max_budget: 800 },

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
    avatar_url: "marie_avatar_tesnjs",
    job_title: "Digital marketing freelancer",
    tagline: "I am Marie, an active mom of 35 years with a passion for cooking and gardening.",
    alternance: "odd",
    rythm: "week-ends",
    min_budget: 200,
    max_budget: 500 }
])


children = Child.create!([
  { first_name: 'Thomas',
    last_name: 'Martin',
    age_range: 'teenager',
    gender: 'male',
    user: users[1]
   },

   { first_name: 'Hugo',
    last_name: 'Martin',
    age_range: 'child',
    gender: 'male',
    user: users[1]
   },

   { first_name: 'Elise',
    last_name: 'Martin',
    age_range: 'child',
    gender: 'female',
    user: users[1]
   },

   { first_name: 'Zoé',
    last_name: 'Dupuis',
    age_range: 'child',
    gender: 'female',
    user: users[2]
   },

   { first_name: 'Lou',
    last_name: 'Roy',
    age_range: 'toddler',
    gender: 'female',
    user: users[3]
   },

   { first_name: 'Max',
    last_name: 'Roy',
    age_range: 'toddler',
    gender: 'male',
    user: users[3]
   },

   { first_name: 'Clara',
    last_name: 'Dupont',
    age_range: 'teenager',
    gender: 'female',
    user: users[4]
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
    is_furnished: 'true',
    style: 'scandinavian'
   },

   { rooms: '2',
    is_furnished: 'false',
    style: 'boheme'
   },

   { rooms: '3',
    is_furnished: 'true',
    style: 'no opinion'
   }

])

flats_perks = FlatsPerks.create!([
    {flat_id: flat[1],
    perk_id:  [perk[1],perk[3], perk[6], perk[12], perk[15], perk[18]]},

    {flat_id: flat[2],
    perk_id: [perk[1],perk[3], perk[6], perk[12], perk[15], perk[18]]},

    {flat_id: flat[3],
    perk_id: [perk[4],perk[7], perk[8], perk[13], perk[14], perk[16]]},

    {flat_id: flat[3],
    perk_id: [perk[4],perk[7], perk[8], perk[13], perk[14], perk[16]]}
])
