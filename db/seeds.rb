# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Child.destroy_all
# Couple.destroy_all
# FlatPerk.destroy_all
# ProfileResearch.destroy_all
# Flat.destroy_all
# User.destroy_all

ProfileResearch.destroy_all
Child.destroy_all
Couple.destroy_all
FlatPerk.destroy_all
Flat.destroy_all
User.destroy_all
Perk.destroy_all

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
  },

  { first_name: 'Lucas',
    last_name: 'Bernard',
    email: 'bernard.lucas@gmail.com',
    password: '123456',
    address: "12 Rue des Lilas, 34000 Montpellier",
    long_description: "I am Lucas, a single dad with a 10-year-old son, Leo. I work as a graphic designer and enjoy a flexible schedule. I'm looking for a co-tenant who is creative, tidy, and enjoys a peaceful environment. Once we 'match', we'll search for an apartment that suits our needs.",
    avatar_url: "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    job_title: "Graphic Designer",
    tagline: "I am Lucas, a creative single dad.",
    alternance: "odd",
    rythm: "all week",
    min_budget: 450,
    max_budget: 850,
    cleanliness: "3",
    lifestyle: "2",
    sharing: "2",
    cooking: "3",
    storage: "2"
  },

  { first_name: 'Sophie',
    last_name: 'Lefevre',
    email: 'lefevre.sophie@gmail.com',
    password: '123456',
    address: "22 Rue de la Paix, 69002 Lyon",
    long_description: "I am Sophie, a single mother with a 3-year-old daughter, Amélie. I work as a fashion designer and have a busy yet flexible schedule. I'm looking for a co-tenant who values cleanliness and enjoys a harmonious living environment. Together, we can find an apartment that meets both our needs.",
    avatar_url: "https://images.unsplash.com/photo-1506863530036-1efeddceb993?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fHdvbWFuJTIwcHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
    job_title: "Fashion Designer",
    tagline: "I am Sophie, a creative and tidy single mother.",
    alternance: "even",
    rythm: "week-days",
    min_budget: 500,
    max_budget: 900,
    cleanliness: "3",
    lifestyle: "3",
    sharing: "2",
    cooking: "2",
    storage: "2"
  },

  { first_name: 'Antoine',
    last_name: 'Dubois',
    email: 'dubois.antoine@gmail.com',
    password: '123456',
    address: "18 Rue des Roses, 69003 Lyon",
    long_description: "I am Antoine, a single father of a 7-year-old son, Gabriel. As a software engineer, I have a flexible schedule and often work from home. I'm looking for a co-tenant who is organized, respectful, and enjoys a quiet environment. Once we 'match', we'll look for an apartment that fits our lifestyle.",
    avatar_url: "https://images.unsplash.com/photo-1557862921-37829c790f19?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    job_title: "Software Engineer",
    tagline: "I am Antoine, a tech-savvy and organized dad.",
    alternance: "odd",
    rythm: "all week",
    min_budget: 550,
    max_budget: 950,
    cleanliness: "3",
    lifestyle: "1",
    sharing: "3",
    cooking: "1",
    storage: "3"
  },

  { first_name: 'Clara',
    last_name: 'Moreau',
    email: 'moreau.clara@gmail.com',
    password: '123456',
    address: "20 Avenue Jean Médecin, 06000 Nice",
    long_description: "I am Clara, a single mother with a 5-year-old son, Lucas. I work as a photographer and have a variable schedule. I'm looking for a co-tenant who is respectful, clean, and enjoys a calm environment. Together, we will find an apartment that meets our needs.",
    avatar_url: "https://images.unsplash.com/photo-1521252659862-eec69941b071?q=80&w=1872&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    job_title: "Photographer",
    tagline: "I am Clara, a creative and clean single mother.",
    alternance: "even",
    rythm: "week-ends",
    min_budget: 400,
    max_budget: 800,
    cleanliness: "3",
    lifestyle: "2",
    sharing: "1",
    cooking: "2",
    storage: "2"
  },

  { first_name: 'Thomas',
    last_name: 'Petit',
    email: 'petit.thomas@gmail.com',
    password: '123456',
    address: "30 Rue de la Liberté, 21000 Dijon",
    long_description: "I am Thomas, a single father with a 6-year-old daughter, Emma. I work as a journalist and have a flexible work schedule. I'm looking for a co-tenant who values privacy, cleanliness, and a peaceful living environment. Once we 'match', we can find an apartment that suits our needs.",
    avatar_url: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    job_title: "Journalist",
    tagline: "I am Thomas, a privacy-valuing single dad.",
    alternance: "odd",
    rythm: "week-days",
    min_budget: 450,
    max_budget: 850,
    cleanliness: "3",
    lifestyle: "1",
    sharing: "1",
    cooking: "2",
    storage: "3"
  },

  { first_name: 'Julie',
    last_name: 'Durand',
    email: 'durand.julie@gmail.com',
    password: '123456',
    address: "25 Boulevard des Belges, 69006 Lyon",
    long_description: "I am Julie, a single mother with a 2-year-old son, Maxime. I work as a school teacher and have a structured schedule. I'm looking for a co-tenant who is responsible, respectful, and appreciates a clean and orderly environment. Together, we can find an apartment that fits our needs.",
    avatar_url: "https://images.unsplash.com/photo-1550525811-e5869dd03032?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    job_title: "School Teacher",
    tagline: "I am Julie, a responsible and respectful single mom.",
    alternance: "even",
    rythm: "all week",
    min_budget: 400,
    max_budget: 750,
    cleanliness: "3",
    lifestyle: "2",
    sharing: "1",
    cooking: "3",
    storage: "2"
  },

  { first_name: 'Benoit',
    last_name: 'Gauthier',
    email: 'gauthier.benoit@gmail.com',
    password: '123456',
    address: "32 Rue d'Espagne, 64100 Bayonne",
    long_description: "I am Benoit, a single father with a 8-year-old son, Théo. I work as a chef and have irregular work hours. I'm looking for a co-tenant who enjoys a relaxed environment and is respectful of shared spaces. Together, we will find an apartment that meets our needs.",
    avatar_url: "https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8aG9tbWUlMjBwcm9maWxlfGVufDB8fDB8fHww",
    job_title: "Chef",
    tagline: "I am Benoit, a relaxed and respectful single father.",
    alternance: "odd",
    rythm: "week-days",
    min_budget: 450,
    max_budget: 900,
    cleanliness: "2",
    lifestyle: "2",
    sharing: "3",
    cooking: "3",
    storage: "1"
  },

  { first_name: 'Amandine',
    last_name: 'Martin',
    email: 'martin.amandine@gmail.com',
    password: '123456',
    address: "28 Rue Victor Hugo, 76000 Rouen",
    long_description: "I am Amandine, a single mother with a 4-year-old daughter, Chloé. I work as a nurse and have a variable schedule. I'm looking for a co-tenant who values cleanliness, respect, and a calm living environment. Once we 'match', we can find an apartment that suits our needs.",
    avatar_url: "https://images.unsplash.com/photo-1589169011402-8b2cbd1ee593?q=80&w=3021&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    job_title: "Nurse",
    tagline: "I am Amandine, a clean and respectful single mother.",
    alternance: "even",
    rythm: "all week",
    min_budget: 350,
    max_budget: 750,
    cleanliness: "3",
    lifestyle: "2",
    sharing: "1",
    cooking: "2",
    storage: "2"
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
   },

   { first_name: 'Leo',
    last_name: 'Bernard',
    age_range: 'child',
    gender: 'male',
    user: users[7]
   },

   { first_name: 'Amélie',
    last_name: 'Lefevre',
    age_range: 'toddler',
    gender: 'female',
    user: users[8]
   },

   { first_name: 'Gabriel',
    last_name: 'Dubois',
    age_range: 'child',
    gender: 'male',
    user: users[9]
   },

   { first_name: 'Lucas',
    last_name: 'Moreau',
    age_range: 'child',
    gender: 'male',
    user: users[10]
   },

   { first_name: 'Emma',
    last_name: 'Petit',
    age_range: 'child',
    gender: 'female',
    user: users[11]
   },

   { first_name: 'Maxime',
    last_name: 'Durand',
    age_range: 'toddler',
    gender: 'male',
    user: users[12]
   },

   { first_name: 'Théo',
    last_name: 'Gauthier',
    age_range: 'child',
    gender: 'male',
    user: users[13]
   },

   { first_name: 'Chloé',
    last_name: 'Martin',
    age_range: 'toddler',
    gender: 'female',
    user: users[14]
   },

   { first_name: 'Théodore',
   last_name: 'Martin',
   age_range: 'child',
   gender: 'male',
   user: users[14]
  },
])

