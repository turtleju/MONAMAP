puts 'SEED START'

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
  photo_url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiytebUjPTlAhXJAmMBHRVYC9sQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.grazia.fr%2Fnews-et-societe%2Fnews%2Ftemoignages-les-fermieres-du-ciel-a-new-york-715052&psig=AOvVaw2KXDGIRvKetwBWDb2iMPE-&ust=1574178063647582"
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
  category: vegetables_category
  )
Option.create!(
  name:"panier FAMILLE",
  price:"17",
  category: vegetables_category
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"13",
  category: vegetables_category
  )
Option.create!(
  name:"panier DUO",
  price:"6",
  category: fruits_category
  )
Option.create!(
  name:"panier FAMILLE",
  price:"8",
  category: fruits_category
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"7",
  category: fruits_category
  )
Option.create!(
  name:"panier DUO",
  price:"4",
  category: cheese_category
  )
Option.create!(
  name:"panier FAMILLE",
  price:"9",
  category: cheese_category
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"8",
  category: cheese_category
  )
Option.create!(
  name:"panier DUO",
  price:"5",
  category: eggs_category
  )
Option.create!(
  name:"panier FAMILLE",
  price:"12",
  category: eggs_category
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"10",
  category: eggs_category
  )
Option.create!(
  name:"panier DUO",
  price:"3",
  category: bread_category
  )
Option.create!(
  name:"panier FAMILLE",
  price:"5",
  category: bread_category
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"5",
  category: bread_category
  )

Option.create!(
  name:"panier DUO",
  price:"3",
  category: flour_category
  )
Option.create!(
  name:"panier FAMILLE",
  price:"4",
  category: flour_category
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"5",
  category: flour_category
  )
Option.create!(
  name:"panier DUO",
  price:"20",
  category: chicken_category
  )
Option.create!(
  name:"panier FAMILLE",
  price:"35",
  category: chicken_category
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"30",
  category: chicken_category
  )
Option.create!(
  name:"panier DUO",
  price:"25",
  category: veal_category
  )
Option.create!(
  name:"panier FAMILLE",
  price:"40",
  category: veal_category
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"35",
  category: veal_category
  )
Option.create!(
  name:"panier DUO",
  price:"15",
  category: pork_category
  )
Option.create!(
  name:"panier FAMILLE",
  price:"25",
  category: pork_category
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"20",
  category: pork_category
  )
Option.create!(
  name:"panier DUO",
  price:"25",
  category: beef_category
  )
Option.create!(
  name:"panier FAMILLE",
  price:"40",
  category: beef_category
  )
Option.create!(
  name:"panier MÉLI-MÉLO",
  price:"30",
  category: beef_category
  )

puts 'SEED OK'
