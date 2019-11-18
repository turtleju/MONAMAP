Producer.destroy_all

vegetables_producer = Producer.create!(
  first_name: "David",
  last_name: "Mabelletomate",
  description: "Des légumes Bio, en biodynamie depuis 2015",
  address: "126, rue du Pontet 69250 Curis au Mont d'Or",
  photo_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fres.cloudinary.com%2Fwagon%2Fimage%2Fupload%2Fc_fill%2Cw_200%2Fv1550747756%2Fklvaudhtu5pw5qzneqiv.jpg&imgrefurl=https%3A%2F%2Fwww.lewagon.com%2Ffr%2Fteam&tbnid=KIUmkBHDj-6ROM&vet=12ahUKEwjFnoqLlPTlAhXH4YUKHQWCCzgQMygIegUIARDaAQ..i&docid=Hh3SDNRb2prD0M&w=200&h=300&q=kevin%20chavanne&ved=2ahUKEwjFnoqLlPTlAhXH4YUKHQWCCzgQMygIegUIARDaAQ"
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