perks = Perk.create!([
    { name: 'large living area', status: 'positive' },
    { name: 'cooking utensils', status: 'positive'},
    { name: 'plenty of storage', status: 'positive'},
    { name: 'well-equipped kitchen', status: 'positive'},
    { name: 'washing machine', status: 'positive'},
    { name: 'dishwasher', status: 'positive'},
    { name: 'television', status: 'positive'},
    { name: 'bathtub', status: 'positive'},
    { name: 'designer furniture', status: 'positive'},
    { name: 'decoration to my taste', status: 'positive'},
    { name: 'park nearby', status: 'positive'},
    { name: 'no elevator', status: 'negative'},
    { name: 'fragile furniture', status: 'negative'},
    { name: 'bunk beds', status: 'negative'},
    { name: 'small children’s room(s)', status: 'negative'},
    { name: 'open kitchen', status: 'negative'},
    { name: 'children’s area in the living room', status: 'negative'},
    { name: 'bedrooms without shutters', status: 'negative'},
    { name: 'toilet in the bathroom', status: 'negative'},
    { name: 'photos on the walls', status: 'negative'},
    { name: 'peeling paint', status: 'negative'},
    { name: 'balcony', status: 'positive'},
    { name: 'pet-friendly', status: 'positive'},
    { name: 'high-speed internet', status: 'positive'},
    { name: '24/7 security', status: 'positive'},
    { name: 'garden', status: 'positive'},
    { name: 'central heating', status: 'positive'},
    { name: 'air conditioning', status: 'positive'},
    { name: 'garage', status: 'positive'},
    { name: 'fireplace', status: 'positive'},
    { name: 'natural light', status: 'positive'},
    { name: 'modern appliances', status: 'positive'},
    { name: 'built-in closets', status: 'positive'},
    { name: 'gym access', status: 'positive'},
    { name: 'rooftop access', status: 'positive'},
    { name: 'public transportation nearby', status: 'positive'},
    { name: 'close to schools', status: 'positive'},
    { name: 'close to supermarkets', status: 'positive'},
    { name: 'quiet neighborhood', status: 'positive'},
    { name: 'laundry facilities', status: 'positive'},
    { name: 'guest parking', status: 'positive'},
    { name: 'community events', status: 'positive'},
    { name: 'yoga studio', status: 'positive'},
    { name: 'playground', status: 'positive'},
    { name: 'library', status: 'positive'},
    { name: 'barbecue area', status: 'positive'},
    { name: 'game room', status: 'positive'},
    { name: 'pet park', status: 'positive'},
    { name: 'sauna', status: 'positive'},
    { name: 'dog walking service', status: 'positive'},
    { name: 'bike storage', status: 'positive'},
    { name: 'concierge service', status: 'positive'},
    { name: 'on-site maintenance', status: 'positive'},
  ])


  flats = Flat.create!([
    { rooms: '3', is_furnished: 'true', style: 'industrial' },
    { rooms: '3', is_furnished: 'neutral', style: 'scandinavian' },
    { rooms: '2', is_furnished: 'false', style: 'boheme' },
    { rooms: '3', is_furnished: 'true', style: 'no opinion' },
    { rooms: '2', is_furnished: 'neutral', style: 'vintage' },
    { rooms: '2', is_furnished: 'true', style: 'art deco' },
    { rooms: '2', is_furnished: 'neutral', style: 'no opinion' },
    { rooms: '4', is_furnished: 'true', style: 'modern' },
    { rooms: '2', is_furnished: 'true', style: 'minimalist' },
    { rooms: '3', is_furnished: 'false', style: 'rustic' },
    { rooms: '2', is_furnished: 'neutral', style: 'contemporary' },
    { rooms: '3', is_furnished: 'true', style: 'urban' },
    { rooms: '2', is_furnished: 'true', style: 'eclectic' },
    { rooms: '4', is_furnished: 'false', style: 'traditional' },
    { rooms: '1', is_furnished: 'true', style: 'mid-century modern' },
    { rooms: '3', is_furnished: 'neutral', style: 'coastal' },
    { rooms: '2', is_furnished: 'true', style: 'bohemian' }
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
    {flat: flats[7], perk: perks[19]},
    {flat: flats[7], perk: perks[20]},
    {flat: flats[7], perk: perks[21]},
    {flat: flats[7], perk: perks[12]},
    {flat: flats[8], perk: perks[22]},
    {flat: flats[8], perk: perks[23]},
    {flat: flats[8], perk: perks[24]},
    {flat: flats[8], perk: perks[8]},
    {flat: flats[9], perk: perks[25]},
    {flat: flats[9], perk: perks[26]},
    {flat: flats[9], perk: perks[27]},
    {flat: flats[9], perk: perks[6]},
    {flat: flats[9], perk: perks[11]},
    {flat: flats[10], perk: perks[28]},
    {flat: flats[10], perk: perks[29]},
    {flat: flats[10], perk: perks[30]},
    {flat: flats[10], perk: perks[4]},
    {flat: flats[11], perk: perks[31]},
    {flat: flats[11], perk: perks[32]},
    {flat: flats[11], perk: perks[33]},
    {flat: flats[11], perk: perks[2]},
    {flat: flats[12], perk: perks[34]},
    {flat: flats[12], perk: perks[35]},
    {flat: flats[12], perk: perks[36]},
    {flat: flats[12], perk: perks[13]},
    {flat: flats[13], perk: perks[37]},
    {flat: flats[13], perk: perks[38]},
    {flat: flats[13], perk: perks[39]},
    {flat: flats[13], perk: perks[15]},
    {flat: flats[14], perk: perks[40]},
    {flat: flats[14], perk: perks[41]},
    {flat: flats[14], perk: perks[42]},
    {flat: flats[14], perk: perks[43]},
    {flat: flats[15], perk: perks[44]},
    {flat: flats[15], perk: perks[45]},
    {flat: flats[15], perk: perks[46]},
    {flat: flats[15], perk: perks[9]},
    {flat: flats[16], perk: perks[47]},
    {flat: flats[16], perk: perks[48]},
    {flat: flats[16], perk: perks[49]},
    {flat: flats[16], perk: perks[50]},
    {flat: flats[16], perk: perks[1]},
    {flat: flats[16], perk: perks[7]},
])

profile_researches = ProfileResearch.create!([
  { user: users[0], flat: flats[0], location: '75012 Paris' },
  { user: users[1], flat: flats[1], location: '75011 Paris' },
  { user: users[2], flat: flats[2], location: '75019 Paris' },
  { user: users[3], flat: flats[3], location: '75012 Paris' },
  { user: users[4], flat: flats[4], location: '75011 Paris' },
  { user: users[5], flat: flats[5], location: '75010 Paris' },
  { user: users[6], flat: flats[6], location: '75019 Paris' },
  { user: users[7], flat: flats[7], location: '94100 Saint-Maur-des-Fossés' },
  { user: users[8], flat: flats[8], location: '94000 Créteil' },
  { user: users[9], flat: flats[9], location: '94300 Vincennes' },
  { user: users[10], flat: flats[10], location: '94200 Ivry-sur-Seine' },
  { user: users[11], flat: flats[11], location: '94500 Champigny-sur-Marne' },
  { user: users[12], flat: flats[12], location: '94120 Fontenay-sous-Bois' },
  { user: users[13], flat: flats[13], location: '94410 Saint-Maurice' },
  { user: users[14], flat: flats[14], location: '94270 Le Kremlin-Bicêtre' },
])
