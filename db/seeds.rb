puts 'SEED START'

SubscriptionOption.destroy_all
Subscription.destroy_all
Option.destroy_all
Category.destroy_all
Producer.destroy_all
User.destroy_all

vegetables_producer = Producer.create!(
  first_name: "David",
  last_name: "Mabelletomate",
  description: "Des légumes Bio, en biodynamie depuis 2015",
  address: "126, rue du Pontet 69250 Curis au Mont d'Or",
  photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,h_520,w_390/v1550747756/klvaudhtu5pw5qzneqiv.jpg"
  )

fruits_producer = Producer.create!(
  first_name: "Jules",
  last_name: "Mespommes",
  description: "Fruits de saison: cerises, abricots, pêches, brugnons, poires, pommes, etc.)",
  address: "911, chemin du Petit Fromentin 69380 Chasselay",
  photo_url: "https://www.codeur.com/system/user_profiles/avatars/000/244/192/large/avatar.jpg?1555650329"
  )

cheese_producer = Producer.create!(
  first_name: "Adrien",
  last_name: "Cheezycheese",
  description: "80 chèvres qui produisent toutes sortes de fromages, yaourts et flans",
  address: "963 chemin de Beluze 69760 Limonest"
  )

eggs_producer = Producer.create!(
  first_name: "Adrien",
  last_name: "Cheezycheese",
  description: "Des oeufs BIO, toute l'année",
  address: "963 chemin de Beluze 69760 Limonest"
  )

bread_producer = Producer.create!(
  first_name: "Laurent",
  last_name: "Lesvieuxepis",
  description: "Au sommet de Poleymieux-au-mont-d’or, votre pain BIO",
  address: "Chemin de la Croix Rampau 69250 Poleymieux-au-mont-d’or"
  )

flour_producer = Producer.create!(
  first_name: "Laurent",
  last_name: "Lesvieuxepis",
  description: "Au sommet de Poleymieux-au-mont-d’or, votre farine BIO",
  address: "Chemin de la Croix Rampau 69250 Poleymieux-au-mont-d’or"
  )

chicken_producer = Producer.create!(
  first_name: "Marie",
  last_name: "Lespetitspilons",
  description: "Exploitation de 7 hectares démarrée en 2009, directement en agriculture biologique (certifiée Ecovert)",
  address: "41 Chemin de Chaponnay 69970 Chaponnay"
  )

veal_producer = Producer.create!(
  first_name: "Florentin",
  last_name: "Meatball",
  description: "40 bovins (vaches, génisses et veaux) sur une surface de 40 hectares composés essentiellement de prairies",
  address: "950 chemin du mathias 69760 Limonest"
  )

pork_producer = Producer.create!(
  first_name: "Florentin",
  last_name: "Meatball",
  description: "40 bovins (vaches, génisses et veaux) sur une surface de 40 hectares composés essentiellement de prairies",
  address: "950 chemin du mathias 69760 Limonest"
  )
beef_producer = Producer.create!(
  first_name: "Florentin",
  last_name: "Meatball",
  description: "40 bovins (vaches, génisses et veaux) sur une surface de 40 hectares composés essentiellement de prairies",
  address: "950 chemin du mathias 69760 Limonest"
)

user1 = User.create!(
  first_name: "Lea",
  last_name: "Farmer",
  address: "Les Colverts, Birieux",
  email: "lea@example.com",
  password: "azerty",
  photo_url: "https://file1.grazia.fr/var/grazia/storage/images/media/images/societe/les-fermieres-a-ny/annie-novak-31-ans-fermiere-depuis-dix-ans.-greenpoint/12172924-1-fre-FR/Annie-Novak-31-ans-fermiere-depuis-dix-ans.-Greenpoint_width1024.jpg"
  )

user2 = User.create!(
  first_name: "Maia",
  last_name: "Garden",
  address: "Saint-Cyr-au-Mont-d'Or",
  email: "maia@example.com",
  password: "azerty",
  photo_url: "https://ichef.bbci.co.uk/news/660/cpsprodpb/2BCE/production/_108541211_maria4.jpg"
  )

vegetables_category = Category.create!(name: "légumes BIO", producer: vegetables_producer)
fruits_category = Category.create!(name: "Fruits", producer: fruits_producer)
cheese_category = Category.create!(name: "Fromages BIO", producer: cheese_producer)
eggs_category = Category.create!(name: "Oeufs BIO", producer:  eggs_producer)
bread_category = Category.create!(name: "Pain BIO", producer:  bread_producer)
flour_category = Category.create!(name: "Farine BIO", producer:  flour_producer)
chicken_category = Category.create!(name: "Volaille BIO", producer:  chicken_producer)
veal_category = Category.create!(name: "Veau BIO", producer:  veal_producer)
pork_category = Category.create!(name: "Porc BIO", producer: pork_producer)
beef_category = Category.create!(name: "Boeuf BIO", producer: beef_producer)

Option.create!(
  name:"panier DUO",
  price:"11",
  category: vegetables_category,
  content: "Légumes d'hiver 500g de carottes,  4 poireaux, 1kg de pomme de terre, et 300g d'oignons "
  )
Option.create!(
  name:"panier FAMILLE",
  price:"17",
  category: vegetables_category,
  content: " Légumes d'hiver 1kg de carotte,  10 poireaux, 1,5 kg de pomme de terre, et 500g d'oignons "
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"13",
  category: vegetables_category,
  content: "Légumes d'hiver , 700g de carotte,  8 poireaux, 1 kg de pomme de terre, et 500g d'oignons "
  )
