# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Order.destroy_all
Step.destroy_all
Document.destroy_all
Review.destroy_all
Market.destroy_all
Image.destroy_all
puts 'Seeding Users'
admin = User.create!({
    full_name: "Admin",
    password: "123",
    email: "admin@watches4cash.com",
    company: "watches4cash",
    street1: "",
    street2: "",
    city: "",
    state: "",
    zip: "",
    phone: "",
    is_admin: true
});
user = User.create!({
    full_name: "Mohamed Muflahi",
    password: "123",
    email: "muflahimohamed88@gmail.com",
    company: "Test",
    street1: "85-95 150st",
    street2: "",
    city: "Jamaica",
    state: "NY",zip: "11435",
    phone: "929-422-6224"
});
puts 'Seeding Documents'
10.times do 
    order = Order.create!({
        brand_name: "Rolex", 
        model_number: "01010020202",
        condition: "New", 
        previous_service: "I got it services at the supermarket",
         previous_polish: "I got it polished at the barber shop", 
         papers: true, 
         included_items: "All original manuals and shit", 
         extra_comment: "Hurry up plz", 
         user_id: user.id});
         step1 = Step.create!({index: 1,title: "Case Approved",desc: "",completed: false,order_id: order.id})
              step2 = Step.create!({index: 2,title: "Label Generated",desc: "",completed: false,order_id: order.id})
              step3 = Step.create!({index: 3,title: "Watch Received",desc: "",completed: false,order_id: order.id})
              step4 = Step.create!({index: 4,title: "Watch Inspected",desc: "",completed: false,order_id: order.id})
              step5 = Step.create!({index: 5,title: "Watch Sold",desc: "",completed: false,order_id: order.id})
end

review = Review.create!(comment: "Great Service", user_id: user.id)
review = Review.create!(comment: "Fast and Amazing Service", user_id: user.id)
review = Review.create!(comment: "Great Service", user_id: user.id)
review = Review.create!(comment: "Terrible Service I expected better", user_id: user.id)
puts 'Done.'