Option.create!(
  name:"panier DUO",
  price:"6",
  category: fruits_category,
  content: "500g d'orange, 500g de pomme, 5 kiwis "
  )
Option.create!(
  name:"panier FAMILLE",
  price:"8",
  category: fruits_category,
  content: "1kg d'orange, 1kg de pomme, 10 kiwis"
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"7",
  category: fruits_category,
  content: "300g d'oranges, 300g de pommes, 4 kiwis"
  )
Option.create!(
  name:"panier DUO",
  price:"4",
  category: cheese_category,
  content: "1 panier fromage (1 mont d'or pour deux, 1 buche de chèvre et 2 crottins) "
  )
Option.create!(
  name:"panier FAMILLE",
  price:"9",
  category: cheese_category,
  content: "2 paniers fromage (2  mont d'or de 500g , 2 buche de chèvre et 6 crottins)"
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"8",
  category: cheese_category,
  content: "1 panier fromage (2  mont d'or de 500g , 2 buche de chèvre et 6 crottins)"
  )
Option.create!(
  name:"panier DUO",
  price:"5",
  category: eggs_category,
  content: "6 oeufs"
  )
Option.create!(
  name:"panier FAMILLE",
  price:"12",
  category: eggs_category,
  content: "24 oeufs"
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"10",
  category: eggs_category,
  content: "12 oeufs"
  )
Option.create!(
  name:"panier DUO",
  price:"3",
  category: bread_category,
  content: "1 Pain Délices (Raisin-amande, Abricot-noisettes, Figues-noix), 2 baguette traditions"
  )
Option.create!(
  name:"panier FAMILLE",
  price:"5",
  category: bread_category,
  content: "1 pain de campagne (Farine semi complète),Pain aux graines (Tournelin ou Multigraines)"

  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"5",
  category: bread_category,
  content: "2 baguette traditions , 1 baguette à la farine de sarrazin "
  )

Option.create!(
  name:"panier DUO",
  price:"3",
  category: flour_category,
  content:"500g de farine des Monts-d’or"
  )
Option.create!(
  name:"panier FAMILLE",
  price:"4",
  category: flour_category,
  content:"1kg de farine des Monts-d’or"
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"5",
  category: flour_category,
  content:"500g de farine des Monts-d’or"
  )
Option.create!(
  name:"panier DUO",
  price:"20",
  category: chicken_category,
  content:"1 Colis de découpe poulet (2 cuisses, 1 paquet de 2 filets)
           Colis de volaille transformée (pouvant se composer selon fabrication de saucisses de volaille, saucisson à cuire, terrine, chair à farcir etc…)
           Pintade"
  )
Option.create!(
  name:"panier FAMILLE",
  price:"35",
  category: chicken_category,
  content:"1 Colis de découpe poulet (2 cuisses, 1 paquet de 2 filets et 1 paquet de 2 ailes. Le tout sous vide.)
           Colis de volaille transformée (pouvant se composer selon fabrication de saucisses de volaille, saucisson à cuire, terrine, chair à farcir etc…)
           Pintade"
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"30",
  category: chicken_category,
  content:"1 Colis de découpe poulet (2 cuisses, 1 paquet de 2 filets et 1 paquet de 2 ailes. Le tout sous vide.)
           Colis de volaille transformée (pouvant se composer selon fabrication de saucisses de volaille, saucisson à cuire, terrine, chair à farcir etc…)
           Pintade"
  )
Option.create!(
  name:"panier DUO",
  price:"25",
  category: veal_category,
  content: " 4 cotelettes de veau, 2 escaloppes "
  )
Option.create!(
  name:"panier FAMILLE",
  price:"40",
  category: veal_category,
  content:"6 cotelettes de veau, 4 escaloppes"
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"35",
  category: veal_category,
  content:"6 cotelettes de veau, 4 escaloppes, 1 colis pour une blanquette (collier, épaule, flanchet, tendon, poitrine)"
  )
Option.create!(
  name:"panier DUO",
  price:"15",
  category: pork_category,
  content:"2 tranches de jambon, 2 échines de porc"
  )
Option.create!(
  name:"panier FAMILLE",
  price:"25",
  category: pork_category,
  content:"6 tranches de jambon,4 échines de porc "
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"20",
  category: pork_category,
  content:"4 tranches de jambon,4 échines de porc, 4 filets mignons "
  )
Option.create!(
  name:"panier DUO",
  price:"25",
  category: beef_category,
  content:"2 côtes de boeufs,2 tournedos "
  )
Option.create!(
  name:"panier FAMILLE",
  price:"40",
  category: beef_category,
  content:"4 côtes de boeufs, 4 tournedos , 2 entrecôtes "
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"30",
  category: beef_category,
  content:"2 côtes de boeufs, 2 tournedos , 2 entrecôtes "

  )

Subscription.create!(
  user_id:User.first.id
  )

Subscription.create!(
  user_id:User.last.id
  )

SubscriptionOption.create!(
  subscription_id:Subscription.first.id,
  option_id:Option.all.last.id,
  ends_at:"31/12/2019"
  )

SubscriptionOption.create!(
  subscription_id:Subscription.first.id,
  option_id:Option.all.sample.id,
  ends_at:"31/12/2019"
  )

SubscriptionOption.create!(
  subscription_id:Subscription.first.id,
  option_id:Option.all.sample.id,
  ends_at:"31/12/2019"
  )

SubscriptionOption.create!(
  subscription_id:Subscription.first.id,
  option_id:Option.all.sample.id,
  ends_at:"31/12/2019"
  )

puts 'SEED OK'