array = [

    {
     item: "ROLEX 116500LN BLACK",
     price: 36000
    },
    {
     item: "ROLEX 116508 DAYTONA GREEN DIAL",
     price: 96500
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 27600
    },
    {
     item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
     price: 41000
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 40000
    },
    {
     item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
     price: 40750
    },
    {
     item: "ROLEX 126710BLNR GMT BATMAN OYSTER",
     price: 20000
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 32000
    },
    {
     item: "ROLEX 128235 RGLD DAY DATE WHITE ROMAN",
     price: 39000
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 40000
    },
    {
     item: "ROLEX 116500LN BLACK",
     price: 36000
    },
    {
     item: "ROLEX SKYDWELLER 326934 BLUE JUBILEE",
     price: 32000
    },
    {
     item: "ROLEX 116508 DAYTONA GREEN DIAL",
     price: 100000
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 40000
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 16000
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 17500
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 35000
    },
    {
     item: "ROLEX 126710 BLRO PEPSI OYSTER",
     price: 26000
    },
    {
     item: "ROLEX SKYDWELLER 326934 BLUE JUBILEE",
     price: 38000
    },
    {
     item: "ROLEX 126710 BLRO PEPSI OYSTER",
     price: 28000
    },
    {
     item: "ROLEX 126710BLNR GMT BATMAN OYSTER",
     price: 22750
    },
    {
     item: "ROLEX 126711CHNR",
     price: 29500
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 24000
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 30000
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 45500
    },
    {
     item: "ROLEX SKYDWELLER 326934 BLACK JUBILEE",
     price: 29300
    },
    {
     item: "ROLEX 228235 WHITE ROMAN",
     price: 57000
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 51000
    },
    {
     item: "ROLEX SKYDWELLER 326934 BLACK JUBILEE",
     price: 28000
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 30000
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 24000
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 24000
    },
    {
     item: "ROLEX 228235 WHITE ROMAN",
     price: 57280
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 21600
    },
    {
     item: "ROLEX 228235 WHITE ROMAN",
     price: 55500
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 22000
    },
    {
     item: "ROLEX 128235 RGLD DAY DATE WHITE ROMAN",
     price: 36950
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 20350
    },
    {
     item: "ROLEX 116500LN BLACK",
     price: 31000
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 38500
    },
    {
     item: "ROLEX 126710 BLRO PEPSI OYSTER",
     price: 22500
    },
    {
     item: "ROLEX SKYDWELLER 326934 BLUE JUBILEE",
     price: 32000
    },
    {
     item: "ROLEX 126710 BLRO PEPSI OYSTER",
     price: 22200
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 14300
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 18850
    },
    {
     item: "ROLEX 126710BLNR GMT BATMAN OYSTER",
     price: 18200
    },
    {
     item: "ROLEX 126711CHNR",
     price: 22900
    },
    {
     item: "ROLEX 126711CHNR",
     price: 22000
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 24500
    },
    {
     item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
     price: 43250
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 18400
    },
    {
     item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
     price: 43000
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 18450
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 18300
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 15200
    },
    {
     item: "ROLEX SKYDWELLER 326934 BLACK JUBILEE",
     price: 26000
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 18200
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 17000
    },
    {
     item: "ROLEX 116508 DAYTONA GREEN DIAL",
     price: 76000
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 27000
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 22500
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 22500
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 22300
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 22000
    },
    {
     item: "IWC IW503404 PORTUGIESER  RGLD",
     price: 27280
    },
    {
     item: "GRAND SEIKO SBGW277",
     price: 5050
    },
    {
     item: "GRAND SEIKO SLGA009 WHITE BIRCH",
     price: 7000
    },
    {
     item: "OMEGA HERITAGE CK 859",
     price: 4850
    },
    {
     item: "PATEK 5320G",
     price: 64000
    },
    {
     item: "PATEK 5712\/1A",
     price: 155000
    },
    {
     item: "VACHERON CONSTANTIN OVERSEAS DUAL TIME",
     price: 36000
    },
    {
     item: "VACHERON CONSTANTIN OVERSEA QUARTZ BLACK",
     price: 13500
    },
    {
     item: "VACHERON CONSTANTIN OVERSEA QUARTZ BLUE",
     price: 13500
    },
    {
     item: "3 CT PEAR DIAMOND 6412471600 GIA",
     price: 22000
    },
    {
     item: "ROLEX 228238 DAY DATE CHAMGPAGNE STICK",
     price: 41000
    },
    {
     item: "GRAND SEIKO SBGJ251G GREEN",
     price: 5350
    },
    {
     item: "ROLEX 126334 DATEJUST BLU DAIMOND DIAL",
     price: 14700
    },
    {
     item: "ROLEX BOX",
     price: 225
    },
    {
     item: "ROLEX 126334 BLUE INDEX JUBILEE",
     price: 12250
    },
    {
     item: "ROLEX BOX",
     price: 250
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 14500
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6500
    },
    {
     item: "PATEK 5980\/1R",
     price: 290000
    },
    {
     item: "ROLEX 126333 CHAMPAGNE JUBILEE",
     price: 14000
    },
    {
     item: "ROLEX  126660 BLUE JAMES CAMERON",
     price: 16700
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 15750
    },
    {
     item: "ROLEX 228396TBR PLAT ICE BLU DIAMOND DIA",
     price: 140000
    },
    {
     item: "ROLEX 226659",
     price: 35000
    },
    
    {
     item: "ROLEX 278274 SALMON DIAMOND OYSTER",
     price: 8958
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 1
    },
    {
     item: "TUDOR BLACK BAY 58 M79030B SMURF",
     price: 1
    },
    {
     item: "ROLEX 228349 BLACK DIAMOND DIAL",
     price: 59350
    },
    {
     item: "ROLEX 126334 BLUE ROMAN OYSTER",
     price: 12300
    },
    {
     item: "ROLEX 126300  BLUE INDEX OYSTER 2",
     price: 10000
    },
    {
     item: "PATEK PHILIPPE CALATRAVA 6119R",
     price: 30000
    },
    {
     item: "PATEK 5726\/1A-014",
     price: 190000
    },
    {
     item: "GRAND SEIKO SLGA009 WHITE BIRCH",
     price: 8700
    },
    {
     item: "TUDOR ROYAL M28600 BLUE DIAL",
     price: 1900
    },
    {
     item: "OMEGA SPEEDMASTER MOON WHITE DIAL",
     price: 34000
    },
    {
     item: "IWC SPITFIRE IW387902 BRONZE GREEN DIAL",
     price: 5605
    },
    {
     item: "PATEK PHILIPPE 5205R WHITE",
     price: 60000
    },
    {
     item: "DOXA SUB ORANGE",
     price: 1700
    },
    {
     item: "GRAND SEIKO SBGA413 PINK",
     price: 5000
    },
    {
     item: "PANERAI PAM01164",
     price: 23000
    },
    {
     item: "ROLEX 279174 DJUST 28MM MOP DIAMOND DIAL",
     price: 10650
    },
    {
     item: "TUDOR BLACK BAY 58 79012 BRONZE",
     price: 5002.5
    },
    {
     item: "GIA OVAL BRILLIANT 10 43 H VS1",
     price: 354000
    },
    {
     item: "CARTIER CRWGTA0046 AMERICANA ROSE GOLD",
     price: 1
    },
    {
     item: "GRAND SEIKO SBGA413 PINK",
     price: 1
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6300
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 6300
    },
    {
     item: "GRAND SEIKO SLGH005 WHITE BIRCH SHIRAKAB",
     price: 7500
    },
    {
     item: "CARTIER SANTOS ROSE GOLD SKELETON 0016",
     price: 48000
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 57000
    },
    {
     item: "ROLEX DAYTONA 116518 PAUL NEWMAN",
     price: 54500
    },
    {
     item: "ROLEX 278273 GREEN ROMN JUBILEE",
     price: 16000
    },
    {
     item: "IWC IW389109 BLUE ANGELS CHRONO",
     price: 8000
    },
    {
     item: "GRAND SEIKO SBGA211 SNOWFLAKE",
     price: 4700
    },
    {
     item: "PATEK 5522A PILOT WATCH NY EDITION",
     price: 59500
    },
    {
     item: "ROLEX DATEJUST 31MM 278384 SILVER DIAMON",
     price: 16800
    },
    {
     item: "ROLEX 126334 BLACK OYSTER",
     price: 11500
    },
    {
     item: "DOXA SUB ORANGE",
     price: 1
    },
    {
     item: "CARTIER W6701011 RONDE SOLO 42MM XL",
     price: 1
    },
    {
     item: "ROMAIN JEROME SPACE INVADER WATCH",
     price: 1
    },
    {
     item: "TUDOR 79360N BLACK DIAL 41MM",
     price: 5000
    },
    {
     item: "ROLEX 126233 DJUST 36MM MOP DIAL JUB",
     price: 18200
    },
    {
     item: "RICHARD MILLE RM07-01",
     price: 278000
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 7800
    },
    {
     item: "BREGUET 5727BB\/12\/9ZU HORA MUNDI WATCH",
     price: 30000
    },
    {
     item: "GRAND SEIKO SBGA413 PINK",
     price: 5500
    },
    {
     item: "ROLEX 126231 WIMBLEDON JUBILEE",
     price: 12500
    },
    {
     item: "PATEK 5980\/1R",
     price: 285000
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 17000
    },
    
    {
     item: "OMEGA SEAMASTER AQUA TERRA BEIJING 2022",
     price: 4000
    },
    {
     item: "OMEGA SEAMASTER AQUA TERRA GREEN STEEL",
     price: 4300
    },
    {
     item: "ROLEX 126281RBR 36MM MOP DIAM BEZ",
     price: 25000
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLK DIAL",
     price: 20000
    },
    {
     item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
     price: 18500
    },
    {
     item: "PATEK PHILIPPE 5990R BLUE DIAL",
     price: 450000
    },
    {
     item: "RICHARD MILLE RM028 ROSE GOLD",
     price: 102000
    },
    {
     item: "ROLEX 126334 BLUE INDEX OYSTER",
     price: 13500
    },
    {
     item: "ROLEX DAYDATE 128349 WHITE MOP DIAMOND",
     price: 49000
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 1
    },
    {
     item: "ROLEX 278383 31MM GREEN ROMAN DIAM BEZ",
     price: 19600
    },
    {
     item: "PATEK 4948R",
     price: 69000
    },
    {
     item: "PATEK 5164R",
     price: 168000
    },
    {
     item: "ROLEX 126331 CHOC DIAL OYSTER",
     price: 15435
    },
    {
     item: "ROLEX DAYTONA 116518 PAUL NEWMAN",
     price: 55500
    },
    {
     item: "GIA OVAL BRILLIANT DIAMOND 10 02 H VS2",
     price: 300000
    },
    {
     item: "CARTIER SANTOS WHSA0007 SKELETON",
     price: 22500
    },
    {
     item: "GRAND SEIKO SBGE253G GMT SPRING DRIVE",
     price: 3500
    },
    {
     item: "IWC CHRONO SPITFIRE IW387901",
     price: 3500
    },
    {
     item: "ROLEX 279171 PURPLE DIAMOND OYSTER",
     price: 11600
    },
    {
     item: "PATEK PHILIPPE 5205R WHITE",
     price: 64250
    },
    {
     item: "ROLEX WARRANTY BOOKLET AND WALLET",
     price: 20
    },
    {
     item: "ROLEX BOX",
     price: 200
    },
    {
     item: "VACHERON CONSTATIN 3110V\/000A-B246",
     price: 16500
    },
    {
     item: "ROLEX 126233 DJUST 36MM CHAMP PALM DIAL",
     price: 13250
    },
    {
     item: "ROLEX 226570 EXPLORER II BLK DIAL",
     price: 12000
    },
    {
     item: "CARTIER SANTOS ROSE GOLD WGSA0008",
     price: 27000
    },
    {
     item: "ROLEX 126600 SEA DWELLER RED LETTERS",
     price: 15500
    },
    {
     item: "PATEK PHILLIPE 4948G MOP DIAL",
     price: 69000
    },
    {
     item: "GRAND SEIKO SLGA009 WHITE BIRCH",
     price: 7000
    },
    {
     item: "GIA DIAMOND PENDANT NECKLACE HAMILTON",
     price: 20520
    },
    {
     item: "GIA ROUND DIAMOND PENDANT JAMES  SONS",
     price: 9500
    },
    {
     item: "GIA DIAMOND PENDANT CLARKSON 7381433464",
     price: 15000
    },
    {
     item: "ROLEX 178240 WHITE STICK OYSTER",
     price: 5800
    },
    {
     item: "ROLEX 124300 OYSTER PERPETUAL GREEN DIAL",
     price: 14250
    },
    {
     item: "ROLEX 128238 DAYDATE GREEN DIAMOND DIAL",
     price: 55000
    },
    {
     item: "PATEK PHILIPPE 4947R ANNUAL CALENDAR",
     price: 51000
    },
    {
     item: "ROLEX 128238 WHITE ROMAN DIAL",
     price: 34000
    },
    {
     item: "OMEGA SPEEDMASTER O31030425001002",
     price: 1
    },
    {
     item: "GRAND SEIKO SBGA211 SNOWFLAKE",
     price: 1
    },
    {
     item: "GRAND SEIKO FOUR SEASONS SBGH271 GREEN",
     price: 1
    },
    {
     item: "GRAND SEIKO SBGA413 PINK",
     price: 1
    },
    {
     item: "GRAND SEIKO SBGE253G GMT SPRING DRIVE",
     price: 1
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 6500
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 15250
    },
    {
     item: "ROLEX DAYDATE 228235 CHOCOLATE BAGUETTE",
     price: 65000
    },
    {
     item: "ROLEX 116613LN",
     price: 14000
    },
    {
     item: "ROLEX DATEJUS 278273 WHITE ROMAN JUBILEE",
     price: 12500
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLK DIAL",
     price: 19700
    },
    {
     item: "ROLEX 126715CHNR",
     price: 62300
    },
    {
     item: "ROLEX 126300  BLACK INDEX OYSTER",
     price: 9500
    },
    {
     item: "ROLEX 126303 WIMBELDON SMOOTH BEZ OYSTER",
     price: 13000
    },
    {
     item: "ROLEX 116688",
     price: 53000
    },
    {
     item: "ROLEX DAYDATE 128235 ROMAN EISENKIESEL",
     price: 54000
    },
    {
     item: "GRAND SEIKO SBGA211 SNOWFLAKE",
     price: 4900
    },
    {
     item: "LONGINES MASTER COLLECTION BLUE DIAL",
     price: 2100
    },
    {
     item: "ROLEX  126660 BLUE JAMES CAMERON",
     price: 17600
    },
    {
     item: "ROLEX 228235 EISENKIESEL BAGUETTE",
     price: 105000
    },
    {
     item: "TAG HEUER AQUARACER BLUE DIAL",
     price: 1450
    },
    {
     item: "ROLEX 228235 SUNDUST ROMAN",
     price: 66000
    },
    {
     item: "ROLEX 228235 GREEN ROMAN",
     price: 90500
    },
    {
     item: "GRAND SEIKO SLGA009 WHITE BIRCH",
     price: 7500
    },
    {
     item: "GRAND SEIKO GMT SPRING DRIVE SBGE205",
     price: 4600
    },
    {
     item: "PATEK 5270P PLATINUM SALMON DIAL",
     price: 230000
    },
    {
     item: "OMEGA SEAMASTER BEIJING BLUE DIAL",
     price: 5200
    },
    {
     item: "ROLEX 126331  WIMBLEDON JUBILEE",
     price: 17000
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 15500
    },
    {
     item: "DIAMOND PENDANT NECKLACE BETTERIDGE",
     price: 18500
    },
    {
     item: "GIRARD PERREGAUX LAUREATO BLACK 38MM",
     price: 16650
    },
    {
     item: "TUDOR BLACK BAY 58 79030B BLUE BRACELET",
     price: 2900
    },
    {
     item: "TUDOR BLACK BAY 58 SILVER 925",
     price: 3600
    },
    {
     item: "TUDOR BLACK BAY M79230B",
     price: 2700
    },
    {
     item: "TUDOR BLACK BAY CERAMIC M79210CNU",
     price: 4200
    },
    {
     item: "PATEK PHILIPPE 4947\/1A ANNUAL CALENDAR",
     price: 47000
    },
    {
     item: "ROLEX 226570 EXPLORER II WHT DIAL",
     price: 14350
    },
    {
     item: "ROLEX DAYDATE 128349 PINK OPAL DIAMOND",
     price: 53000
    },
    {
     item: "ROLEX 126233 DATEJUST WHITE ROMAN",
     price: 13000
    },
    {
     item: "RAHAMINOV GIA DIAMOND NECKLACE 30CT",
     price: 42000
    },
    {
     item: "CARTIER W6701011 RONDE SOLO 42MM XL",
     price: 3500
    },
    {
     item: "ROLEX 228348 SILVER MOTIF DIAMOND BEZEL",
     price: 53000
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 6750
    },
    {
     item: "PATEK PHILIPPE CALATRAVA 6119R",
     price: 36500
    },
    {
     item: "GIA ROUND DIAMOND PENDANT RF MOELLER",
     price: 9500
    },
    {
     item: "AUDEMARS PIGUET 15451ST ROYAL OAK DIAMON",
     price: 37500
    },
    {
     item: "ROLEX 80285 PEARLMASTER 28MM RGLD",
     price: 48000
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3100
    },
    {
     item: "ROLEX 228396TBR PLAT ICE BLU DIAMOND DIA",
     price: 175000
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 6750
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6750
    },
    {
     item: "ROLEX SUBMARINER 126618 BLACK DIAL",
     price: 49500
    },
    {
     item: "ROLEX 116689 WGOLD YMASTER 2",
     price: 49000
    },
    {
     item: "ROLEX 228396TBR PLAT ICE BLU DIAMOND DIA",
     price: 175000
    },
    {
     item: "ROLEX 178384 DJUST 31MM DIAM BEZ MOP DIA",
     price: 17000
    },
    {
     item: "OMEGA SNOOPY 50TH ANNIVERSARY",
     price: 28000
    },
    {
     item: "PATEK 5712\/1A",
     price: 210000
    },
    {
     item: "PATEK 5740\/1G BLUE DIAL",
     price: 420000
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLK DIAL",
     price: 20000
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 38500
    },
    {
     item: "ROLEX 326934 SKY DWELLER WHT DIAL JUB",
     price: 30000
    },
    {
     item: "ROLEX DATEJUST 126281 JUBILEE BLACK DIAM",
     price: 21500
    },
    {
     item: "ROLEX 126300 RHODIUM OYSTER",
     price: 10500
    },
    {
     item: "ROLEX 268655 YMASTER 37MM PAVE DIAL RGLD",
     price: 42000
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 17000
    },
    {
     item: "ROLEX YACHTMASTER 126655 PAVE DIAMOND",
     price: 52500
    },
    {
     item: "GIA ROUND DIAMOND PENDANT CLARKSON JEWEL",
     price: 11000
    },
    {
     item: "ROLEX 116688",
     price: 53250
    },
    {
     item: "ROLEX 116505 BLACK DIAL",
     price: 62000
    },
    {
     item: "TUDOR PELAGOS BLUE 25707B NATO STRAP",
     price: 1
    },
    {
     item: "GIA ROUND DIAMOND PENDANT GRUNOZ JEWELER",
     price: 10000
    },
    {
     item: "GIA DIAMOND PENDANT NECKLACE MARTIN BIND",
     price: 10000
    },
    {
     item: "GIA DIAMOND PENDANT NECKLACE SHREVE",
     price: 10000
    },
    {
     item: "ROLEX 126331 CHOC INDEX JUBILEE",
     price: 17350
    },
    {
     item: "ROLEX 116505 CHOC DIAL",
     price: 85000
    },
    {
     item: "ROLEX 228206 DAY DATE PLATINIUM BLU ROM",
     price: 93000
    },
    {
     item: "PATEK PHILIPPE 5236P PERPETUAL CALENDAR",
     price: 148000
    },
    {
     item: "OMEGA SPEEDMASTER APOLLO 8 LEATHER",
     price: 8775
    },
    {
     item: "ROLEX DATEJUST 126281 JUBILEE BLACK DIAM",
     price: 21000
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 8500
    },
    {
     item: "GRAND SEIKO SBGA413 PINK",
     price: 5300
    },
    {
     item: "GRAND SEIKO SBGA387 BLUE",
     price: 9000
    },
    {
     item: "TUDOR 79360N OPALINE DIAL 41MM",
     price: 5644.5
    },
    {
     item: "CASIO G SHOCK GBD200-9 GREEN",
     price: 150
    },
    {
     item: "PANERAI PAM01068 SUBMERSIBLE BLUE",
     price: 8500
    },
    {
     item: "TUDOR BLACK BAY 58 SILVER 925",
     price: 3500
    },
    {
     item: "CARTIER CRWGTA0046 AMERICANA ROSE GOLD",
     price: 9500
    },
    {
     item: "BREITLING AB0155 CHOC DIAL",
     price: 3500
    },
    {
     item: "GRAND SEIKO FOUR SEASONS SBGH271 GREEN",
     price: 4400
    },
    {
     item: "PATEK 6119G CALATRAVA",
     price: 34150
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3200
    },
    {
     item: "ROLEX 126334 BLUE ROMAN OYSTER",
     price: 13750
    },
    {
     item: "VACHERON 4000E\/000R-B438 FIFTYSIX RG",
     price: 27750
    },
    {
     item: "GIA ROUND BRILLIANT DIAMOND 3 07 G SI1",
     price: 71800
    },
    {
     item: "GIA ROUND BRILLIANT DIAMOND 3 74 F VS2",
     price: 35200
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3600
    },
    {
     item: "VACHERON CONSTANTIN FIFTYSIX X40R2755",
     price: 27750
    },
    {
     item: "ROLEX 128235 RGLD DAY DATE CHOCO DIAMOND",
     price: 41700
    },
    {
     item: "GIRARD PERREGAUX LAUREATO ABSOLUTE BLACK",
     price: 14320
    },
    {
     item: "PANERAI PAM01090 BLK DIAL",
     price: 4500
    },
    {
     item: "ROLEX 126234 PINK JUBILEE DD JUB",
     price: 13000
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 57800
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 62000
    },
    {
     item: "ROLEX OYSTER PERPETUAL 277200 TIFFANY 31",
     price: 13000
    },
    {
     item: "ROLEX 126333 CHAMP DIAMOND JUBILEE",
     price: 17000
    },
    {
     item: "ROLEX 279171 CHOCO DIAM JUBILEE",
     price: 12250
    },
    {
     item: "TUDOR BLACK BAY 58 79012 BRONZE",
     price: 5002.5
    },
    {
     item: "ROLEX 126622 BLUE DIAL",
     price: 19500
    },
    {
     item: "PATEK 7300\/1200R TWENTY 4",
     price: 35800
    },
    {
     item: "ROLEX DAYDATE 228349 SILVER DIAMOND DIAL",
     price: 61700
    },
    {
     item: "ROLEX CELLINI DATE 50515 BLACK DIAL",
     price: 16350
    },
    {
     item: "ROLEX 126622 BLUE DIAL",
     price: 17500
    },
    {
     item: "JAEGER LECOULTRE REVERSO 3978430 GREEN",
     price: 7860
    },
    {
     item: "CARTIER WGSA0018 SANTOS ROSE GOLD",
     price: 27000
    },
    {
     item: "IWC IW389109 BLUE ANGELS CHRONO",
     price: 8700
    },
    {
     item: "GRAND SEIKO SBGA211 SNOWFLAKE",
     price: 4550
    },
    {
     item: "PATEK 5320G",
     price: 69000
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3300
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 8400
    },
    {
     item: "ROLEX 228239 DAY DATE GRAY DIAL",
     price: 45100
    },
    {
     item: "TUDOR BLACK BAY 58 YELLOW GOLD M79018V",
     price: 13000
    },
    {
     item: "TUDOR BLACK BAY 58 M79030B SMURF",
     price: 3300
    },
    {
     item: "VACHERON CONSTANTIN X40A2656 BLUE DIAL",
     price: 19500
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 8400
    },
    {
     item: "BREITLING AB0155 CHOC DIAL",
     price: 1
    },
    {
     item: "GRAND SEIKO FOUR SEASONS SBGH271 GREEN",
     price: 1
    },
    {
     item: "GRAND SEIKO SBGH273 BLUE",
     price: 1
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 8500
    },
    {
     item: "ROLEX 326933 WHT DIAL JUB",
     price: 23350
    },
    {
     item: "ROLEX DATEJUST 279381 CHOCOLATE DIAMOND",
     price: 15075
    },
    {
     item: "ROLEX SKYDWELLER 326235 WHITE DIAL",
     price: 45000
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3500
    },
    {
     item: "BREITLING TOP TIME FORD MUSTANG GREEN",
     price: 5500
    },
    {
     item: "VAN CLEEF AND ARPELS SOCRATES NECKLACE",
     price: 8000
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 8575
    },
    {
     item: "JAEGAR LECOULTRE REVERSO DUO 3988482 BLU",
     price: 9500
    },
    {
     item: "IWC CHRONO SPITFIRE IW387901",
     price: 4250
    },
    {
     item: "ROLEX 268621 37MM BLK DIAL TWO TONE",
     price: 15000
    },
    {
     item: "ROLEX 228396 PLATINUM METEORITE DIAL",
     price: 169500
    },
    {
     item: "ROLEX 50529 CELLINI WGLD BLK DIAL",
     price: 15000
    },
    {
     item: "GIRARD PERREGAUX LAUREATO GREEN 81020 GP",
     price: 20000
    },
    {
     item: "GIA ROUND BRILLIANT DIAMOND 3 74 F VS2",
     price: 70000
    },
    {
     item: "CARTIER TANK MUST BLUE",
     price: 2850
    },
    {
     item: "TUDOR BLACK BAY 58 YELLOW GOLD M79018V",
     price: 13699
    },
    {
     item: "ROLEX 116618LB SUBMARINER",
     price: 44000
    },
    {
     item: "OMEGA SPEEDMASTER APOLLO 8 LEATHER",
     price: 1
    },
    {
     item: "TUDOR ROYAL M28600 BLUE DIAL",
     price: 1850
    },
    {
     item: "ROLEX 1236231 DJUST 36MM ROMAN RHODIUM",
     price: 17600
    },
    {
     item: "ROLEX 1236231 DJUST 36MM ROMAN RHODIUM",
     price: 15000
    },
    {
     item: "IWC IW388104 PILOT GREEN DIAL",
     price: 6000
    },
    {
     item: "ROLEX 126334  BLUE ROMAN JUB",
     price: 12400
    },
    {
     item: "ROLEX 126334 BLUE INDEX OYSTER",
     price: 12400
    },
    {
     item: "ROLEX 228238  WHITE ROMAN",
     price: 42500
    },
    {
     item: "ROLEX DAY-DATE 228345 PINK DIAMOND DIAL",
     price: 61000
    },
    {
     item: "ROLEX DAYTONA 116503 CHAMPAGNE INDEX DIA",
     price: 23450
    },
    {
     item: "ROLEX 126334 WHITE INDEX JUB",
     price: 12150
    },
    {
     item: "IWC IW356517 WHITE DIAL",
     price: 3100
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 6900
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3350
    },
    {
     item: "ROLEX DAYTONA 116515 BLACK DIAL PINK SUB",
     price: 51000
    },
    {
     item: "ROLEX SKYDWELLER 326935 CHOCOLATE INDEX",
     price: 68250
    },
    {
     item: "PATEK PHILIPPE 4947G WHITE DIAL",
     price: 48500
    },
    {
     item: "PATEK PHILIPPE 5147G BLUE",
     price: 58000
    },
    {
     item: "ROLEX 126233 CHAMP FLUTED JUB",
     price: 13000
    },
    {
     item: "ROLEX OYSTER PERPETUAL 276200 PINK 28MM",
     price: 5400
    },
    {
     item: "PATEK 5320G",
     price: 65000
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 52800
    },
    {
     item: "IWC IW388104 PILOT GREEN DIAL",
     price: 6000
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 6900
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6900
    },
    {
     item: "PATEK 7010\/1R CHAMP",
     price: 72000
    },
    {
     item: "CARTIER TANK MUST RED",
     price: 2975
    },

    {
     item: "FREIDA ROTHMAN NECKLACE",
     price: 814
    },
   
    {
     item: "PATEK 5167R",
     price: 98000
    },
    {
     item: "CARTIER SANTOS WHSA0007 SKELETON",
     price: 23667
    },
    {
     item: "CARTIER WB520002 BAIGNOIRE ROSE GOLD",
     price: 30000
    },
    {
     item: "ROLEX 126334 BLUE DIAMOND OYSTER",
     price: 13650
    },
    {
     item: "CARTIER TANK MUST GREEN",
     price: 2900
    },
    {
     item: "CARTIER TANK MUST RED",
     price: 2900
    },
    {
     item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
     price: 151000
    },
    {
     item: "IWC IW388104 PILOT GREEN DIAL",
     price: 6250
    },
    {
     item: "ROLEX 126231 WIMBLEDON JUBILEE",
     price: 12950
    },
    {
     item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
     price: 16450
    },
    {
     item: "ROLEX DATEJUST 278271 OYSTER PINK ROMAN",
     price: 11500
    },
    {
     item: "PATEK 5270P PLATINUM SALMON DIAL",
     price: 174500
    },
    {
     item: "TUDOR BLACK BAY 58 SILVER 925",
     price: 3700
    },
    {
     item: "ROLEX SUBMARINER 126618 BLUE",
     price: 42550
    },
    {
     item: "ROLEX 126334 BLUE INDEX JUBILEE",
     price: 13000
    },
    {
     item: "ROLEX 1236231 DJUST 36MM ROMAN RHODIUM",
     price: 16500
    },
    {
     item: "ROLEX 178273 DJUST 31MM WHITE ROMAN DIAL",
     price: 9700
    },
    {
     item: "VAN CLEEF ARPELS ALHAMBRA ONYX NECKLACE",
     price: 5900
    },
    {
     item: "IWC SPITFIRE IW387902 BRONZE GREEN DIAL",
     price: 5600
    },
    {
     item: "ROLEX 228345 EISENKIESEL DIAMOND DIAL",
     price: 79200
    },
    {
     item: "ROLEX CELLINI DUAL 50525 BLACK DIAL",
     price: 14950
    },
    {
     item: "ROLEX DAY-DATE 228345 PINK DIAMOND DIAL",
     price: 61000
    },
    {
     item: "ROLEX SKYDWELLER 326235 SLATE DIAL",
     price: 45200
    },
    {
     item: "ROLEX 228235 SUNDUST ROMAN",
     price: 51000
    },
    {
     item: "PATEK PHILIPPE 5146R CREAM DIAL",
     price: 45000
    },
    {
     item: "ROLEX 81405 PEARL MASTER 34 RG DIAMOND",
     price: 135000
    },
    {
     item: "ROLEX 326238 SKY DWELLER GOLD BLK DIAL",
     price: 42000
    },
    {
     item: "ROLEX SUBMARINER 126618 BLUE",
     price: 42500
    },
    {
     item: "CARTIER SANTOS WHSA0007 SKELETON",
     price: 24800
    },
    {
     item: "CARTIER TANK MUST BLUE",
     price: 2755
    },
    {
     item: "CARTIER TANK MUST RED",
     price: 2755
    },
    {
     item: "JAEGAR LECOULTRE MARINER BLUE Q9068180",
     price: 8500
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3600
    },
    {
     item: "ROLEX 126301 DJUST SUNDUST SMOOTH OYSTER",
     price: 12600
    },
    {
     item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
     price: 16300
    },
    {
     item: "ROLEX DAYDATE 128235 PINK DIAMOND DIAL",
     price: 40000
    },
    {
     item: "ROLEX EXPLORER 124273 TWO TONE 36MM",
     price: 11950
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 14950
    },
    {
     item: "ROLEX DATEJUST 126234 SALMON DIAMOND JUB",
     price: 13200
    },
    {
     item: "ROLEX SUBMARINER 126618 BLUE",
     price: 42500
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 33500
    },
    {
     item: "CARTIER BALLON BLEU DE CARTIER W69012Z4",
     price: 4000
    },
    {
     item: "TUDOR 79350 HERITAGE BLACK BAY CHRONO",
     price: 3100
    },
    {
     item: "ROLEX 116688",
     price: 50500
    },
    {
     item: "TUDOR ROYAL M28600 BLUE DIAL",
     price: 1900
    },
    {
     item: "CARTIER TANK MUST BLUE",
     price: 2860
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3400
    },
    {
     item: "TUDOR BLACK BAY CERAMIC M79210CNU",
     price: 4500
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 7000
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 7000
    },
    {
     item: "ROLEX DATEJUST PRES 278289RBR BUTTERFLY",
     price: 48000
    },
    {
     item: "ROLEX 226659",
     price: 32100
    },
    {
     item: "TUDOR BLACK BAY 58 SILVER 925",
     price: 4200
    },
    {
     item: "ROLEX 228238 CHAMP ROMAN",
     price: 45000
    },
    {
     item: "JAEGER LECOULTRE REVERSO 3978430 GREEN",
     price: 8000
    },
    {
     item: "ROLEX 116234 DATEJUST WHITE ROMAN",
     price: 7000
    },
    {
     item: "ROLEX 116334 BLK DIAL OYSTER FLUTED",
     price: 9500
    },
    {
     item: "ROLEX 278273 GREEN DIAMOND DIAL",
     price: 12700
    },
    {
     item: "TUDOR BLACK BAY CERAMIC M79210CNU",
     price: 4650
    },
    {
     item: "ROLEX 124060LN",
     price: 13100
    },
    {
     item: "ROLEX 116688",
     price: 50500
    },
    {
     item: "ROLEX 126200 BLACK  INDEX JUBILEE",
     price: 8550
    },
    {
     item: "ROLEX  228239 GREEN DIAL",
     price: 53000
    },
    {
     item: "ROLEX 126231 36MM MOP DIAMOND DIAL OYS",
     price: 18500
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 7300
    },
    {
     item: "ROLEX 226659",
     price: 31500
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 9275
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 7300
    },
    {
     item: "LONGINES SPIRIT GREEN DIAL",
     price: 1250
    },
    {
     item: "WILLIAM HENRY KNIFE SET",
     price: 1550
    },
    {
     item: "ROLEX 126333 SILVER OYSTER FLU",
     price: 13500
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 9000
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3700
    },
    {
     item: "GRAND SEIKO SLGH005 WHITE BIRCH SHIRAKAB",
     price: 7900
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 6950
    },
    {
     item: "CARTIER SANTOS WSSA0009 WHITE DIAL",
     price: 6950
    },
    {
     item: "ROLEX SKYDWELLER 326235 SLATE DIAL",
     price: 46000
    },
    {
     item: "PATEK PHILIPPE AQUANAUT 5072",
     price: 115000
    },
    {
     item: "ROLEX 126234 36MM BLU DIAM DIAL FLU JUB",
     price: 11850
    },
    {
     item: "GIRARD PERREGAUX LAUREATO BLACK 38MM",
     price: 13360
    },
    {
     item: "ROLEX 126300 BLUE ROMAN OYSTER",
     price: 10650
    },
    {
     item: "ROLEX 116509 BLU DIAL",
     price: 57075
    },
    {
     item: "ROLEX 116508 WHITE DIAL",
     price: 56950
    },
    {
     item: "TUDOR BLACK BAY 58 SILVER 925",
     price: 3725
    },
    {
     item: "ROLEX 126334 BLACK INDEX JUB",
     price: 12800
    },
    {
     item: "BREITLING RB2510371G1P1 PREMIER B25",
     price: 15000
    },
    {
     item: "ROLEX 116681 yacht master 2",
     price: 26600
    },
    {
     item: "ROLEX 126201 WIMBELDON OYSTER",
     price: 11000
    },
    {
     item: "IWC SPITFIRE IW387902 BRONZE GREEN DIAL",
     price: 4750
    },
    {
     item: "ROLEX 126600 SEA DWELLER RED LETTERS",
     price: 14950
    },
    {
     item: "ROLEX 126334 BLUE INDEX JUBILEE",
     price: 12850
    },
    {
     item: "ROLEX 128348 MOP DIAMOND DIAL DIAMON BEZ",
     price: 52500
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 8000
    },
    {
     item: "RICHARD MILLE RM28",
     price: 75000
    },
    {
     item: "ROLEX 124300 OYSTER PERPETUAL RED",
     price: 10500
    },
    {
     item: "ROLEX 126600 SEA DWELLER RED LETTERS",
     price: 14500
    },
    {
     item: "ROLEX SKYDWELLER 326238 WHITE DIAL",
     price: 39500
    },
    {
     item: "ROLEX DATEJUST 126234 MOP DIAMOND JUBILE",
     price: 14000
    },
    {
     item: "CARTIER WSSA0018 SANTOS XL BLUE",
     price: 7350
    },
    {
     item: "ROLEX 126300 BLUE ROMAN JUB",
     price: 10000
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 37500
    },
    {
     item: "GRAND SEIKO SPRING DRIVE SBGY007",
     price: 6100
    },
    {
     item: "PATEK 5527G CALATRAVA BLACK DIAL",
     price: 28000
    },
    {
     item: "CARTIER WSSA0018 SANTOS XL BLUE",
     price: 6450
    },
    {
     item: "TUDOR BLACK BAY 58 79030B BLUE BRACELET",
     price: 3022
    },
    {
     item: "DOXA SUB 300",
     price: 2075
    },
    {
     item: "GRAND SEIKO SLGH005 WHITE BIRCH SHIRAKAB",
     price: 8100
    },
    {
     item: "IWC IW388102 PILOT BLUE DIAL",
     price: 6200
    },
    {
     item: "MIDO MULTIFORT PATRIMONY",
     price: 600
    },
    {
     item: "TUDOR BLACK BAY 58 79012 BRONZE",
     price: 4926.59
    },
    {
     item: "ROLEX 126234 36MM DJUST BLU MOTIF OYSTER",
     price: 11000
    },
    {
     item: "RICHARD MILLE RM 60-01 YELLOW",
     price: 150000
    },
    {
     item: "ROLEX 126300 WHITE ROMAN JUBILE",
     price: 10000
    },
    {
     item: "ROLEX 116518LN CHAMP AND BLACK",
     price: 49500
    },
    {
     item: "GRAND SEIKO SPRING DRIVE SBGY007",
     price: 6250
    },
    {
     item: "PATEK PHILIPPE WORLD TIME 5230R",
     price: 38000
    },
    {
     item: "PATEK 5930G COMPLICATIONS WORLD TIME",
     price: 55000
    },
    {
     item: "ROLEX CELLINI DUAL 50525 BLACK DIAL",
     price: 15520
    },
    {
     item: "ROLEX YACHTMASTER 268655 37MM",
     price: 24650
    },
    {
     item: "ROLEX 126710 BLRO PEPSI OYSTER",
     price: 22000
    },
    {
     item: "TUDOR BLACK BAY 58 79030B BLUE BRACELET",
     price: 3150
    },
    {
     item: "CARTIER TANK MUST BLUE",
     price: 2800
    },
    {
     item: "CARTIER TANK MUST GREEN",
     price: 2850
    },
    {
     item: "ROLEX 124300 OYSTER PERPETUAL TURQ 41MM",
     price: 16500
    },
    {
     item: "ROLEX 124300 OYSTER PREP YELLOW DIA",
     price: 12500
    },
    {
     item: "ROLEX 116505 PINK DIAL",
     price: 60000
    },
    {
     item: "ROLEX 126710 BLRO PEPSI OYSTER",
     price: 22000
    },
    {
     item: "ROLEX EXPLORER 124273 TWO TONE 36MM",
     price: 12100
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 7350
    },
    {
     item: "ROLEX DAYDATE 128235 PINK DIAMOND DIAL",
     price: 42750
    },
    {
     item: "TUDOR BLACK BAY 58 SILVER 925",
     price: 3500
    },
    {
     item: "ROLEX DATEJUST 126234 WIMBLEDON OYSTER",
     price: 10450
    },
    {
     item: "ROLEX MANUAL BOOK",
     price: 12
    },
    {
     item: "ROLEX TAG",
     price: 6
    },
    {
     item: "PATEK 5167R",
     price: 84500
    },
    {
     item: "PATEK PHILIPPE 5205R BLACK",
     price: 46500
    },
    {
     item: "AUDEMARS PIGUET 26470ST OFFSHORE GREY",
     price: 43000
    },
    {
     item: "ROLEX DATEJUST 126331 MOP DIAMOND JUBILE",
     price: 17800
    },
    {
     item: "ROLEX 126334 WHITE INDEX JUB",
     price: 12750
    },
    {
     item: "PATEK 5212A WHITE DIAL",
     price: 40000
    },
    {
     item: "ROLEX 126233 DJUST 36MM GREEN DIAL",
     price: 16500
    },
    {
     item: "TUDOR BLACK BAY CERAMIC M79210CNU",
     price: 4500
    },
    {
     item: "ROLEX 126300 WHITE INDEX OYSTER",
     price: 9100
    },
    {
     item: "ROLEX  126660 BLUE JAMES CAMERON",
     price: 17050
    },
    {
     item: "OMEGA SPEEDMASTER MOONWATCH 310 30 42 50",
     price: 5800
    },
    {
     item: "PATEK 5524G",
     price: 39500
    },
    {
     item: "ROLEX BOX",
     price: 225
    },
   
    {
     item: "CARTIER TANK MUST GREEN",
     price: 3040
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3450
    },
    {
     item: "ROLEX 126231 RHODIUM JUB",
     price: 13300
    },
    {
     item: "ROLEX BOX",
     price: 225
    },
    {
     item: "CARTIER TANK MUST BLUE",
     price: 3034
    },
    {
     item: "CARTIER TANK MUST GREEN",
     price: 3034
    },
    {
     item: "CARTIER TANK MUST RED",
     price: 3034
    },
    {
     item: "PATEK PHILIPPE NAUTILUS LADIES 7118\/1A",
     price: 52000
    },
    {
     item: "ROLEX DAY-DATE 228345 PINK DIAMOND DIAL",
     price: 58500
    },
    {
     item: "PATEK PHILIPPE CALATRAVA 6119R",
     price: 29000
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 7450
    },
    {
     item: "CARTIER SANTOS WSSA0009 WHITE DIAL",
     price: 7450
    },
    {
     item: "ROLEX  126660 BLUE JAMES CAMERON",
     price: 16950
    },
    {
     item: "ROLEX DATEJUST 278240 BLUE ROMAN JUBILEE",
     price: 7000
    },
    {
     item: "ROLEX 126600 SEA DWELLER RED LETTERS",
     price: 14150
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 36000
    },
    {
     item: "SHIPPING SERVICES",
     price: 1400
    },
    {
     item: "ROLEX 50519 WG BLK DIAL",
     price: 14320
    },
    {
     item: "PATEK 5164R",
     price: 114000
    },
    {
     item: "ROLEX OYSTER PERPETUAL 277200 PINK DIAL",
     price: 5200
    },
    {
     item: "ROLEX 128238 WHITE ROMAN DIAL",
     price: 32000
    },
    {
     item: "PATEK PHILLIPE WATCH WINDER",
     price: 1207
    },
    {
     item: "PREOWNED ROLEX 126331 SUNDUST JUBILEE",
     price: 13000
    },
    {
     item: "PATEK PHILIPPE NAUTILUS LADIES 7118\/1A",
     price: 51650
    },
    {
     item: "ROLEX 228235 GREEN ROMAN",
     price: 58500
    },
    {
     item: "WHITE GOLD DIAMOND NECKLACE",
     price: 600
    },
    {
     item: "ROUND BRILLIANT DIAMOND STUD EARRINGS",
     price: 900
    },
    {
     item: "ROLEX 126303 WIMBELDON SMOOTH BEZ JUB",
     price: 13450
    },
    
    {
     item: "PATEK PHILIPPE AQUANAUT 5267A WHITE",
     price: 49500
    },
    {
     item: "ROLEX 116519 STEEL DIAL",
     price: 44000
    },
    {
     item: "ROLEX DAYTONA 116518 BLACK DIAMOND DIAL",
     price: 45500
    },
    {
     item: "TUDOR BLACK BAY 58 M79030B SMURF",
     price: 3022
    },
    {
     item: "JAEGER-LECOULTRE REVERSO Q2618540",
     price: 3150
    },
    {
     item: "TUDOR BLACK BAY M79540 SILVER DIAL",
     price: 1830
    },
    {
     item: "LONGINES SPIRIT PRESTIGE L38104939 BLUE",
     price: 1100
    },
    {
     item: "ROLEX 124060LN",
     price: 13050
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3350
    },
    {
     item: "ROLEX OYSTER PERPETUAL 126000 GREEN",
     price: 9200
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 7450
    },
    {
     item: "PATEK 5270P PLATINUM SALMON DIAL",
     price: 175000
    },
    {
     item: "ROLEX 126231 36MM PINK ROMAN JUB",
     price: 15600
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 7450
    },
    {
     item: "CARTIER WSSA0018 SANTOS XL BLUE",
     price: 7450
    },
    {
     item: "ROLEX 277200 OYSTER PERPETUAL ORANGE DIA",
     price: 5950
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3446
    },
    {
     item: "CARTIER TANK MUST RED",
     price: 3169
    },
    {
     item: "ROLEX 326938 SKY DWELLER CHAMP DIAL",
     price: 51650
    },
    {
     item: "ROLEX 228235 SUNDUST ROMAN",
     price: 45000
    },
    {
     item: "ROLEX 326934 SKY DWELLER WHT DIAL JUB",
     price: 22000
    },
    {
     item: "ROLEX 124300 OYSTER PREP YELLOW DIA",
     price: 12000
    },
    {
     item: "ROLEX 326933 SKY DWELLER BLK DIAL JUB",
     price: 22000
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 14000
    },
    {
     item: "ROLEX 116500LN BLACK",
     price: 31500
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 7450
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 35500
    },
    {
     item: "ROLEX DAYTONA 116503 WHITE MOP DIAMOND",
     price: 28800
    },
    {
     item: "PATEK 5269R",
     price: 62000
    },
    {
     item: "ROLEX 126711CHNR",
     price: 21000
    },
    {
     item: "ROLEX YACHTMASTER 37MM 268622 SLATE",
     price: 11200
    },
    {
     item: "ROLEX 277200 OYSTER PERPETUAL BLACK",
     price: 4725
    },
    {
     item: "ROLEX OYSTER PERPETUAL 277200 BLUE",
     price: 4725
    },
    {
     item: "ROLEX DAYDATE 228206 BAGUETTE DIAMONDS",
     price: 73750
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 22800
    },
    {
     item: "ROLEX 116518LN CHAMP AND BLACK",
     price: 48000
    },
    {
     item: "ROLEX EXPLORER 216570 POLAR WHITE",
     price: 10750
    },
    {
     item: "WILLIAM HENRY OUTBACK KNIFE",
     price: 1
    },
    
    {
     item: "ROLEX 126233 CHAMP OYSTER",
     price: 13200
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 14000
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 13500
    },
    {
     item: "ROLEX 116500LN BLACK",
     price: 31400
    },
    {
     item: "ROLEX 126600 SEA DWELLER RED LETTERS",
     price: 14350
    },
    
    {
     item: "ROLEX DAYDATE 128238 TURQUOISE DIAMOND",
     price: 47000
    },
    {
     item: "ROLEX DAYDATE 128238 TURQUOISE DIAMOND",
     price: 46250
    },
    {
     item: "ROLEX DAYTONA 116503 WHITE MOP DIAMOND",
     price: 28500
    },
    
    {
     item: "ROLEX 278271 SUNDUST DIAMOND DIAL",
     price: 12700
    },
    {
     item: "RICHARD MILLE RM035 BABY NADAL",
     price: 225000
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 17600
    },
    {
     item: "ROLEX 278271 SUNDUST DIAMOND DIAL",
     price: 14200
    },
    {
     item: "ROLEX DAYTONA 116518 BLACK DIAMOND DIAL",
     price: 45000
    },
    {
     item: "ROLEX 126231 36MM WHITE DIAL FLUTED JUB",
     price: 12000
    },
    {
     item: "ROLEX 126333 CHAMP DIAMOND OYSTER",
     price: 14550
    },
    {
     item: "ROLEX 126334 BLK DIAMOND OYSTER FLUTED",
     price: 13000
    },
    {
     item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
     price: 136000
    },
    {
     item: "278271 PINK DIMOAND DIAL JUBILEE",
     price: 12700
    },
    {
     item: "ROLEX 126333 CHAMP DIAMOND JUBILEE",
     price: 15200
    },
    {
     item: "ROLEX DATEJUST 278274 MOP DIA JUBILEE 31",
     price: 12500
    },
    {
     item: "CARTIER SANTOS ROSE GOLD SKELETON 0016",
     price: 53500
    },
    {
     item: "ROLEX 116681 yacht master 2",
     price: 26000
    },
    {
     item: "PATEK PHILIPPE AQUANAUT 5267 GREEN",
     price: 54000
    },
    {
     item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
     price: 14500
    },
    {
     item: "ROLEX 126719BLRO MEOTERITE DIAL",
     price: 61500
    },
    {
     item: "ROLEX 118205 DAY DATE 36MM RGLD",
     price: 23000
    },
    {
     item: "ROLEX 128348 TURQ DIAL DIAMOND BEZEL",
     price: 64800
    },
    {
     item: "ROLEX 126719BLRO MEOTERITE DIAL",
     price: 59500
    },
    {
     item: "CARTIER SANTOS WGSA0030 WHITE DIAL",
     price: 28500
    },
    {
     item: "ROLEX OYSTERFLEX STRAP",
     price: 200
    },
    {
     item: "ROLEX 126715CHNR",
     price: 42000
    },
    {
     item: "ROLEX 228238  SILVER HONEYCOMB",
     price: 39150
    },
    {
     item: "ROLEX WARRANTY BOOKLET AND WALLET",
     price: 30
    },
    {
     item: "ROLEX MANUAL BOOK",
     price: 20
    },
    {
     item: "ROLEX YACHTMASTER 2 116680",
     price: 19400
    },
    {
     item: "ROLEX MANUAL BOOK",
     price: 10
    },
    {
     item: "ROLEX WARRANTY BOOKLET AND WALLET",
     price: 10
    },
    {
     item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
     price: 135000
    },
    {
     item: "ROLEX 277200 OP31 GREEN DIAL",
     price: 6000
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 6700
    },
    {
     item: "OMEGA SPEEDMASTER O31030425001002",
     price: 5720
    },
    {
     item: "PATEK 5711\/1300A GREEN DIAL DIAMOND BEZ",
     price: 700000
    },
    {
     item: "ROLEX 226659",
     price: 29500
    },
    {
     item: "ROLEX DATEJUST 126303 SILVER OYSTER",
     price: 12500
    },
    {
     item: "PATEK PHILIPPE AQUANAUT 5268\/200R WHITE",
     price: 75000
    },
    {
     item: "ROLEX 126715CHNR",
     price: 42000
    },
    {
     item: "ROLEX 268621 37MM CHOC DIAL TWO TONE",
     price: 13500
    },
    {
     item: "ROLEX 116689 WGOLD YMASTER 2",
     price: 44000
    },
    {
     item: "PATEK 5740\/1G BLUE DIAL",
     price: 230000
    },
    {
     item: "ROLEX 279171 CHOCO ROMAN JUBILE",
     price: 9357.5
    },
    {
     item: "ROLEX 126333 CHAMPAGNE JUBILEE",
     price: 13250
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 18100
    },
    {
     item: "PATEK 5146J SLATE DIAL",
     price: 30000
    },
    {
     item: "PATEK PHILIPPE NAUTILUS 7010\/1R WHITE",
     price: 58000
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 34000
    },
    {
     item: "PATEK PHILIPPE CALATRAVA 6119R",
     price: 32500
    },
    {
     item: "ROLEX OYSTER PERPETUAL 276200 PINK 28MM",
     price: 4500
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 17500
    },
    {
     item: "TUDOR BLACK BAY CERAMIC M79210CNU",
     price: 4700
    },
    {
     item: "PATEK 5740\/1G BLUE DIAL",
     price: 231500
    },
    {
     item: "PATEK PHILIPPE WORLD TIME 5230R",
     price: 37000
    },
    {
     item: "ROLEX 326933 WHT DIAL JUB",
     price: 21000
    },
    {
     item: "CARTIER SANTOS WHITE STRAP DIAMOND BEZEL",
     price: 7500
    },
    {
     item: "ROLEX 126234 36MM DJUST BLK DIAL FLU JUB",
     price: 8300
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 14000
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 17500
    },
    {
     item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
     price: 15200
    },
    {
     item: "ROLEX DAYTONA 116518 PAUL NEWMAN",
     price: 45000
    },
    {
     item: "ROLEX BOX",
     price: 300
    },
    {
     item: "ROLEX 126231 WHITE ROMAN JUBILEE",
     price: 12500
    },
    {
     item: "ROLEX 126711CHNR",
     price: 19000
    },
    {
     item: "ROLEX 116500LN BLACK",
     price: 31250
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 13700
    },
    {
     item: "ROLEX 126334 WIMBELDON OYSTER",
     price: 12150
    },
    {
     item: "ROLEX 126710 PEPSI JUBILEE",
     price: 20400
    },
    {
     item: "ROLEX YACHTMASTER 37MM 268622 SLATE",
     price: 11350
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 7325
    },
    {
     item: "CARTIER WSSA0018 SANTOS XL BLUE",
     price: 7400
    },
    {
     item: "TUDOR BLACK BAY 58 SILVER 925",
     price: 4300
    },
    {
     item: "ROLEX 116519 BLK DIAMOND DIAL",
     price: 41550
    },
    {
     item: "AUDEMARS PIGUET 15400OR BLACK DIAL",
     price: 42500
    },
    {
     item: "ROLEX 126710 BLRO PEPSI OYSTER",
     price: 21500
    },
    {
     item: "ROLEX 268655 YMASTER 37MM PAVE DIAL RGLD",
     price: 41000
    },
    {
     item: "PANERAI PAM01070 SUBMERISBLE GOLDTEC",
     price: 23000
    },
    {
     item: "PATEK 5320G",
     price: 65000
    },
    {
     item: "ROLEX SKYDWELLER 326934 BLUE JUBILEE",
     price: 29000
    },
    {
     item: "ROLEX YACHTMASTER 2 116680",
     price: 20000
    },
    {
     item: "ROLEX 126715CHNR",
     price: 43500
    },
    {
     item: "ROLEX 126710 PEPSI JUBILEE",
     price: 19000
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 17400
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 17800
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 34000
    },
    {
     item: "ROLEX 126200 PALM MOTIF OYSTER",
     price: 11000
    },
    {
     item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
     price: 16850
    },
    {
     item: "ROLEX DAYTONA 116509 PAVE DIAMOND ARABIC",
     price: 49000
    },
    {
     item: "ROLEX DATEJUS 126234 BLUE DIAMOND JUBILE",
     price: 11000
    },
    {
     item: "RICHARD MILLE RM61-01 YOHAN BLAKE",
     price: 300000
    },
    {
     item: "ROLEX 116300 DJUST RHODIUM DIAL ARABIC",
     price: 8500
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 7400
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 7400
    },
    {
     item: "ROLEX 116506 PLAIN DIAL",
     price: 114000
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 22500
    },
    {
     item: "ROLEX 116505 CHOC DIAL",
     price: 54000
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 8100
    },
    {
     item: "ROLEX 124300 OYSTER PREP YELLOW DIA",
     price: 11000
    },
    {
     item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
     price: 43650
    },
    {
     item: "ROLEX YACHTMASTER 268655 37MM",
     price: 22000
    },
    {
     item: "PANERAI PAM01393 LUMINOR BLUE DIAL",
     price: 6750
    },
    {
     item: "ROLEX DAYDATE 228206 BAGUETTE DIAMONDS",
     price: 71000
    },
    {
     item: "ROLEX 226570 EXPLORER II BLK DIAL",
     price: 11200
    },
    {
     item: "ROLEX 326933 BLACK DIAL",
     price: 19050
    },
    {
     item: "PATEK 5267\/200A AQUANAUT STEEL BLK DIAM",
     price: 58000
    },
    {
     item: "PATEK BOX",
     price: 500
    },
    {
     item: "PATEK 5320G",
     price: 65000
    },
    {
     item: "PO ROLEX 116500 DAYTONA WHT DIAL",
     price: 33000
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 35250
    },
    {
     item: "ROLEX 326935 SKYDWELLER RHODIUM ROSE",
     price: 59500
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 28800
    },
    {
     item: "ROLEX OYSTER PERPETUAL 277200 TIFFANY 31",
     price: 8800
    },
    {
     item: "PATEK 5968G BLUE DIAL CHRONO",
     price: 170000
    },
    {
     item: "PATEK 6119G CALATRAVA",
     price: 27000
    },
    {
     item: "ROLEX 277200 OYSTER PERPETUAL BLACK",
     price: 5400
    },
    {
     item: "ROLEX 228238 DAY DATE CHAMGPAGNE STICK",
     price: 36250
    },
    {
     item: "OMEGA SPEEDMASTER 321 MOONWATCH",
     price: 14100
    },
    {
     item: "ROLEX 126300 BLACK INDEX JUBILEE",
     price: 10000
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 43950
    },
    {
     item: "PO ROLEX 116500 DAYTONA WHT DIAL",
     price: 35250
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 8100
    },
    {
     item: "ROLEX 126715CHNR",
     price: 43500
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 8850
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 35250
    },
    {
     item: "ROLEX 126710 PEPSI JUBILEE",
     price: 19000
    },
    {
     item: "ROLEX  126660 BLUE JAMES CAMERON",
     price: 16150
    },
    {
     item: "PATEK 5726\/1A-014",
     price: 136500
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 43750
    },
    {
     item: "PATEK 7118\/1R WHITE",
     price: 69500
    },
    {
     item: "WATCH WINDER",
     price: 800
    },
    {
     item: "ROLEX 126200 BLACK  INDEX JUBILEE",
     price: 7300
    },
    {
     item: "CARTIER WSSA0018 SANTOS XL BLUE",
     price: 7300
    },
    {
     item: "TUDOR ROYAL MOP DIAL M28300-0005",
     price: 3047
    },
    {
     item: "BREITLING CHRONOMAT UB0134101B1U1",
     price: 9000
    },
    {
     item: "PATEK PHILIPPE 5235\/50R ANNUAL CALENDAR",
     price: 36500
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 8000
    },
    {
     item: "JAEGER LECOULTRE REVERSO 3978480",
     price: 6150
    },
    {
     item: "ROLEX 326238 SKY DWELLER GOLD BLK DIAL",
     price: 41000
    },
    {
     item: "ROLEX SKYDWELLER 326238 CHAMPAGNE DIAL",
     price: 39150
    },
    {
     item: "ROLEX 126715CHNR",
     price: 43500
    },
    {
     item: "ROLEX 126233 DATEJUST 36 WIMBLEDON",
     price: 11700
    },
    {
     item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
     price: 17000
    },
    {
     item: "PANERAI PAM00510 8 DAYS",
     price: 4290
    },
    {
     item: "ULYSSE NARDIN EXECUTIVE DUAL TIME BLACK",
     price: 4950
    },
    {
     item: "ROLEX 326938 SKY DWELLER BLK DIAL",
     price: 52000
    },
    {
     item: "ROLEX CELLINI 50535 MOONPHASE",
     price: 23500
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 12950
    },
    {
     item: "ROLEX DAY-DATE 228345 CHOCOLATE DIAMOND",
     price: 60000
    },
    {
     item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
     price: 16800
    },
    {
     item: "ROLEX 126710 BLRO PEPSI OYSTER",
     price: 21500
    },
    {
     item: "ROLEX OYSTER PERPETUAL 277200 PINK DIAL",
     price: 7600
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 7200
    },
    {
     item: "CARTIER WSSA0018 SANTOS XL BLUE",
     price: 7200
    },
    {
     item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
     price: 15200
    },
    {
     item: "ROLEX SUBMARINER 126618 BLACK DIAL",
     price: 39000
    },
    {
     item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
     price: 16600
    },
    {
     item: "ROLEX 228239 BLUE ROMAN DIAL",
     price: 39000
    },
    {
     item: "ROLEX 278243 DJUST 31MM DOMED BEZ OYSTER",
     price: 10350
    },
    {
     item: "AUDEMARS PIGUET 26579CB OO",
     price: 200000
    },
    {
     item: "AUDEMARS PIGUET 26579CB OO",
     price: 68000
    },
    {
     item: "PATEK 5930G COMPLICATIONS WORLD TIME",
     price: 54500
    },
    {
     item: "ROLEX 126710BLNR GMT BATMAN OYSTER",
     price: 18200
    },
    {
     item: "PO ROLEX 116500 DAYTONA WHT DIAL",
     price: 34000
    },
    {
     item: "ROLEX OYSTER PERPETUAL 276200 PINK 28MM",
     price: 5150
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 13000
    },
    {
     item: "ROLEX 116610LV SUBMARINER HULK",
     price: 22000
    },
    {
     item: "ROLEX 228235 WHITE ROMAN",
     price: 46000
    },
    {
     item: "ROLEX  126660 BLUE JAMES CAMERON",
     price: 15800
    },
    {
     item: "ROLEX BOX",
     price: 190
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK 26740ST BLUE",
     price: 27500
    },
    {
     item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
     price: 14000
    },
    {
     item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
     price: 14950
    },
    {
     item: "AUDEMARS PIGUET BLACK SKELETON 26585CE",
     price: 400000
    },
    {
     item: "ZENITH 0331003600\/69M3100 CHRONOGRAPH",
     price: 8500
    },
    {
     item: "AUDEMARS PIGUET 26579CB OO",
     price: 268000
    },
    {
     item: "ROLEX 126600 SEA DWELLER RED LETTERS",
     price: 14850
    },
    {
     item: "ROLEX 116519 STEEL DIAL",
     price: 42500
    },
    {
     item: "ROLEX 126719 BLRO  BLUE DIAL",
     price: 44975
    },
    {
     item: "ROLEX CELLINI 50535 MOONPHASE",
     price: 24000
    },
    {
     item: "278271 PINK DIMOAND DIAL JUBILEE",
     price: 13200
    },
    {
     item: "TUDOR 79360N OPALINE DIAL 41MM",
     price: 6000
    },
    {
     item: "ROLEX 126333 BLACK OYSTER",
     price: 12800
    },
    {
     item: "PATEK 5524G",
     price: 39000
    },
    {
     item: "CARTIER SANTOS WHSA0007 SKELETON",
     price: 23680
    },
    {
     item: "ROLEX 116618LN",
     price: 36000
    },
    {
     item: "ROLEX 116688",
     price: 43700
    },
    {
     item: "TUDOR BLACK BAY CERAMIC M79210CNU",
     price: 5400
    },
    {
     item: "ROLEX 126600 SEA DWELLER RED LETTERS",
     price: 13000
    },
    {
     item: "ROLEX 126331 CHOC DIAL OYSTER",
     price: 14000
    },
    {
     item: "ROLEX SKYDWELLER 326935 CHOCOLATE INDEX",
     price: 60000
    },
    {
     item: "PATEK NAUTILUS 7118 DIAMOND BLUE",
     price: 60969
    },
    {
     item: "PATEK PHILIPPE 5396R WHITE DIAL",
     price: 41000
    },
    {
     item: "ROLEX 116681 yacht master 2",
     price: 23000
    },
    {
     item: "ROLEX 126618LB 41MM SUBMARINER YELLOW",
     price: 39500
    },
    {
     item: "ROLEX 126618LB 41MM SUBMARINER YELLOW",
     price: 39500
    },
    {
     item: "ROLEX BOX",
     price: 198.01
    },
    {
     item: "PATEK 7300\/1A BLUE",
     price: 18500
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 21650
    },
    {
     item: "CARTIER ROADSTER",
     price: 2079.8
    },
    {
     item: "GIRARD PERREGAUX 81010-11-635-11A",
     price: 8500
    },
    {
     item: "PANERAI PAM02020",
     price: 4963
    },
    {
     item: "ROLEX 126600 SEA DWELLER RED LETTERS",
     price: 13800
    },
    {
     item: "ROLEX 116506 PLAIN DIAL",
     price: 114000
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6900
    },
    {
     item: "CARTIER SANTOS WHSA0007 SKELETON",
     price: 23600
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 7100
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 28200
    },
    {
     item: "PATEK 5968A",
     price: 129000
    },
    {
     item: "AUDEMARS PIGUET 15400ST SILVER DIAL",
     price: 37000
    },
    {
     item: "ROLEX 326238 SKY DWELLER GOLD BLK DIAL",
     price: 41000
    },
    {
     item: "ROLEX 116506 PLAIN DIAL",
     price: 110000
    },
    {
     item: "ROLEX 126234 36MM DJUST WIMBELDON JUB",
     price: 9800
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 28400
    },
    {
     item: "ROLEX 326938 SKY DWELLER GOLD WHITE DIAL",
     price: 48900
    },
    {
     item: "ROLEX 126234 DATEJUST BLUE FLU BEZ JUBIL",
     price: 8850
    },
    {
     item: "PATEK 5980\/1A WHITE",
     price: 111000
    },
    {
     item: "ROLEX 126710BLNR GMT BATMAN OYSTER",
     price: 16500
    },
    {
     item: "PATEK 5396R BLUE BAUGETTE DIAL",
     price: 49500
    },
    {
     item: "ROLEX 124300 OYSTER PERPETUAL BLUE",
     price: 7700
    },
    {
     item: "ROLEX DAYDATE 228206 BAGUETTE DIAMONDS",
     price: 68000
    },
    {
     item: "ROLEX MANUAL BOOK",
     price: 18
    },
    {
     item: "OMEGA SPEEDMASTER O31030425001002",
     price: 6328.57
    },
    {
     item: "TUDOR ROYAL M28500 BLUE",
     price: 2250
    },
    {
     item: "ROLEX DATEJUST 126333 BLACK DIAL JUBILEE",
     price: 14455
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 17300
    },
    {
     item: "ROLEX 278273 GREEN DIAMOND DIAL",
     price: 10800
    },
    {
     item: "AUDEMARS PIGUET 15400 ROYAL OAK BLK DIAL",
     price: 36000
    },
    {
     item: "ROLEX 226659",
     price: 30000
    },
    {
     item: "PATEK PHILIPPE 4947\/1A ANNUAL CALENDAR",
     price: 50000
    },
    {
     item: "ROLEX 126711CHNR",
     price: 20000
    },
    {
     item: "ROLEX 116688",
     price: 44500
    },
    {
     item: "ROLEX BOX",
     price: 190
    },
    {
     item: "ROLEX 116500LN BLACK",
     price: 31500
    },
    {
     item: "ROLEX 228235 GREEN ROMAN",
     price: 53250
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6850
    },
    {
     item: "CARTIER WSSA0018 SANTOS XL BLUE",
     price: 7100
    },
    {
     item: "PATEK 5396R-014 BLUE DIAL STICK",
     price: 47500
    },
    {
     item: "ROLEX BOX",
     price: 180
    },
    {
     item: "ROLEX 226570 EXPLORER II BLK DIAL",
     price: 12000
    },
    {
     item: "ROLEX MANUAL BOOK",
     price: 13
    },
    {
     item: "ROLEX TAG",
     price: 6
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6500
    },
    {
     item: "ROLEX 116508 DAYTONA GREEN DIAL",
     price: 79500
    },
    {
     item: "ROLEX 124200 OYSTER PERPETUAL 34MM BLUE",
     price: 5000
    },
    {
     item: "ROLEX 228235 WHITE ROMAN",
     price: 41000
    },
    {
     item: "CARTIER BALLON BLEU W69010Z4 28MM",
     price: 3255
    },
    {
     item: "ROLEX WARRANTY BOOKLET AND WALLET",
     price: 10.5
    },
    {
     item: "ROLEX 126331  WIMBLEDON JUBILEE",
     price: 14450
    },
    {
     item: "FRANCK MULLER 1752QZACBACE LADIES CINTRE",
     price: 3850
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK 26331ST WHITE",
     price: 41000
    },
    {
     item: "PATEK 5968A",
     price: 129500
    },
    {
     item: "ROLEX 126300 WIMBLEDON JUBILEE",
     price: 9900
    },
    {
     item: "ROLEX 116710 BATMAN OYSTER",
     price: 16500
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 21400
    },
    {
     item: "ROLEX EXPLORER 216570 POLAR WHITE",
     price: 12000
    },
    {
     item: "ROLEX 228238 DAY DATE CHAMGPAGNE STICK",
     price: 37000
    },
    {
     item: "ROLEX 126622 BLUE DIAL",
     price: 13000
    },
    {
     item: "CARTIER W4BB0024",
     price: 9520
    },
    {
     item: "PATEK 5065A",
     price: 29950
    },
    {
     item: "ROLEX 126300 BLUE STICK JUBILEE",
     price: 10500
    },
    {
     item: "ROLEX 124300 OYSTER PERPETUAL GREEN DIAL",
     price: 12000
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 13850
    },
    {
     item: "PATEK NAUTILUS 7118 DIAMOND BLUE",
     price: 60900
    },
    {
     item: "AUDEMARS PIGUET 26470ST OFFSHORE BROWN",
     price: 30450
    },
    {
     item: "ROLEX 124300 OYSTER PERPETUAL TURQ 41MM",
     price: 17900
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 35500
    },
    {
     item: "ROLEX DAYTONA 116503 CHAMPAGNE INDEX DIA",
     price: 20500
    },
    {
     item: "PATEK PHILIPPE 5960 BLUE DIAL",
     price: 46000
    },
    {
     item: "ROLEX 228348 YG DIAMOND BEZEL CHAMP DIAL",
     price: 51250
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 18100
    },
    {
     item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
     price: 16650
    },
    {
     item: "ROLEX 126710 PEPSI JUBILEE",
     price: 20200
    },
    {
     item: "ROLEX YACHTMASTER 2 116680",
     price: 19000
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 17200
    },
    {
     item: "PATEK PHILIPPE 5205R BLACK",
     price: 47500
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 28500
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 17300
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 18100
    },
    {
     item: "ROLEX 116505 BLACK DIAL",
     price: 49800
    },
    {
     item: "ROLEX 126711CHNR",
     price: 19800
    },
    {
     item: "ROLEX 116523 WHITE DIAL ARABIC NUMBERS",
     price: 16000
    },
    {
     item: "ROLEX  126660 BLUE JAMES CAMERON",
     price: 16000
    },
    {
     item: "ROLEX DAYDATE 128238 TURQUOISE DIAMOND",
     price: 45000
    },
    {
     item: "ROLEX 218239 BLACK DIMAOND DIAL",
     price: 34000
    },
    {
     item: "TUDOR BLACK BAY 58 BLUE 79030B STRAP",
     price: 3575
    },
    {
     item: "ROLEX 116518 BLACK",
     price: 38000
    },
    {
     item: "PATEK 7118\/1R WHITE",
     price: 63000
    },
    {
     item: "PATEK PHILIPPE 5146G CREAM DIAL",
     price: 33000
    },
    {
     item: "PATEK PHILIPPE 5205R WHITE",
     price: 43000
    },
    {
     item: "PATEK PHILIPPE NAUTILUS 5712R",
     price: 95000
    },
    {
     item: "CARTIER SANTOS ROSE GOLD SKELETON 0016",
     price: 54000
    },
    {
     item: "ROLEX 126711CHNR",
     price: 19300
    },
    {
     item: "ZENITH 0331003600\/69M3100 CHRONOGRAPH",
     price: 10000
    },
    {
     item: "ROLEX 126334 WIMBELDON OYSTER",
     price: 13000
    },
    {
     item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
     price: 15000
    },
    {
     item: "ROLEX 126334 BLACK INDEX JUB",
     price: 11500
    },
    {
     item: "AUDEMARS PIGUET 15500 ROYAL OAK BLK DIAL",
     price: 36500
    },
    {
     item: "PATEK 5960 1A",
     price: 46000
    },
    {
     item: "ROLEX 126333 CHAMPAGNE OYSTER",
     price: 12700
    },
    {
     item: "PATEK  5711\/1R",
     price: 150000
    },
    {
     item: "PATEK 5980\/1R",
     price: 212000
    },
    {
     item: "PATEK 5980\/1R",
     price: 199000
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 17050
    },
    {
     item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
     price: 16450
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6850
    },
    {
     item: "CARTIER WSSA0018 SANTOS XL BLUE",
     price: 6500
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3400
    },
    {
     item: "ROLEX 126600 SEA DWELLER RED LETTERS",
     price: 13700
    },
    {
     item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
     price: 15250
    },
    {
     item: "ROLEX DAYTONA 116515 BLACK DIAL PINK SUB",
     price: 41250
    },
    {
     item: "CARTIER SANTOS WHSA0007 SKELETON",
     price: 23850
    },
    {
     item: "ROLEX 228238 DAY DATE CHAMGPAGNE STICK",
     price: 36000
    },
    {
     item: "ROLEX 228238 DAY DATE SILVER DIAL",
     price: 36000
    },
    {
     item: "ROLEX 326938 SKY DWELLER GOLD WHITE DIAL",
     price: 47000
    },
    {
     item: "ROLEX 228239 DAY DATE GRAY DIAL",
     price: 37000
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 20000
    },
    {
     item: "ROLEX CELLINI COIN WATCH",
     price: 15000
    },
    {
     item: "CARTIER BALLON BLEU W69010Z4 28MM",
     price: 4647.5
    },
    {
     item: "ROLEX OYSTER PERPETUAL 126000 SILVER",
     price: 6600
    },
    {
     item: "PANERAI PAM00774",
     price: 3000
    },
    {
     item: "ROLEX 124060LN",
     price: 12000
    },
    {
     item: "PATEK 5196R CALATRAVA",
     price: 21000
    },
    {
     item: "ROLEX 228238 BLACK DD",
     price: 41000
    },
    {
     item: "PATEK 5524G",
     price: 37000
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6950
    },
    {
     item: "PATEK 5930G COMPLICATIONS WORLD TIME",
     price: 54000
    },
    {
     item: "TUDOR BLACK BAY 58 SILVER 925",
     price: 4300
    },
    {
     item: "ROLEX YACHTMASTER 2 116680",
     price: 19000
    },
    {
     item: "ROLEX DAY-DATE MOTIF DIAL 228206",
     price: 61000
    },
    {
     item: "ROLEX 116505 PINK DIAMOND DIAL",
     price: 58500
    },
    {
     item: "PATEK PHILIPPE NAUTILUS LADIES 7118\/1A",
     price: 45500
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 7000
    },
    {
     item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
     price: 43650
    },
    {
     item: "ROLEX 126719BLRO MEOTERITE DIAL 2",
     price: 59500
    },
    {
     item: "IWC IW377719 PILOT CHRONO SPITFIRE STEEL",
     price: 3900
    },
    {
     item: "PATEK BOX",
     price: 450
    },
    {
     item: "PATEK PHILIPPE 5205G-013 BLUE DIAL",
     price: 42000
    },
    {
     item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
     price: 43000
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 28000
    },
    {
     item: "ROLEX BOX",
     price: 180
    },
    {
     item: "ROLEX 116618LN",
     price: 35000
    },
    {
     item: "ROLEX 116619LB",
     price: 33500
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 20000
    },
    {
     item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
     price: 43000
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 28000
    },
    {
     item: "ROLEX 126303 WIMBELDON SMOOTH BEZ OYSTER",
     price: 12500
    },
    {
     item: "ROLEX 116400GV MILGUASS BLACK",
     price: 9300
    },
    {
     item: "ROLEX 126334 SILVER OYSTER",
     price: 9500
    },
    {
     item: "ROLEX 126618LB 41MM SUBMARINER YELLOW",
     price: 39200
    },
    {
     item: "PATEK 5396R BLUE BAUGETTE DIAL",
     price: 50750
    },
    {
     item: "ROLEX SUBMARINER 126618 BLACK DIAL",
     price: 38150
    },
    {
     item: "ROLEX 326933  WHITE DIAL",
     price: 18000
    },
    {
     item: "PATEK 5396R BLUE BAUGETTE DIAL",
     price: 50500
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 28000
    },
    {
     item: "ROLEX 116505 CHOC DIAL",
     price: 52000
    },
    {
     item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
     price: 16250
    },
    {
     item: "ROLEX 228239 BLUE ROMAN DIAL",
     price: 37500
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6850
    },
    {
     item: "ROLEX 278271 PURPLE DIAMOND VI JUB",
     price: 10500
    },
    {
     item: "ROLEX 126755SARU GMT MASTER II RGLD DIAM",
     price: 123000
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 17000
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 12900
    },
    {
     item: "ROLEX 126234 DATEJUST BLUE FLU BEZ JUBIL",
     price: 8800
    },
    {
     item: "ROLEX YACHTMASTER 2 116680",
     price: 18900
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 6500
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 19800
    },
    {
     item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
     price: 45000
    },
    {
     item: "PATEK PHILIPPE NAUTILUS 5712G",
     price: 75000
    },
    {
     item: "ROLEX 326933 BLACK DIAL",
     price: 19400
    },
    {
     item: "ROLEX 116688",
     price: 43700
    },
    {
     item: "ROLEX 126755SARU GMT MASTER II RGLD DIAM",
     price: 120000
    },
    {
     item: "ROLEX 326938 SKY DWELLER BLK DIAL",
     price: 48500
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK 26331ST WHITE",
     price: 43500
    },
    {
     item: "ROLEX 124060LN",
     price: 12100
    },
    {
     item: "ROLEX SKYDWELLER 326235 CHOCOLATE DIAL",
     price: 43250
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 28000
    },
    {
     item: "ROLEX 126715CHNR",
     price: 40250
    },
    {
     item: "ROLEX 126334 WHITE ROMAN OYSTER",
     price: 9900
    },
    {
     item: "ROLEX 126711CHNR",
     price: 19250
    },
    {
     item: "ROLEX 326934 SKYDWELLER WHITE DIAL",
     price: 18500
    },
    {
     item: "ROLEX 126622 RHODIUM DIAL",
     price: 13500
    },
    {
     item: "ROLEX YACHTMASTER 37MM 268622 SLATE",
     price: 10500
    },
    {
     item: "GIRARD PERREGAUX 81010-11-635-11A",
     price: 11500
    },
    {
     item: "GIRARD PERREGAUX LAUREATO CHRONOGRAPH",
     price: 8700
    },
    {
     item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
     price: 8100
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 41000
    },
    {
     item: "ROLEX 228235 SUNDUST ROMAN",
     price: 41000
    },
    {
     item: "ROLEX 228235 WHITE ROMAN",
     price: 41000
    },
    {
     item: "CARTIER SANTOS WHSA0007 SKELETON",
     price: 23670
    },
    {
     item: "PATEK PHILIPPE 5130\/1R WORLD TIME",
     price: 48500
    },
    {
     item: "ROLEX 116515 CHOC DIAL",
     price: 43500
    },
    {
     item: "ROLEX 116519 STEEL DIAL",
     price: 42000
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 18100
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLK DIAL",
     price: 15700
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 16000
    },
    {
     item: "ROLEX DAYTONA 116515 BLACK DIAL PINK SUB",
     price: 41000
    },
    {
     item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
     price: 14000
    },
    {
     item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
     price: 15250
    },
    {
     item: "PATEK PHILIPPE 5270\/1R BLACK DIAL ROSE",
     price: 150000
    },
    {
     item: "ROLEX 126334 WHITE ROMAN OYSTER",
     price: 10500
    },
    {
     item: "ROLEX 277200 OYSTER PERPETUAL ORANGE DIA",
     price: 6800
    },
    {
     item: "ROLEX DATEJUST 278271 BLACK DIAL",
     price: 10600
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 20750
    },
    {
     item: "ROLEX 126334 BLACK OYSTER",
     price: 6500
    },
    {
     item: "TUDOR 79830 PEPSI ON STRAP",
     price: 3000
    },
    {
     item: "ROLEX 126334 WHITE ROMAN JUB",
     price: 10500
    },
    {
     item: "ROLEX 228345 GREEN ROMAN DIAMOND BEZEL",
     price: 59500
    },
    {
     item: "ROLEX DATEJUS 126234 BLUE DIAMOND JUBILE",
     price: 11000
    },
    {
     item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
     price: 16800
    },
    {
     item: "ROLEX 126331  WIMBLEDON JUBILEE",
     price: 13750
    },
    {
     item: "ROLEX 126334 RHODIUM JUBILEE",
     price: 11000
    },
    {
     item: "ROLEX 116688",
     price: 40900
    },
    {
     item: "ROLEX BOX",
     price: 150
    },
    {
     item: "ROUND BRILLIANT DIAMOND STUD EARRINGS",
     price: 500
    },
    {
     item: "ROLEX 228345 GREEN ROMAN DIAMOND BEZEL",
     price: 59500
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 13150
    },
    {
     item: "ROLEX 126334 WHITE INDEX JUB",
     price: 9900
    },
    {
     item: "AUDEMARS PIGUET 15500ST GREY DIAL",
     price: 36000
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 14250
    },
    {
     item: "ROLEX 126300  BLACK INDEX OYSTER",
     price: 8000
    },
    {
     item: "ROLEX 126300 WHITE INDEX OYSTER",
     price: 8000
    },
    {
     item: "IWC INGENIEUR 380802 BLUE DIAL CHRONO",
     price: 3800
    },
    {
     item: "PATEK 5968A",
     price: 120000
    },
    {
     item: "ROLEX 126200 WHITE  ROMAN JUBILEE",
     price: 7200
    },
    {
     item: "ROLEX 228348 YG DIAMOND BEZEL CHAMP DIAL",
     price: 48850
    },
    {
     item: "ROLEX 126300 RHODIUM OYSTER",
     price: 7950
    },
    {
     item: "ROLEX SKYDWELLER 326235 SLATE DIAL",
     price: 42500
    },
    {
     item: "ROLEX 116610LN SUBMARINER DATE",
     price: 12500
    },
    {
     item: "ROLEX 124060LN",
     price: 12200
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 17200
    },
    {
     item: "ROLEX 126334 BLK DIAMOND DIAL JUB",
     price: 12000
    },
    {
     item: "ROLEX 228235 WHITE ROMAN",
     price: 40000
    },
    {
     item: "ROLEX DAYDATE 228235 CHOCOLATE MOTIF",
     price: 40000
    },
    {
     item: "ROLEX SKYDWELLER 326935 CHOCOLATE INDEX",
     price: 55250
    },
    {
     item: "ROLEX 228238  WHITE ROMAN",
     price: 35800
    },
    {
     item: "ROLEX 228238  SILVER HONEYCOMB",
     price: 35800
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 40250
    },
    {
     item: "ROLEX 228238 CHAMP ROMAN 2",
     price: 35800
    },
    {
     item: "ROLEX 228238 DAY DATE CHAMGPAGNE STICK",
     price: 35800
    },
    {
     item: "P\/O PATEK 5968A",
     price: 116000
    },
    {
     item: "ROLEX 126334 BLACK INDEX JUB",
     price: 10500
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 7100
    },
    {
     item: "ROLEX DAY-DATE 228345 PINK DIAMOND DIAL",
     price: 53000
    },
    {
     item: "PATEK PHILIPPE AQUANAUT 5072",
     price: 113000
    },
    {
     item: "ROLEX 326935 SKYDWELLER RHODIUM ROSE",
     price: 54500
    },
    {
     item: "ROLEX 116400GV MILGUASS BLACK",
     price: 9500
    },
    {
     item: "ROLEX 116400GV MILGUASS BLACK",
     price: 9100
    },
    {
     item: "PATEK  5711\/1R",
     price: 134500
    },
    {
     item: "PATEK 5524G",
     price: 36500
    },
    {
     item: "PATEK PHILIPPE LADIES AQUANAUT 5062\/450R",
     price: 221975
    },
    {
     item: "ROLEX 179384 MOP DIA JUBILEE",
     price: 12000
    },
    {
     item: "ROLEX 218206 CONCENTRIC BLUE DIAL",
     price: 47000
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 16000
    },
    {
     item: "ROLEX 126711CHNR",
     price: 18500
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 16150
    },
    {
     item: "ROLEX 126334 BLACK OYSTER",
     price: 10000
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 27800
    },
    {
     item: "116503 BLACK MOP DIAMOND DIAL",
     price: 24000
    },
    {
     item: "ROLEX 126622 RHODIUM DIAL",
     price: 13500
    },
    {
     item: "ROLEX 226659",
     price: 28300
    },
    {
     item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
     price: 14000
    },
    {
     item: "ROLEX 326933 BLACK DIAL",
     price: 19600
    },
    {
     item: "PATEK 5164A",
     price: 70000
    },
    {
     item: "ROLEX DATEJUST 126244 BLACK DIAMOND DIAL",
     price: 15900
    },
    {
     item: "ROLEX 126334 BLUE INDEX OYSTER",
     price: 10300
    },
    {
     item: "ROLEX 126300 WIMBLEDON OYSTER",
     price: 8550
    },
    {
     item: "ROLEX 226659",
     price: 28700
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6500
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 15800
    },
    {
     item: "ROLEX 126710 PEPSI JUBILEE",
     price: 19000
    },
    {
     item: "ROLEX 126622 BLUE DIAL",
     price: 13000
    },
    {
     item: "ROLEX 116515 CHOC DIAL",
     price: 40000
    },
    {
     item: "PATEK PHILIPPE NAUTILUS 5712G",
     price: 70000
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 13000
    },
    {
     item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
     price: 15000
    },
    {
     item: "PATEK 5396R-014 BLUE DIAL STICK",
     price: 48500
    },
    {
     item: "ROLEX 124300 OYSTER PERPETUAL SILVER DIA",
     price: 7000
    },
    {
     item: "ROLEX 228238  WHITE ROMAN",
     price: 36000
    },
    {
     item: "ROLEX 116619LB",
     price: 35000
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 26600
    },
    {
     item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
     price: 14500
    },
    {
     item: "PATEK PHILIPPE 5140G WHITE DIAL",
     price: 55500
    },
    {
     item: "CARTIER SANTOS ROSE GOLD WGSA0008",
     price: 52900
    },
    {
     item: "ROLEX 126715CHNR",
     price: 39500
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 41400
    },

    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 16000
    },
    {
     item: "TUDOR BLACK BAY 58 79030 TAN STRAP",
     price: 3150
    },
    {
     item: "PATEK 5270P PLATINUM SALMON DIAL",
     price: 162500
    },
    {
     item: "ROLEX 126334 DATEJUST BLU DAIMOND DIAL",
     price: 12300
    },
    {
     item: "CARTIER SANTOS WHSA0007 SKELETON",
     price: 26000
    },
    {
     item: "PATEK PHILIPPE 5205R BLACK",
     price: 43000
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 19700
    },
    {
     item: "ROLEX 116688",
     price: 41500
    },
    {
     item: "ROLEX 126622 RHODIUM DIAL",
     price: 13500
    },
    {
     item: "ROLEX 228239 BLUE ROMAN DIAL",
     price: 37500
    },
    {
     item: "TUDOR BLACK BAY 58 79030 TAN STRAP",
     price: 3350
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 16500
    },
    {
     item: "ROLEX 228238 CHAMP ROMAN 2",
     price: 36500
    },
    {
     item: "ROLEX 126334 BLACK INDEX JUB",
     price: 10500
    },
    {
     item: "ROLEX 126234 36MM DJUST BLK DIAL FLU JUB",
     price: 9500
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6500
    },
    {
     item: "ROLEX 126334 BLUE ROMAN OYSTER",
     price: 10150
    },
    {
     item: "ROLEX FACTORY SERVICE BOOKLET GOLD",
     price: 5
    },
    {
     item: "ROLEX WARRANTY WALLET",
     price: 9
    },
    {
     item: "ROLEX  116710LN GMT MASTER",
     price: 13850
    },
    {
     item: "ROLEX FACTORY SERVICE BOOKLET GOLD",
     price: 5
    },
    {
     item: "ROLEX TAG",
     price: 5
    },
    {
     item: "ROLEX WARRANTY WALLET",
     price: 6
    },
    {
     item: "ROLEX 126715CHNR",
     price: 39550
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 12600
    },
    {
     item: "ROLEX 326934 SKYDWELLER WHITE DIAL",
     price: 17500
    },
    {
     item: "ROLEX 126715CHNR",
     price: 39500
    },
    {
     item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
     price: 47100
    },
    {
     item: "PATEK 5167A",
     price: 40000
    },
    {
     item: "PATEK 5167R",
     price: 60000
    },
  
    {
     item: "ROLEX 228238  WHITE ROMAN",
     price: 35500
    },
    {
     item: "PATEK 7018\/1A-010",
     price: 51000
    },
    {
     item: "ROLEX OYSTER PERPETUAL 277200 PINK DIAL",
     price: 8000
    },
    {
     item: "ROLEX 126300 BLUE INDEX OYSTER",
     price: 8050
    },
    {
     item: "ROLEX 126233 DATEJUST WHITE ROMAN",
     price: 9950
    },
    {
     item: "ROLEX 278240 DJUST OP PINK DIAL ROMAN",
     price: 5000
    },
    {
     item: "AP_ROY OAK SS BLACK DIAL",
     price: 29000
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 12500
    },
    {
     item: "ROLEX 116500LN BLACK",
     price: 26700
    },
    {
     item: "ROLEX SKYDWELLER 326238 CHAMPAGNE DIAL",
     price: 40000
    },
    {
     item: "CARL F BUCHERERE MANTA 00 10632 28 33 99",
     price: 3100
    },
    {
     item: "PATEK 5980\/1A WHITE",
     price: 98100
    },
    {
     item: "ROLEX 126755SARU FULL DIAMOND POVET GMT",
     price: 190000
    },
    {
     item: "ROLEX 228238  WHITE ROMAN",
     price: 35000
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 13000
    },
    {
     item: "ROLEX  126660 BLUE JAMES CAMERON",
     price: 15000
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 12600
    },
    {
     item: "ROLEX DAYTONA 116508 PAUL NEWMAN BLACK",
     price: 39500
    },
    {
     item: "ROLEX DAYTONA 116515 BLACK DIAL PINK SUB",
     price: 37500
    },
    {
     item: "ROLEX 126622 BLUE DIAL",
     price: 12700
    },
    {
     item: "ROLEX YACHTMASTER 126655 PAVE DIAMOND",
     price: 40000
    },
    {
     item: "ROLEX 126334 BLUE INDEX JUBILEE",
     price: 11000
    },
    {
     item: "TUDOR 79030 BLACK BAY 58 ON STRAP",
     price: 2931
    },
    {
     item: "ROLEX OYSTER PERPETUAL 126000 PINK 36MM",
     price: 11000
    },
    {
     item: "ROLEX DAYDATE 128235 PINK DIAMOND DIAL",
     price: 36000
    },
    {
     item: "ROLEX BOX",
     price: 195
    },
    {
     item: "ROLEX 114200  OYSTER PERPETUAL 34 GREEN",
     price: 5100
    },
    {
     item: "ROLEX 126331  WIMBLEDON JUBILEE",
     price: 13500
    },
    {
     item: "ROELX 326934 BLACK DIAL",
     price: 20000
    },
    {
     item: "ROLEX 126334 BLACK INDEX JUB",
     price: 10500
    },
    {
     item: "ROLEX 228235 SUNDUST ROMAN",
     price: 38500
    },
    {
     item: "ROLEX YACHTMASTER 2 116680",
     price: 18000
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 20500
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 19313
    },
    {
     item: "ROLEX DAYTONA 116503 CHAMPAGNE INDEX DIA",
     price: 19312
    },
    {
     item: "PATEK BOX",
     price: 400
    },
    {
     item: "ROLEX BOX",
     price: 185
    },
    {
     item: "ROLEX 126334 WHITE INDEX JUB",
     price: 10500
    },
    {
     item: "ROLEX 126334 WHITE ROMAN JUB",
     price: 10500
    },
    {
     item: "ROLEX 126334 BLACK INDEX JUB",
     price: 10400
    },
    {
     item: "ROLEX BOX",
     price: 195
    },
    {
     item: "ROLEX 126622 RHODIUM DIAL",
     price: 13200
    },
    {
     item: "ROLEX 326933 BLACK DIAL",
     price: 19350
    },
    {
     item: "ROLEX 228235 SUNDUST ROMAN",
     price: 38500
    },
    {
     item: "ROLEX 228235 SUNDUST BAUGETTES",
     price: 42250
    },
    {
     item: "AP ROYAL OAK 26320BA YGOLD BLUE DIAL",
     price: 84000
    },
    {
     item: "ROLEX 126618LB 41MM SUBMARINER YELLOW",
     price: 36800
    },
    {
     item: "PATEK 5167A",
     price: 46000
    },
    {
     item: "PATEK 5980\/1R",
     price: 167000
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 6700
    },
    {
     item: "CARTIER W69010Z4 CARTIER BALLON BLEU DE",
     price: 2700
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6700
    },
    {
     item: "TUDOR 79030 BLACK BAY 58 ON STRAP",
     price: 3375
    },
    {
     item: "TUDOR BLACK BAY 58 BLUE 79030B STRAP",
     price: 3050
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 19700
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 13000
    },
    {
     item: "ROLEX  228239 GREEN DIAL",
     price: 37250
    },
    {
     item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
     price: 14000
    },
    {
     item: "ROLEX 116618LB SUBMARINER",
     price: 30100
    },
    {
     item: "ROLEX 326933 CHAMP DIAL",
     price: 18500
    },
    {
     item: "ROLEX 116519 STEEL DIAL",
     price: 36500
    },
    {
     item: "ROLEX 228235 WHITE ROMAN",
     price: 38900
    },
    {
     item: "ROLEX YACHTMASTER 2 116680",
     price: 18570
    },
    {
     item: "ROLEX 126755SARU GMT MASTER II RGLD DIAM",
     price: 115500
    },
    {
     item: "ROLEX 126334 WIMBELDON OYSTER",
     price: 10350
    },
    {
     item: "PATEK PHILIPPE LADIES AQUANAUT 5062\/450R",
     price: 209500
    },
    {
     item: "PATEK PHILIPPE NAUTILUS 5712R",
     price: 78000
    },
    {
     item: "P\/O ROLEX 126715 CHNR",
     price: 36500
    },
    {
     item: "116503 BLACK MOP DIAMOND DIAL",
     price: 24200
    },
    {
     item: "ROLEX 116509 BLU DIAL",
     price: 41500
    },
    {
     item: "ROLEX 126715CHNR",
     price: 39000
    },
    {
     item: "PATEK 7118\/1R WHITE",
     price: 55000
    },
    {
     item: "ROLEX 126300 BLUE ROMAN JUB",
     price: 8500
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 20500
    },
    {
     item: "ROLEX 126334 WHITE INDEX OYSTER",
     price: 9850
    },
    {
     item: "ROLEX 126300  BLUE INDEX OYSTER 2",
     price: 8100
    },
    {
     item: "PATEK 5320G 2",
     price: 62500
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 17300
    },
    {
     item: "ROLEX 228238 DAY DATE SILVER DIAL",
     price: 34500
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 6850
    },
    {
     item: "ROLEX 326938 SKY DWELLER GOLD WHITE DIAL",
     price: 44000
    },
    {
     item: "ROLEX 126331  WIMBLEDON OYSTER",
     price: 12700
    },
    {
     item: "ROLEX 126334  BLUE ROMAN JUB",
     price: 10300
    },
    {
     item: "ROLEX 124300 OYSTER PERPETUAL GREEN DIAL",
     price: 8600
    },
    {
     item: "ROLEX 126300 BLUE STICK JUBILEE",
     price: 8500
    },
    {
     item: "ROLEX 126334 BLACK INDEX JUB",
     price: 10200
    },
    {
     item: "PATEK PHILIPPE 5205R BLACK",
     price: 42800
    },
    {
     item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
     price: 14800
    },
    {
     item: "ROLEX 126334 WHITE INDEX OYSTER",
     price: 9900
    },
    {
     item: "ROLEX 126334 BLUE INDEX OYSTER",
     price: 10200
    },
    {
     item: "TUDOR BLACK BAY 58 M79030B SMURF",
     price: 3790
    },
    {
     item: "PATEK 7118\/1R-010 CHAMP",
     price: 53500
    },
    {
     item: "ROLEX 126755SARU GMT MASTER II RGLD DIAM",
     price: 112000
    },
    {
     item: "PATEK 5990\/1A",
     price: 96500
    },
    {
     item: "ROLEX 126234 DATEJUST BLUE FLU BEZ JUBIL",
     price: 8300
    },
    {
     item: "ROLEX SKYDWELLER 326235 WHITE DIAL",
     price: 39500
    },
    {
     item: "PATEK 5167R",
     price: 56000
    },
    {
     item: "ROLEX 126300 WIMBLEDON OYSTER",
     price: 8300
    },
    {
     item: "PO ROLEX 116500 DAYTONA WHT DIAL",
     price: 26200
    },
    {
     item: "CARTIER SANTOS ROSE GOLD WGSA0008",
     price: 53500
    },
    {
     item: "ROLEX 116613LB",
     price: 13450
    },
    {
     item: "ROLEX 126711CHNR",
     price: 18450
    },
    {
     item: "PATEK 7118\/1R CHAMP",
     price: 54000
    },
    {
     item: "PATEK 7118\/1R WHITE",
     price: 54000
    },
    {
     item: "ROLEX 126234 36MM DJUST BLU DIAL FLU OYS",
     price: 8650
    },
    {
     item: "IWC IW500710 PORTUGIESER AUTOMATIC 42MM",
     price: 9398
    },
    {
     item: "ROLEX 279173 CHAMP STICK JUBILEE",
     price: 8595
    },
    {
     item: "ROLEX 228235 SUNDUST STRIPE MOTIF",
     price: 36650
    },
    {
     item: "ROLEX 126334  WIMBLEDON JUBILEE",
     price: 10850
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 20000
    },
    {
     item: "AUDEMARS PIGUET 263150R RGOLD ROYAL OAK",
     price: 53500
    },
    {
     item: "ROLEX 228235 WHITE ROMAN",
     price: 38600
    },
    {
     item: "OMEGA SEAMASTER 21030422004001 WHITE DIA",
     price: 4500
    },
    {
     item: "ROLEX YACHTMASTER 116622 BLUE DIAL",
     price: 13000
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3640
    },
    {
     item: "ROLEX SKYDWELLER 326235 SLATE DIAL",
     price: 41900
    },
    {
     item: "ROLEX 326933  WHITE DIAL",
     price: 17800
    },
    {
     item: "ROLEX 126200 WHITE  ROMAN JUBILEE",
     price: 7050
    },
    {
     item: "IWC IW377719 PILOT CHRONO SPITFIRE STEEL",
     price: 5500
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 1400
    },
    {
     item: "ROLEX 116610LV SUBMARINER HULK",
     price: 18600
    },
    {
     item: "CARTIER WSSA0029 SANTOS MIDSIZE",
     price: 5000
    },
    {
     item: "ROLEX DAYTONA 116503 CHAMPAGNE INDEX DIA",
     price: 19000
    },
    {
     item: "CARTIER SANTOS LARGE BLUE WSSA0030",
     price: 6750
    },
    {
     item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
     price: 6750
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 19500
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 12500
    },
    {
     item: "ROLEX  126660 BLUE JAMES CAMERON",
     price: 14500
    },
    {
     item: "ROLEX 126711CHNR",
     price: 18350
    },
    {
     item: "ROLEX EXPLORER 216570 POLAR WHITE",
     price: 10700
    },
    {
     item: "ROLEX 126334 WIMBELDON OYSTER",
     price: 10300
    },
    {
     item: "PATEK 5980\/1R",
     price: 174000
    },
    {
     item: "ROLEX SKYDWELLER 326238 CHAMPAGNE DIAL",
     price: 37000
    },
    {
     item: "ROLEX SKYDWELLER 326238 WHITE DIAL",
     price: 37000
    },
    {
     item: "ROLEX 116519 STEEL DIAL",
     price: 36000
    },
    {
     item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
     price: 15850
    },
    {
     item: "P\/O PATEK 5164A",
     price: 51175
    },
    {
     item: "ROLEX 126300 WHITE INDEX OYSTER",
     price: 7650
    },
    {
     item: "ROLEX 126300 WHITE ROMAN OYSTER",
     price: 7650
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 17650
    },
    {
     item: "ROLEX  228239 GREEN DIAL",
     price: 36500
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3725
    },
    {
     item: "TUDOR 79830 PEPSI ON STRAP",
     price: 3425
    },
    {
     item: "PATEK PHILIPPE NAUTILUS 5712R",
     price: 76000
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 19500
    },
    {
     item: "ROLEX 116588TBR TIGER",
     price: 125000
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 26500
    },
    {
     item: "ROLEX 226659",
     price: 28000
    },
   
    {
     item: "ROLEX 126333 CHAMPAGNE JUBILEE",
     price: 12000
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 12500
    },
    {
     item: "P\/O ROLEX 126331 SUNDUST JUBILEE",
     price: 12500
    },
    {
     item: "ROLEX 126331 CHOC INDEX JUBILEE",
     price: 12500
    },
    {
     item: "ROLEX 228235 SUNDUST ROMAN",
     price: 37500
    },
    {
     item: "ROLEX DAY-DATE MOTIF DIAL 228206",
     price: 52800
    },
    {
     item: "PATEK 5980\/1R",
     price: 158000
    },
    {
     item: "OLD ROLEX BOX",
     price: 150
    },
    {
     item: "DAVID OSCARSON TEAL KOI PEN",
     price: 1034
    },
    {
     item: "ROLEX BOX",
     price: 175
    },
    {
     item: "ROLEX 326934 SKYDWELLER WHITE DIAL",
     price: 18000
    },
    {
     item: "ROLEX 126331 CHOC DIAL OYSTER",
     price: 12000
    },
    {
     item: "ROLEX 116688",
     price: 40800
    },
    {
     item: "PATEK 5980\/1A BLUE",
     price: 93000
    },
    {
     item: "PATEK 5990\/1A",
     price: 99500
    },
    {
     item: "ROLEX 228238  WHITE ROMAN",
     price: 33850
    },
    {
     item: "ROLEX 116618LB SUBMARINER",
     price: 35750
    },
    {
     item: "AP ROYAL OAK 26331OR CHRONO BROWN STRAP",
     price: 40500
    },
    {
     item: "PATEK PHILIPPE AQUANAUT 5067A",
     price: 36000
    },
    {
     item: "PATEK 5524G",
     price: 39500
    },
    {
     item: "ROLEX 116619LB",
     price: 39000
    },
    {
     item: "TUDOR 79830RB BLACK BAY GMT",
     price: 3300
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 26750
    },
    {
     item: "ROLEX DAYTONA 116508 BLACK DIAMOND DIAL",
     price: 41800
    },
    {
     item: "ROLEX DAYTONA 116518 PAUL NEWMAN",
     price: 33000
    },
    {
     item: "PATEK 5168 GREEN STRAP",
     price: 450
    },
    {
     item: "ROLEX 115234 OYSTER PERPETUAL BLK DIAL",
     price: 8250
    },
    {
     item: "PATEK 5167R",
     price: 56500
    },
    {
     item: "ROLEX 116695SATS YMASTER TUTTI FRUITTI",
     price: 90000
    },
    {
     item: "ROLEX 228206 DAY DATE PLATINIUM BLU ROM",
     price: 53800
    },
    {
     item: "ROLEX DAYTONA 116515 PINK DIAMOND DIAL",
     price: 42500
    },
    {
     item: "ROLEX DAYTONA 116509 SILVER DIAL",
     price: 41000
    },
    {
     item: "ROLEX 126711CHNR",
     price: 18250
    },
    {
     item: "ROLEX 126622 BLUE DIAL",
     price: 13000
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 24500
    },
    {
     item: "TUDOR 79830RB BLACK BAY GMT",
     price: 3550
    },
    {
     item: "ROLEX 116519 STEEL DIAL",
     price: 35800
    },
    {
     item: "PATEK 5968A",
     price: 96000
    },
    {
     item: "ROLEX 326938 SKY DWELLER BLK DIAL",
     price: 46000
    },
    {
     item: "ROLEX SKYDWELLER 326235 CHOCOLATE DIAL",
     price: 42150
    },
    {
     item: "ROLEX 116506 PLAIN DIAL",
     price: 82500
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 7000
    },
    {
     item: "ROLEX 116619LB",
     price: 38500
    },
    {
     item: "PATEK  5711\/1R",
     price: 110000
    },
    {
     item: "PATEK 5712\/1A",
     price: 65000
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 15250
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 38200
    },
    {
     item: "ROLEX 326933 BLACK DIAL",
     price: 18500
    },
    {
     item: "ROLEX 126334 RHODIUM JUBILEE",
     price: 11000
    },
    {
     item: "ROLEX 126334  WIMBLEDON JUBILEE",
     price: 10500
    },
    {
     item: "ROLEX 126710 PEPSI JUBILEE",
     price: 18350
    },
    {
     item: "ROLEX CELLINI DUAL 50525 BLACK DIAL",
     price: 12500
    },
    {
     item: "ROLEX CELLINI TIME 50505 WHITE DIAL",
     price: 12000
    },
    {
     item: "ROLEX OYSTER PERPETUAL 277200 CANDY PINK",
     price: 6250
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 15400
    },
    {
     item: "PATEK PHILIPPE NAUTILUS 5712R",
     price: 60800
    },
    {
     item: "ROLEX 326938 SKY DWELLER BLK DIAL",
     price: 45650
    },
    {
     item: "CARTIER WSSA0029 SANTOS MIDSIZE",
     price: 5400
    },
    {
     item: "ROLEX 116505 BLACK DIAL",
     price: 41000
    },
    {
     item: "ROLEX 116518LN CHAMP AND BLACK",
     price: 36700
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 26750
    },
    {
     item: "ROLEX 116506 PLAIN DIAL",
     price: 83500
    },
    {
     item: "ROLEX  216570  BLACK DIAL",
     price: 9000
    },
    {
     item: "ROLEX 116519 STEEL DIAL",
     price: 34700
    },
    {
     item: "ROLEX 126600 sea dweller",
     price: 13000
    },
    {
     item: "ROLEX DAYTONA 116515 PINK ON BLACK",
     price: 34800
    },
    {
     item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
     price: 14800
    },
    {
     item: "ROLEX SUBMARINER 126618 BLUE",
     price: 37200
    },
    {
     item: "ROLEX 228235 SUNDUST ROMAN",
     price: 36950
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 15650
    },
    {
     item: "ROLEX 326934 SKYDWELLER WHITE DIAL",
     price: 18500
    },
    {
     item: "ROLEX SKYDWELLER 326935 CHOCOLATE INDEX",
     price: 52800
    },
    {
     item: "PATEK 5167R",
     price: 46750
    },
    {
     item: "ROLEX 278275 CHOC DD",
     price: 26500
    },
    {
     item: "ROLEX SKYDWELLER 326235 CHOCOLATE DIAL",
     price: 42750
    },
    {
     item: "ROLEX DAYTONA 116515 PINK ON BLACK",
     price: 34600
    },
    {
     item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
     price: 13000
    },
    {
     item: "ROLEX 116509 WGLD MOP DIAL",
     price: 44350
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 26500
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 17700
    },
    {
     item: "PATEK 5146G GREY DIAL",
     price: 32500
    },
    {
     item: "PATEK PHILIPPE 5205R BLACK",
     price: 42800
    },
    {
     item: "PATEK 5712\/1A",
     price: 82000
    },
    {
     item: "PATEK PHILIPPE NAUTILUS 5712R",
     price: 75000
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 12450
    },
    {
     item: "ROLEX 124300 OYSTER PERPETUAL RED",
     price: 9000
    },
    {
     item: "ROLEX 228238 DAY DATE SILVER DIAL",
     price: 34200
    },
    {
     item: "ROLEX 116518LN CHAMP AND BLACK",
     price: 36000
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 17700
    },
    {
     item: "ROLEX 124300 OYSTER PERPETUAL RED",
     price: 9000
    },
    {
     item: "ROLEX  126660 BLUE JAMES CAMERON",
     price: 15000
    },
    {
     item: "ROLEX 126334  WIMBLEDON JUBILEE",
     price: 11250
    },
    {
     item: "ROLEX 126334 BLUE INDEX JUBILEE",
     price: 11250
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 26000
    },
    {
     item: "ROLEX 226659",
     price: 28000
    },
    {
     item: "PATEK PHILIPPE LADIES AQUANAUT 5062\/450R",
     price: 197000
    },
    {
     item: "ROLEX 116509 BLU DIAL",
     price: 39500
    },
    {
     item: "ROLEX 116519 STEEL DIAL",
     price: 34700
    },
    {
     item: "ROLEX 126331  WIMBLEDON JUBILEE",
     price: 14250
    },
    {
     item: "ROLEX 126334 BLUE INDEX OYSTER",
     price: 10000
    },
    {
     item: "ROLEX 228235 GREEN ROMAN",
     price: 42500
    },
    {
     item: "TUDOR 79830RB BLACK BAY GMT",
     price: 3650
    },
    {
     item: "ROLEX 126710 PEPSI JUBILEE",
     price: 18100
    },
    {
     item: "ROLEX 126715CHNR",
     price: 37500
    },
    {
     item: "ROLEX 116500LN BLACK",
     price: 25500
    },
    {
     item: "ROLEX 116681 yacht master 2",
     price: 23200
    },
    {
     item: "ROLEX 126710 PEPSI JUBILEE",
     price: 18700
    },
    {
     item: "ROLEX 226659",
     price: 28400
    },
    {
     item: "ROLEX 126334 BLUE ROMAN OYSTER",
     price: 10000
    },
    {
     item: "ROLEX WARRANTY BOOKLET AND WALLET",
     price: 12.5
    },
    {
     item: "ROLEX 126600 sea dweller",
     price: 12700
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 27000
    },
    {
     item: "ROLEX YACHTMASTER 2 116680",
     price: 18400
    },
    {
     item: "PATEK 7010\/1R CHAMP",
     price: 53200
    },
    {
     item: "ROLEX 126200 WHITE  ROMAN JUBILEE",
     price: 5000
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 15700
    },
    {
     item: "ROLEX SUBMARINER 126618 BLACK DIAL",
     price: 37000
    },
    {
     item: "CARTIER BALLON BLEU DE CARTIER W69012Z4",
     price: 4795
    },
    {
     item: "PATEK 7010R  CHAMP",
     price: 30000
    },
    {
     item: "PATEK 7010R WHITE DIAL",
     price: 32000
    },
    {
     item: "PATEK 7118\/1R CHAMP",
     price: 52800
    },
    {
     item: "ROLEX 326935 SKYDWELLER RHODIUM ROSE",
     price: 51150
    },
    {
     item: "AUDEMARS PIGUET OFFSHORE SILVER 26400IO",
     price: 34400
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLK DIAL",
     price: 15000
    },
    {
     item: "ROLEX 126622 RHODIUM DIAL",
     price: 12500
    },
    {
     item: "ROLEX 124300 BLACK DIAL",
     price: 7000
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 26500
    },
    {
     item: "ROLEX 116500LN BLACK",
     price: 24500
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 19000
    },
    {
     item: "ROLEX YACHTMASTER 126655 PAVE DIAMOND",
     price: 42000
    },
    {
     item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
     price: 46500
    },
    {
     item: "ROLEX 126300 BLACK INDEX OYSTER 2",
     price: 7800
    },
    {
     item: "ROLEX 228238 CHAMP ROMAN",
     price: 36000
    },
    {
     item: "ROLEX 116518LN CHAMP AND BLACK",
     price: 36000
    },
    {
     item: "ROLEX 126331 SUNDUST JUBILEE",
     price: 13500
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3600
    },
    {
     item: "TUDOR 79830RB BLACK BAY GMT",
     price: 3550
    },
    {
     item: "ROLEX 124300 OYSTER PERPETUAL GREEN DIAL",
     price: 8450
    },
    {
     item: "ROLEX 116610LV SUBMARINER HULK",
     price: 19000
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK 26331ST BLACK",
     price: 33250
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 25000
    },
    {
     item: "ROLEX 126300 WIMBLEDON OYSTER",
     price: 9250
    },
    {
     item: "PATEK 7010R WHITE DIAL",
     price: 33650
    },
    {
     item: "PATEK PHILIPPE NAUTILUS 5712R",
     price: 74000
    },
    {
     item: "PATEK 5168G BLUE",
     price: 61000
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 15000
    },
    {
     item: "GLASHUTTE SERENADE 1-39-22-12-22-34",
     price: 9100
    },
    {
     item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
     price: 16800
    },
    {
     item: "ROLEX 116588TBR TIGER",
     price: 130000
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK 15202BA YG SLV",
     price: 50500
    },
    {
     item: "PATEK 5396G WHITE",
     price: 31000
    },
    {
     item: "ROLEX 126333 CHAMPAGNE JUBILEE",
     price: 12550
    },

    {
     item: "ROLEX 326933 BLACK DIAL",
     price: 19300
    },
    {
     item: "ROLEX 326933  WHITE DIAL",
     price: 17450
    },
    {
     item: "JAEGER LECOULTRE GEOPHYSIC Q8102520",
     price: 16450
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 26000
    },
    {
     item: "ROLEX 126300 BLUE STICK JUBILEE",
     price: 8400
    },
    {
     item: "ROLEX 116610LV SUBMARINER HULK",
     price: 18750
    },
    {
     item: "ROLEX 126331  WIMBLEDON JUBILEE",
     price: 13225
    },
    {
     item: "TUDOR 79030 BLACK BAY 58 ON STRAP",
     price: 3300
    },
   
    {
     item: "P\/O PATEK 5164A",
     price: 56000
    },
    {
     item: "ROLEX SKYDWELLER 326235 CHOCOLATE DIAL",
     price: 42500
    },
    {
     item: "PATEK 5726A-001",
     price: 59000
    },
    {
     item: "TUDOR 79830 PEPSI ON STRAP",
     price: 3700
    },
    {
     item: "PATEK 5712\/1A",
     price: 70500
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 19000
    },
    {
     item: "ROLEX 126711CHNR",
     price: 18000
    },
    {
     item: "ROLEX 228239 DAY DATE BLK DIAL",
     price: 34000
    },
    {
     item: "TUDOR 79830RB BLACK BAY GMT",
     price: 3850
    },
    {
     item: "ROLEX 116508 DAYTONA GREEN DIAL",
     price: 53150
    },
    {
     item: "RICHARD MILLE RM30 WHITE RUSH",
     price: 206000
    },
    {
     item: "ROLEX BOX",
     price: 203.39
    },
   
    {
     item: "PATEK PHILIPPE NAUTILUS 5711\/1A WHITE",
     price: 62700
    },
    {
     item: "PATEK 5396R BLUE BAUGETTE DIAL",
     price: 51500
    },
    {
     item: "ROLEX 228238 CHAMP ROMAN",
     price: 35050
    },
    {
     item: "ROLEX 228238 DAY DATE SILVER DIAL",
     price: 35050
    },
    {
     item: "ROLEX 126300  BLUE INDEX OYSTER 2",
     price: 8000
    },
    {
     item: "ROLEX 228238 DAY DATE SILVER DIAL",
     price: 35050
    },
    {
     item: "ROLEX 228238 CHAMP ROMAN",
     price: 35050
    },
    {
     item: "ROLEX 178273 SILVER DIAMOND DIAL",
     price: 10485
    },
    {
     item: "TUDOR 79830 PEPSI ON STRAP",
     price: 2975
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 25000
    },
    {
     item: "ROLEX 126331  WIMBLEDON JUBILEE",
     price: 13100
    },
    {
     item: "ROLEX PO 16618 SUBMARINER CHAMP DIAL",
     price: 22500
    },
    {
     item: "CARTIER SANTOS LARGE MODEL",
     price: 6900
    },
    {
     item: "PATEK 5146J SLATE DIAL",
     price: 41700
    },
    {
     item: "PATEK 5726A-001",
     price: 41189
    },
    {
     item: "PATEK 5930G COMPLICATIONS WORLD TIME",
     price: 70000
    },
    {
     item: "PATEK 7300\/1A BLUE",
     price: 26080
    },
    {
     item: "ROLEX 326934 SKYDWELLER WHITE DIAL",
     price: 18750
    },
    {
     item: "ROLEX 116506 PLAIN DIAL",
     price: 81500
    },
    {
     item: "PATEK 7300\/1200R TWENTY 4",
     price: 31000
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 15500
    },
    {
     item: "ROLEX DAYTONA 116515 PINK ON BLACK",
     price: 34500
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 3700
    },
    {
     item: "ROLEX DAYTONA BLACK DIAL 116520",
     price: 17400
    },
    {
     item: "ROLEX DAYTONA BLACK DIAL 116520",
     price: 17400
    },
    {
     item: "PATEK PHILIPPE NAUTILUS 7118 DIAMOND",
     price: 47500
    },
    {
     item: "ROLEX DAYTONA 116503 WHITE MOP DIAMOND",
     price: 23600
    },
    {
     item: "ROLEX DAYTONA 116508 PAUL NEWMAN BLACK",
     price: 39000
    },
    {
     item: "ROLEX 126231 RHODIUM JUB",
     price: 11300
    },
    {
     item: "ROLEX 126231 RHODIUM JUB",
     price: 10350
    },
    {
     item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
     price: 14500
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 18800
    },
    {
     item: "ROLEX 116519 STEEL DIAL",
     price: 34500
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 6800
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 18200
    },
    {
     item: "ROLEX 126233 DATEJUST WHITE ROMAN",
     price: 11500
    },
    {
     item: "ROLEX 126334 BLUE ROMAN OYSTER",
     price: 10200
    },
    {
     item: "PANERAI PAM1313 LUMINOR MARINA",
     price: 5825
    },
    {
     item: "TUDOR 79030 BLACK BAY 58 ON STRAP",
     price: 3275
    },
    {
     item: "ROLEX 116500 DAYTONA WHITE DIAL",
     price: 26000
    },
    {
     item: "ROLEX 116400GV MILGUASS BLACK",
     price: 8350
    },
    {
     item: "ROLEX DAYTONA 116509 SILVER DIAL",
     price: 25500
    },
    {
     item: "ROLEX 326939  CREAM IVORY",
     price: 29180
    },
    {
     item: "ROLEX 126300 WHITE STICK JUBILEE",
     price: 8050
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 15500
    },
    {
     item: "ROLEX 116688",
     price: 41000
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 7000
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
     price: 15500
    },
    {
     item: "ROLEX 126334  SILVER JUBILEE",
     price: 9900
    },
    {
     item: "ROLEX 326935 SKYDWELLER RHODIUM ROSE",
     price: 51350
    },
    {
     item: "ROLEX 116506 HEAD ONLY",
     price: 47500
    },
   
    {
     item: "ROLEX 116621 YMASTER BLK DIAL TWO TONE",
     price: 12000
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK 26331ST BLUE",
     price: 39300
    },
    {
     item: "P\/O PATEK 5164A",
     price: 52000
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 12400
    },
    {
     item: "ROLEX 116681 yacht master 2",
     price: 24000
    },
    {
     item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
     price: 16000
    },
    {
     item: "OMEGA DIVER 210-30-42-20-01-001",
     price: 3900
    },
    {
     item: "ROLEX YACHTMASTER 2 116680",
     price: 13150
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 6700
    },
    {
     item: "ROLEX 116505 CHOC DIAL",
     price: 41000
    },
    {
     item: "PATEK 7010R  CHAMP",
     price: 31500
    },
    {
     item: "ROLEX 126231 RHODIUM JUB",
     price: 11300
    },
    {
     item: "ROLEX 178273 BLK MOP DIAMOND",
     price: 12000
    },
    {
     item: "ROLEX 126715CHNR",
     price: 37250
    },
    {
     item: "ROLEX 228348 BLACK DIAMOND DIAL",
     price: 45000
    },
    {
     item: "ROLEX 126300 WIMBLEDON JUBILEE",
     price: 8600
    },
    {
     item: "ROLEX 126715CHNR",
     price: 37250
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 6700
    },
    {
     item: "ROLEX 126334 SILVER OYSTER",
     price: 9700
    },
    {
     item: "PANERAI LUMINOR 8 DAYS PAM00510",
     price: 4752
    },
    {
     item: "ROLEX 124060LN",
     price: 11800
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 13225
    },
    {
     item: "PANERAI PAM00425",
     price: 5760
    },
    {
     item: "ROLEX 126334  BLUE ROMAN JUB",
     price: 10000
    },
    {
     item: "ROLEX 116515 CHOC DIAL",
     price: 34000
    },
    {
     item: "ROLEX 116519 STEEL DIAL",
     price: 34000
    },
    {
     item: "ROLEX DATEJUST 278273 SILVER DIAM JUBILE",
     price: 12000
    },
    {
     item: "ROLEX 126334 BLUE INDEX OYSTER",
     price: 9900
    },
    {
     item: "ROLEX 126334 WHITE INDEX JUB",
     price: 10000
    },
    {
     item: "ROLEX 126334 BLACK OYSTER",
     price: 9650
    },
    {
     item: "BELL AND ROSS BRV293-BLU-ST\/SST",
     price: 2300
    },
    {
     item: "116503 BLACK MOP DIAMOND DIAL",
     price: 23500
    },
    {
     item: "ROLEX 116506 PLAIN DIAL",
     price: 78500
    },
    {
     item: "PATEK 5167A",
     price: 45175
    },
    {
     item: "ROLEX 116713LN GMT MASTER II TWO TONE",
     price: 14500
    },
    {
     item: "ROLEX 126334 BLUE ROMAN OYSTER",
     price: 9650
    },
    {
     item: "ROLEX 126618LB 41MM SUBMARINER YELLOW",
     price: 37500
    },
    {
     item: "ROLEX 126622 BLUE DIAL",
     price: 12500
    },
    {
     item: "PATEK 5172G COMPLICATIONS",
     price: 55250
    },
    {
     item: "ROLEX 116681 yacht master 2",
     price: 19000
    },
    {
     item: "ROLEX 226659",
     price: 28000
    },
    {
     item: "AUDEMARS 26320 SILVER DIAL ON BRCELET",
     price: 27500
    },
    {
     item: "ROLEX 228235 WHITE ROMAN",
     price: 36600
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 13600
    },
    {
     item: "ROLEX 116618LB SUBMARINER",
     price: 33500
    },
    {
     item: "CARTIER SANTOS LARGE ADLC WSSA0037",
     price: 6800
    },
    {
     item: "ROLEX 126334 RHODIUM OYSTER",
     price: 9600.34
    },
    {
     item: "ROLEX 279173 CHAMP ROMN JUBILEE",
     price: 8308.5
    },
    {
     item: "ROLEX 126300 BLUE ROMAN OYSTER",
     price: 7714.23
    },
    {
     item: "ROLEX 126334 BLUE INDEX JUBILEE",
     price: 10400
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 36000
    },
    {
     item: "IWC IW327006",
     price: 3248.5
    },
    {
     item: "IWC IW503301",
     price: 29181
    },
    {
     item: "116503 BLACK MOP DIAMOND DIAL",
     price: 23500
    },
    {
     item: "PATEK 5164R",
     price: 75000
    },
    {
     item: "ROLEX 277200 OYSTER PERPETUAL ORANGE DIA",
     price: 5400
    },
    {
     item: "ROLEX 277200 OYSTER PREPETUAL YELLOW DIA",
     price: 5300
    },
    {
     item: "ROLEX 126300 RHODIUM INDEX JUBILE",
     price: 8300
    },
    {
     item: "PRE OWNED ROLEX 326935 RHODIUM",
     price: 49000
    },
    {
     item: "AUDEMARS PIGUET 15400OR BLACK DIAL STRAP",
     price: 32500
    },
    {
     item: "ROLEX 126622 BLUE DIAL",
     price: 12000
    },
    {
     item: "ROLEX 126300 BLUE ROMAN JUB",
     price: 8400
    },
    {
     item: "ROLEX 228235 SUNDUST ROMAN",
     price: 36700
    },
    {
     item: "ROLEX 126300 BLUE STICK JUBILEE",
     price: 8400
    },
    {
     item: "ROLEX 126715CHNR",
     price: 37250
    },
    {
     item: "ROLEX 116400GV BLUE DIAL",
     price: 9150
    },
    {
     item: "ROLEX 126655 BLACK DIAL",
     price: 25500
    },
    {
     item: "ROLEX 126300 WHITE ROMAN JUBILE",
     price: 8300
    },
    {
     item: "ROLEX 178240 OYSTER SILVER",
     price: 5350
    },
    {
     item: "ROLEX 126331 CHOCOLATE DIAMOND OYSTER",
     price: 13300
    },
    {
     item: "ROLEX 126331 SUNDUST DIAMOND OYSTER",
     price: 13350
    },
    {
     item: "ROLEX 126334 BLACK INDEX JUB",
     price: 9900
    },
    {
     item: "ROLEX 326933  WHITE DIAL",
     price: 17200
    },
    {
     item: "ROLEX 124300 OYSTER PREP YELLOW DIA",
     price: 7900
    },
    {
     item: "AP ROYAL OAK 26331OR CHRONO BROWN STRAP",
     price: 38500
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK 26320OR SILVER",
     price: 38500
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK SILVER STRAP",
     price: 32000
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 18500
    },
    {
     item: "ROLEX 126710 PEPSI JUBILEE",
     price: 15000
    },
    {
     item: "ROLEX 326938 SKY DWELLER BLK DIAL",
     price: 46400
    },
    {
     item: "ROLEX 126715CHNR",
     price: 37000
    },
    {
     item: "ROLEX 124300 OYSTER PERP GREEN DIAL 41MM",
     price: 7900
    },
    {
     item: "ROLEX 126613 SUBMARINER 2020 BLK DIAL",
     price: 15000
    },
    {
     item: "ROLEX 116500LN BLACK",
     price: 22200
    },
    {
     item: "ROLEX 116610LV SUBMARINER HULK",
     price: 17200
    },
    {
     item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
     price: 14250
    },
    {
     item: "ROLEX 126334 BLACK OYSTER",
     price: 9600
    },
    {
     item: "ROLEX 126334 BLUE ROMAN OYSTER",
     price: 9600
    },
    {
     item: "ROLEX 126334 RHODIUM OYSTER",
     price: 9600
    },
    {
     item: "ROLEX 126334 WHITE INDEX OYSTER",
     price: 9600
    },
    {
     item: "ROLEX 126334 WHITE ROMAN OYSTER",
     price: 9600
    },
    {
     item: "ROLEX 126610LV KERMIT",
     price: 19000
    },
    {
     item: "ROLEX 116610LN SUBMARINER DATE",
     price: 13000
    },
    {
     item: "ROLEX 124060LN",
     price: 11800
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 13500
    },
    {
     item: "ROLEX 116505 BLACK DIAL",
     price: 40250
    },
    {
     item: "ROLEX 116618LN",
     price: 33000
    },
    {
     item: "ROLEX 126719 BLRO  BLUE DIAL",
     price: 38250
    },
    {
     item: "ROLEX 228239 BLUE ROMAN DIAL",
     price: 32400
    },
    {
     item: "PATEK 5980\/1A BLUE",
     price: 95000
    },
    {
     item: "ROLEX 326935 SUNDUST",
     price: 52000
    },
    {
     item: "P\/O PATEK 5164A",
     price: 53500
    },
    {
     item: "CARTIER WSSA0029 SANTOS MIDSIZE",
     price: 5600
    },
    {
     item: "P\/O PATEK 7010\/1R WHITE DIAL",
     price: 42500
    },
    {
     item: "PATEK 7010R  CHAMP",
     price: 32500
    },
    {
     item: "ROLEX 278271 PINK DIAL IV OYSTER",
     price: 10400
    },
    {
     item: "ROLEX 326934 SKYDWELLER WHITE DIAL",
     price: 18250
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 12400
    },
    {
     item: "ROLEX 279171 SILVER DIAMOND DIAL IX JUB",
     price: 11205
    },
    {
     item: "ROLEX 228235 WHITE ROMAN",
     price: 38000
    },
    {
     item: "IWC PORTOFINO IW356511 ROSE GOLD 40MM",
     price: 8236
    },
    {
     item: "IWC PORTUGIESER IW503301 WHITE GOLD",
     price: 29181
    },
    {
     item: "IWC SPITFIRE 39MM STAINLESS IW326803",
     price: 3333
    },
    {
     item: "ROLEX 279178 CHAMP ROMAN",
     price: 18487.5
    },
   
    {
     item: "ROLEX 126300 WHITE INDEX OYSTER",
     price: 7500
    },
    {
     item: "279160 WHITE ROMAN JUBILEE PRE OWNED",
     price: 3950
    },
    {
     item: "ROLEX 126300 BLUE STICK JUBILEE",
     price: 8350
    },
    {
     item: "ROLEX 126333 SILVER JUBILEE",
     price: 12400
    },
    {
     item: "ROLEX 326938 SKY DWELLER CHAMP DIAL",
     price: 46500
    },
    {
     item: "P\/O ROLEX 126331 SUNDUST JUBILEE",
     price: 11300
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 12400
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 12400
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 12400
    },
    {
     item: "CFB MANERO FLYBACK CHRONO",
     price: 3500
    },
    {
     item: "GIRARD PERREGAUX LAUREATO CHRONOGRAPH",
     price: 9000
    },
    {
     item: "ROLEX 226659",
     price: 28400
    },
    {
     item: "ROLEX 279171 CHOC DIAMOND DIAL IX JUBILE",
     price: 11205
    },
    {
     item: "ROLEX 228235 GREEN ROMAN",
     price: 42000
    },
    {
     item: "ROLEX 116505 CHOC DIAL",
     price: 40500
    },
    {
     item: "ROLEX 116618LB SUBMARINER",
     price: 33500
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 18200
    },
    {
     item: "ROLEX 116515 CHOC DIAL",
     price: 34000
    },
    {
     item: "ROLEX 116518LN CHAMP AND BLACK",
     price: 34000
    },
    {
     item: "ROLEX 116506 PLAIN DIAL",
     price: 77800
    },
    {
     item: "ROLEX 126334 WIMBELDON OYSTER",
     price: 10300
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 12400
    },
    {
     item: "ROLEX 116400GV BLUE DIAL",
     price: 8900
    },
    {
     item: "ROLEX 124300 OYSTER PERP GREEN DIAL 41MM",
     price: 7800
    },
    {
     item: "ROLEX 126334 BLACK INDEX JUB",
     price: 10000
    },
    {
     item: "ROLEX 126334 BLUE INDEX OYSTER",
     price: 10250
    },
    {
     item: "ROLEX 116505 PINK DIAMOND DIAL",
     price: 46000
    },
    {
     item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
     price: 14100
    },
    {
     item: "PATEK 5990\/1A",
     price: 96000
    },
    {
     item: "ROLEX 126300 WHITE ROMAN JUBILE",
     price: 8400
    },
    {
     item: "ROLEX 126331 CHOCOLATE DIAMOND OYSTER",
     price: 14250
    },
    {
     item: "PATEK 7010R  CHAMP",
     price: 32500
    },
    {
     item: "ROLEX 116505 BLACK DIAL",
     price: 40000
    },
    {
     item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
     price: 87000
    },
    {
     item: "ROLEX 126334 WHITE ROMAN OYSTER",
     price: 9650
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 12350
    },
    {
     item: "278271 PINK DIMOAND DIAL JUBILEE",
     price: 11176
    },
    {
     item: "TUDOR 79830RB BLACK BAY GMT",
     price: 3500
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 37950
    },
    {
     item: "ROLEX 126334 WHITE ROMAN JUB",
     price: 10200
    },
    {
     item: "PATEK 5146G GREY DIAL",
     price: 33500
    },
    {
     item: "ROLEX 126301  WIMBELDON JUB",
     price: 12900
    },
    {
     item: "ROLEX CELLINI COIN WATCH",
     price: 23500
    },
    {
     item: "ROLEX BOX",
     price: 200
    },
    {
     item: "ROLEX 116505 BLACK DIAL",
     price: 40000
    },
    {
     item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
     price: 87000
    },
    {
     item: "ROLEX 126334 BLUE INDEX JUBILEE",
     price: 10550
    },
    {
     item: "PATEK 5167R",
     price: 50500
    },
    {
     item: "PATEK 5968A",
     price: 95000
    },
    {
     item: "ROLEX 326933 BLACK DIAL",
     price: 18500
    },
    {
     item: "ROLEX 126333 CHAMPAGNE JUBILEE",
     price: 12650
    },
    {
     item: "PATEK 7118\/1R-010 CHAMP",
     price: 48500
    },
    {
     item: "ROLEX 126231 BLACK DIAM JUBILEE",
     price: 12276
    },
    {
     item: "PATEK  5711\/1R",
     price: 97500
    },
    {
     item: "ROLEX 116610LV SUBMARINER HULK",
     price: 16600
    },
    {
     item: "ROLEX 228238  SILVER HONEYCOMB",
     price: 34000
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 15100
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 23650
    },
    {
     item: "RICHARD MILLE11-01 WHITE GOLD",
     price: 142000
    },
    {
     item: "ROLEX 116506 PLAIN DIAL",
     price: 76800
    },
    {
     item: "ROLEX 116509 SILVER DIAL",
     price: 38500
    },
    {
     item: "ROLEX 116505 PINK DIAMOND DIAL",
     price: 46500
    },
    {
     item: "ROLEX 116506 PLAIN DIAL",
     price: 76800
    },
    {
     item: "ROLEX 116505 CHOC DIAL",
     price: 40500
    },
    {
     item: "ROLEX 116509 WGLD MOP DIAL",
     price: 44000
    },
    {
     item: "ROLEX 126715CHNR",
     price: 37000
    },
    {
     item: "ROLEX 116610LV SUBMARINER HULK",
     price: 19500
    },
    {
     item: "ROLEX 124060LN",
     price: 13500
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 6900
    },
    {
     item: "ROLEX 228235 SUNDUST BAUGETTES",
     price: 40500
    },
    {
     item: "ROLEX 116506 PLAIN DIAL",
     price: 76800
    },
    {
     item: "P\/O ROLEX 326934 BLU",
     price: 22500
    },
    {
     item: "ROLEX YACHTMASTER 2 116680",
     price: 17700
    },
    {
     item: "ROLEX  116710LN GMT MASTER",
     price: 13000
    },
    {
     item: "ROLEX 228235 SUNDUST BAUGETTES",
     price: 38700
    },
    {
     item: "ROLEX 228238 CHAMP ROMAN 2",
     price: 34000
    },
    {
     item: "ROLEX 126300 WHITE ROMAN OYSTER",
     price: 7850
    },
    {
     item: "ROLEX 126334  BLUE ROMAN JUB",
     price: 10350
    },
    {
     item: "ROLEX 126334 BLUE ROMAN OYSTER",
     price: 9800
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 23250
    },
    {
     item: "ROLEX 116681 yacht master 2",
     price: 23200
    },
    {
     item: "ROLEX 326933  WHITE DIAL",
     price: 17600
    },
    {
     item: "ROLEX 278273 GREEN ROMN JUBILEE",
     price: 10516
    },
    {
     item: "ROLEX 126334 BLK DIAMOND DIAL JUB",
     price: 11850
    },
    {
     item: "ROELX 326934 BLACK DIAL",
     price: 18950
    },
    {
     item: "ROLEX 279171 CHOCO DIAM JUBILEE",
     price: 10384
    },
    {
     item: "ROLEX 126715CHNR",
     price: 37000
    },
    {
     item: "ROLEX 116506 PLAIN DIAL",
     price: 78500
    },
    {
     item: "ROLEX 326933 BLACK DIAL",
     price: 18350
    },
    {
     item: "ROLEX 126622 BLUE DIAL",
     price: 12000
    },
    {
     item: "ROLEX 126300  BLACK INDEX OYSTER",
     price: 7650
    },
    {
     item: "ROLEX 126300 RHODIUM OYSTER",
     price: 7850
    },
    {
     item: "PATEK 5980\/1R",
     price: 145000
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 13500
    },
    {
     item: "ROLEX 126300 WIMBLEDON JUBILEE",
     price: 8000
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK 26331ST BLACK",
     price: 28800
    },
    {
     item: "ROLEX 126331 CHOC DIAL OYSTER",
     price: 12650
    },
    {
     item: "ROLEX 126300 SILVER JUBILEE",
     price: 8000
    },
    {
     item: "ROLEX 126300 SILVER OYSTER",
     price: 7400
    },
    {
     item: "ROLEX 218235 CONCENTRIC DIAL",
     price: 41500
    },
    {
     item: "ROLEX 126300  BLACK INDEX OYSTER",
     price: 7800
    },
    {
     item: "ROLEX 126300 BLUE ROMAN OYSTER",
     price: 7800
    },
    {
     item: "ROLEX  216570  BLACK DIAL",
     price: 8900
    },
    {
     item: "ROLEX 126334 BLACK OYSTER",
     price: 9900
    },
    {
     item: "ROLEX 126334 BLUE INDEX OYSTER",
     price: 9900
    },
    {
     item: "ROLEX 126334 RHODIUM OYSTER",
     price: 9900
    },
    {
     item: "ROLEX 126334 WHITE INDEX OYSTER",
     price: 9900
    },
    {
     item: "ROLEX 126334 WHITE ROMAN JUB",
     price: 10100
    },
    {
     item: "ROLEX 116613LN 2",
     price: 14500
    },
    {
     item: "ROLEX 126710 PEPSI JUBILEE",
     price: 18150
    },
    {
     item: "PATEK 5164R",
     price: 68000
    },
    {
     item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
     price: 82500
    },
    {
     item: "ROLEX 116505 CHOC DIAL",
     price: 39500
    },
    {
     item: "ROLEX 126334 BLACK INDEX JUB",
     price: 10000
    },
    {
     item: "ROLEX 126334 BLACK OYSTER",
     price: 9650
    },
    {
     item: "ROLEX 126334 BLUE INDEX JUBILEE",
     price: 10300
    },
    {
     item: "ROLEX 126334 RHODIUM JUBILEE",
     price: 10150
    },
    {
     item: "ROLEX 116509 SILVER DIAL",
     price: 39350
    },
    {
     item: "ROLEX 126300 WHITE INDEX OYSTER",
     price: 7250
    },
    {
     item: "ROLEX 226659",
     price: 28250
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 12800
    },
    
    {
     item: "ROLEX 126331  WIMBLEDON JUBILEE",
     price: 12800
    },
    {
     item: "ROLEX 116619LB",
     price: 32000
    },
    {
     item: "ROLEX 116505 PINK DIAL",
     price: 36000
    },
    {
     item: "ROLEX 116518 BLACK",
     price: 29500
    },
    {
     item: "ROLEX 116610LV SUBMARINER HULK",
     price: 16000
    },
    {
     item: "ROLEX 116509 BLU DIAL",
     price: 36000
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 23200
    },
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 17500
    },
    {
     item: "ROLEX 116515 CHOC DIAL",
     price: 31500
    },
    {
     item: "ROLEX 116613LB",
     price: 14100
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 6500
    },
    {
     item: "ROLEX 116618LN",
     price: 28300
    },
    {
     item: "ROLEX 177200 GREY DIAL",
     price: 4350
    },
    {
     item: "P\/O PATEK 5968A",
     price: 82500
    },
    {
     item: "ROLEX 116610LV SUBMARINER HULK",
     price: 19700
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 12700
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK 26331ST WHITE",
     price: 27300
    },
    {
     item: "PATEK PHILIPPE 5205R BLACK",
     price: 38500
    },
    {
     item: "116503 BLACK MOP DIAMOND DIAL",
     price: 23000
    },
    {
     item: "ROLEX 116519 STEEL DIAL",
     price: 33900
    },
    {
     item: "ROLEX 116519 MOP DIA",
     price: 35400
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 6700
    },
    {
     item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
     price: 14000
    },
    {
     item: "PATEK 5167R",
     price: 40000
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 18100
    },
    
    {
     item: "ROLEX  126660 BLUE JAMES CAMERON",
     price: 14800
    },
    {
     item: "ROLEX 126711CHNR",
     price: 18240
    },
   
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 37250
    },
    {
     item: "ROLEX 126300 RHODIUM INDEX JUBILE",
     price: 8550
    },
    {
     item: "P\/O ROLEX 179159 MOP DIAMOND DIAL",
     price: 13700
    },
    {
     item: "ROLEX  228239 GREEN DIAL",
     price: 36000
    },
    {
     item: "ROLEX 126333 WIMBLEDON JUB",
     price: 12900
    },
    {
     item: "ROLEX 326933 BLACK DIAL",
     price: 18150
    },
    
    {
     item: "ROLEX 126334 BLUE INDEX JUBILEE",
     price: 10100
    },
    {
     item: "ROLEX 126334 WHITE INDEX JUB",
     price: 10000
    },
    {
     item: "PATEK 5167\/1A",
     price: 34250
    },
    {
     item: "AUDEMARS PIGUET 15450ST SILVER BRACELET",
     price: 21500
    },
    {
     item: "ROLEX 126719BLRO MEOTERITE DIAL",
     price: 49175
    },
    {
     item: "ROLEX 126334 BLUE ROMAN OYSTER",
     price: 10200
    },
    {
     item: "RICHARD MILLE RM11-01 ROSE GOLD",
     price: 148000
    },
    {
     item: "PATEK 5980\/1R",
     price: 128000
    },
    {
     item: "PATEK 5168G BLUE",
     price: 59000
    },
    {
     item: "ROLEX 228235 SUNDUST STRIPE MOTIF",
     price: 36300
    },
    {
     item: "AP ROYAL OAK 26331OR CHRONO BROWN STRAP",
     price: 39500
    },
    {
     item: "ROLEX 116505 CHOC DIAL",
     price: 39800
    },
    {
     item: "ROLEX 126333 WIMBEL OYSTER",
     price: 12250
    },
    {
     item: "ROLEX 126300 WHITE ROMAN JUBILE",
     price: 8000
    },
    {
     item: "ROLEX 116619LB",
     price: 34000
    },
    {
     item: "ROLEX 228348 BLACK DIAMOND DIAL",
     price: 42600
    },
    {
     item: "ROLEX 126233 CHAMP OYSTER",
     price: 9725
    },
    {
     item: "ROLEX 126622 BLUE DIAL",
     price: 12000
    },
    {
     item: "ROELX 326934 BLACK DIAL",
     price: 18950
    },
    {
     item: "ROLEX 126300  BLUE INDEX OYSTER 2",
     price: 8050
    },
    {
     item: "RICHARD MILLE RM11-01 TITANIUM",
     price: 122500
    },
    {
     item: "ROLEX 126334 WIMBELDON OYSTER",
     price: 10200
    },
    {
     item: "ROLEX 126331  WIMBLEDON JUBILEE",
     price: 13500
    },
    {
     item: "ROLEX 126334 BLACK OYSTER",
     price: 9400
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 12250
    },
    {
     item: "ROLEX 126300 WIMBLEDON OYSTER",
     price: 8200
    },
    {
     item: "ROLEX 126334  BLUE ROMAN JUB",
     price: 10350
    },
    {
     item: "ROLEX 116500LN BLACK",
     price: 23200
    },
    {
     item: "ROLEX 116400GV MILGUASS BLACK",
     price: 8200
    },
    {
     item: "ROLEX 126334 BLUE INDEX OYSTER",
     price: 9950
    },
    {
     item: "ROLEX 126334 WHITE ROMAN OYSTER",
     price: 9500
    },
    {
     item: "ROLEX 126600 sea dweller",
     price: 13500
    },
    {
     item: "PATEK 5980\/1R",
     price: 149000
    },
    
    {
     item: "PATEK 7118\/1R WHITE",
     price: 47600
    },
    {
     item: "ROLEX 126300 BLUE ROMAN JUB",
     price: 8200
    },
    {
     item: "ROLEX 279173 SLVR ROMAN JUBILEE",
     price: 8795
    },
    {
     item: "ROLEX 116505 CHOC DIAL",
     price: 39500
    },
    {
     item: "ROLEX 126334 BLUE INDEX OYSTER",
     price: 10100
    },
    {
     item: "ROLEX 126300 BLUE ROMAN OYSTER",
     price: 7850
    },
    {
     item: "ROLEX 126334 WHITE ROMAN OYSTER",
     price: 9450
    },
    {
     item: "ROLEX 126333 CHAMP DIAMOND JUBILEE",
     price: 13500
    },
    {
     item: "ROLEX 126334 BLUE INDEX JUBILEE",
     price: 10400
    },
    {
     item: "TUDOR 79030N BLACK BAY 58",
     price: 4000
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK OFFSHORE 26400",
     price: 21600
    },
    {
     item: "ROLEX  216570  BLACK DIAL",
     price: 8500
    },
    {
     item: "ROLEX 116613LB",
     price: 14000
    },
    {
     item: "AUDEMARS PIGUET 15500ST GREY DIAL",
     price: 29000
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK 26331ST BLUE",
     price: 33500
    },
    {
     item: "PATEK PHILIPPE NAUTILUS 5712R",
     price: 59500
    },
    {
     item: "ROLEX 126331  WIMBLEDON JUBILEE",
     price: 13700
    },
    {
     item: "ROLEX 126331 CHOCOLATE DIAMOND JUB",
     price: 14250
    },
    {
     item: "ROLEX 116528 RACE BLU DIAL",
     price: 30600
    },
    {
     item: "ROLEX 116528 RACE BLU DIAL",
     price: 31200
    },
    {
     item: "ROLEX 126710 BLNR JUBILEE",
     price: 14500
    },
    {
     item: "ROLEX 126300  RHODIUM OYSTER 2",
     price: 8200
    },
    {
     item: "ROLEX 326938 SKY DWELLER CHAMP DIAL",
     price: 44500
    },
    {
     item: "AUDEMARS PIGUET 26320OR ROYAL OAK BLACK",
     price: 36000
    },
   
    {
     item: "ROLEX 116503  BLACK DIAL",
     price: 17800
    },
    {
     item: "ROLEX  126660 BLACK sea dweller",
     price: 11800
    },
    {
     item: "ROLEX 1675 GMT VINTAGE",
     price: 7000
    },
    {
     item: "ROLEX 126300 WHITE ROMAN OYSTER",
     price: 7900
    },
    {
     item: "CARTIER SANTOS ROSE GOLD WGSA0008",
     price: 27250
    },
    {
     item: "ROLEX 116519 MOP DIA",
     price: 35000
    },
    
    {
     item: "ROLEX 126300 SILVER OYSTER",
     price: 7550
    },
    {
     item: "ROLEX 126334 BLUE INDEX JUBILEE",
     price: 10250
    },
    {
     item: "ROLEX 116613LN",
     price: 13900
    },
    {
     item: "ROLEX 228235 WHITE ROMAN",
     price: 35800
    },
    {
     item: "ROLEX 126333 BLACK OYSTER",
     price: 11340
    },
    {
     item: "ROLEX 116505 BLACK DIAL",
     price: 38500
    },
    {
     item: "PATEK 5320G",
     price: 52300
    },
    {
     item: "ROLEX 126334 BLUE ROMAN OYSTER",
     price: 10500
    },
    {
     item: "ROLEX 178273 BLK MOP DIAMOND",
     price: 12000
    },
    {
     item: "ROLEX 278271 CHOCO DIAMOND JUBI",
     price: 11000
    },
    {
     item: "ROLEX 278273  DRK GRY ROMAN JUB",
     price: 10000
    },
    {
     item: "ROLEX 279171 CHOCO ROMAN JUBILE",
     price: 8500
    },
    {
     item: "ROLEX 279171 WHITE ROMAN JUBILE",
     price: 8500
    },
    {
     item: "ROLEX 126334 WIMBELDON OYSTER",
     price: 9150
    },
    {
     item: "ROLEX 126715CHNR",
     price: 36500
    },
    {
     item: "ROLEX 326935 SKYDWELLER RHODIUM ROSE",
     price: 47500
    },
    {
     item: "ROLEX 126715CHNR",
     price: 36000
    },
    {
     item: "ROLEX 116618LB SUBMARINER",
     price: 32000
    },
    {
     item: "ROLEX 326933  WHITE DIAL",
     price: 18000
    },
    {
     item: "ROLEX 126300 RHODIUM INDEX JUBILE",
     price: 8100
    },
    {
     item: "ROLEX 126334  SILVER JUBILEE",
     price: 10000
    },
    {
     item: "ROLEX 126334 BLUE INDEX JUBILEE",
     price: 10250
    },
    {
     item: "ROLEX 126334 RHODIUM JUBILEE",
     price: 10100
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 36500
    },
   
    {
     item: "ROLEX 126334 BLUE INDEX JUBILEE",
     price: 10250
    },
    {
     item: "ROLEX 126334 BLUE INDEX OYSTER",
     price: 10000
    },
    {
     item: "ROLEX  126660 BLUE JAMES CAMERON",
     price: 14500
    },
    {
     item: "ROLEX 116518LN CHAMP AND BLACK",
     price: 33500
    },
    {
     item: "ROLEX YACHTMASTER 2 116680",
     price: 17000
    },
    {
     item: "ROLEX 116613LN 2",
     price: 13800
    },
    {
     item: "ROLEX 126331 SUNDUST DIAMOND JUBILEE",
     price: 14100
    },
    {
     item: "ROELX 326934 BLACK DIAL",
     price: 19000
    },
    {
     item: "ROLEX 228238 BLACK DD",
     price: 36000
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK 26331ST WHITE",
     price: 27500
    },
    {
     item: "ROLEX 126331  WIMBLEDON OYSTER",
     price: 12500
    },
    {
     item: "PATEK 5712\/1A",
     price: 67000
    },
    {
     item: "ROLEX 126334 WIMBELDON OYSTER",
     price: 10200
    },
    {
     item: "ROLEX 126715CHNR",
     price: 36000
    },
    {
     item: "ROLEX 116613LB",
     price: 14100
    },
    {
     item: "PATEK  5711\/1R",
     price: 93000
    },
    {
     item: "ROLEX  228239 BLACK DIAMOND DIAL",
     price: 37500
    },
    {
     item: "ROLEX 228238  WHITE ROMAN",
     price: 33500
    },
    {
     item: "ROLEX 278271 MOP DIA JUBILEE",
     price: 13072
    },
    {
     item: "ROLEX 126333 WIMBEL OYSTER",
     price: 12900
    },
    {
     item: "ROLEX 228238 CHAMP ROMAN",
     price: 33500
    },
    {
     item: "ROLEX 114300 GRAPE",
     price: 5700
    },
    {
     item: "ROLEX 116508 WHITE DIAL 2",
     price: 35250
    },
    {
     item: "ROLEX 226659",
     price: 28000
    },
    {
     item: "ROLEX 126300 BLUE INDEX OYSTER",
     price: 7800
    },
    {
     item: "ROLEX 126300 BLACK INDEX OYSTER 2",
     price: 7700
    },
    {
     item: "ROLEX 126300 BLUE ROMAN OYSTER",
     price: 7700
    },
    {
     item: "ROLEX 126300 SILVER OYSTER",
     price: 7700
    },
    {
     item: "ROLEX 126300 WHITE INDEX OYSTER",
     price: 7700
    },
    {
     item: "ROLEX 126300 WHITE ROMAN OYSTER",
     price: 7700
    },
    {
     item: "ROLEX 126300 WIMBLEDON OYSTER",
     price: 7800
    },
    
    {
     item: "ROLEX 116595 PLAIN DIAL",
     price: 266000
    },
   
    {
     item: "ROLEX 226659",
     price: 28500
    },
   
    {
     item: "AP_ROY OAK SS BLACK DIAL",
     price: 27000
    },
    {
     item: "ROLEX 228235 SUNDUST ROMAN",
     price: 35500
    },
    {
     item: "ROLEX 126334  BLUE ROMAN JUB",
     price: 10100
    },
    {
     item: "ROLEX 126600 sea dweller",
     price: 13500
    },
    {
     item: "ROLEX 126334 WHITE ROMAN JUB",
     price: 10000
    },
    {
     item: "ROLEX 126715CHNR",
     price: 36000
    },
    {
     item: "ROLEX 126333 BLACK DD JUBILEE",
     price: 13832
    },
    {
     item: "ROLEX 116503 WHITE DIAL",
     price: 17800
    },
    {
     item: "ROLEX 116505 CHOC DIAL",
     price: 38500
    },
    {
     item: "ROLEX 116688",
     price: 39000
    },
    {
     item: "ROLEX 116900 AIRKING",
     price: 6700
    },
    {
     item: "ROLEX 126711CHNR",
     price: 17700
    },
    {
     item: "ROLEX 228235 GREEN ROMAN",
     price: 39500
    },
    {
     item: "ROLEX 278273 GREEN DIAMOND VI JUB",
     price: 10635
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 23500
    },
    {
     item: "ROLEX 126334  SILVER JUBILEE",
     price: 10000
    },
    {
     item: "ROLEX 126719BLRO MEOTERITE DIAL 2",
     price: 49000
    },
    {
     item: "ROLEX 126334  WIMBLEDON JUBILEE",
     price: 11000
    },
    {
     item: "ROLEX 126331 CHOC INDEX JUBILEE",
     price: 12400
    },
    {
     item: "ROLEX 126333 CHAMP DIAMOND JUBILEE",
     price: 13877.5
    },
    {
     item: "ROLEX 126231 RHODIUM JUB",
     price: 11200
    },
    {
     item: "ROLEX 126710 PEPSI JUBILEE",
     price: 16700
    },
    {
     item: "ROLEX 126331  WIMBLEDON JUBILEE",
     price: 14000
    },
    {
     item: "PATEK 7010\/1R CHAMP",
     price: 46000
    },
    {
     item: "ROLEX 116505 CHOC DIAL",
     price: 38500
    },
    {
     item: "ROLEX 116613LB",
     price: 14100
    },
    {
     item: "ROLEX 326933 CHAMP DIAL",
     price: 17500
    },
    {
     item: "ROLEX 228235 CHOC ROMAN",
     price: 35000
    },
    {
     item: "ROLEX 126331 SUNDUST DIAMOND JUBILEE",
     price: 14105
    },
    {
     item: "ROLEX 278273 CHAMP DD JUB",
     price: 10868
    },
    {
     item: "ROLEX 326934 BLUE DIAL OYSTER",
     price: 23300
    },
  
    {
     item: "ROLEX 116588TBR TIGER",
     price: 111000
    },
    {
     item: "ROLEX 126300  BLACK INDEX OYSTER",
     price: 7750
    },
    {
     item: "ROLEX 228235 SUNDUST BAUGETTES",
     price: 38200
    },
    {
     item: "AUDEMARS PIGUET 26320OR ROYAL OAK BROWN",
     price: 33500
    },
    {
     item: "ROLEX 126334  WIMBLEDON JUBILEE",
     price: 10250
    },
    {
     item: "ROLEX 126300  RHODIUM OYSTER 2",
     price: 7750
    },
    {
     item: "ROLEX 126234 PINK JUBILEE DD JUB",
     price: 9300
    },
    {
     item: "ROLEX 126331 SUNDUST JUBILEE",
     price: 12060
    },
    {
     item: "ROLEX 126331 CHOCOLATE DIAMOND JUB",
     price: 14000
    },
    {
     item: "AUDEMARS PIGUET ROYAL OAK CHRONOGRAPH WA",
     price: 29300
    },
    {
     item: "ROLEX 326933 BLACK DIAL",
     price: 17800
    },
    {
     item: "ROLEX 116610LN SUBMARINER DATE",
     price: 11600
    },
    {
     item: "ROLEX 326933 BLACK DIAL",
     price: 17800
    },
    {
     item: "PATEK  5711\/1R",
     price: 88000
    },
    {
     item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
     price: 83500
    },
    {
     item: "ROLEX 126719BLRO MEOTERITE DIAL",
     price: 48900
    },
    {
     item: "ROLEX 116518LN CHAMP AND BLACK",
     price: 30750
    },
    {
     item: "ROLEX 116400GV BLUE DIAL",
     price: 8400
    },
    {
     item: "ROLEX 116518 BLACK",
     price: 29150
    },
    {
     item: "ROLEX 126622 BLUE DIAL",
     price: 11500
    },
    {
     item: "ROLEX 116508 WHITE DIAL 2",
     price: 35000
    },
    {
     item: "ROLEX 116613LN",
     price: 13800
    },
    {
     item: "ROLEX 126600 sea dweller",
     price: 13000
    }
   ]
   array.each { |x| Market.create!(name: x[:item] ,price: x[:price]) }