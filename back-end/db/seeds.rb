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
    date: "05/18/2022 12:28:21",
    price: "36000"
  },
  {
    item: "ROLEX 116508 DAYTONA GREEN DIAL",
    date: "05/18/2022 11:59:26",
    price: "96500"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "05/16/2022 14:11:27",
    price: "27600"
  },
  {
    item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
    date: "05/12/2022 16:41:28",
    price: "41000"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "05/12/2022 15:24:03",
    price: "40000"
  },
  {
    item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
    date: "05/12/2022 15:24:03",
    price: "40750"
  },
  {
    item: "ROLEX 126710BLNR GMT BATMAN OYSTER",
    date: "05/11/2022 11:28:45",
    price: "20000"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "05/06/2022 11:46:00",
    price: "32000"
  },
  {
    item: "ROLEX 128235 RGLD DAY DATE WHITE ROMAN",
    date: "05/06/2022 11:30:38",
    price: "39000"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "05/05/2022 18:15:47",
    price: "40000"
  },
  {
    item: "ROLEX 116500LN BLACK",
    date: "05/05/2022 18:15:47",
    price: "36000"
  },
  {
    item: "ROLEX SKYDWELLER 326934 BLUE JUBILEE",
    date: "04/29/2022 13:39:43",
    price: "32000"
  },
  {
    item: "ROLEX 116508 DAYTONA GREEN DIAL",
    date: "04/29/2022 11:24:05",
    price: "100000"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "04/29/2022 11:21:22",
    price: "40000"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "04/07/2022 16:52:07",
    price: "16000"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "04/06/2022 10:33:07",
    price: "17500"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "03/28/2022 17:18:38",
    price: "35000"
  },
  {
    item: "ROLEX 126710 BLRO PEPSI OYSTER",
    date: "03/24/2022 17:12:10",
    price: "26000"
  },
  {
    item: "ROLEX SKYDWELLER 326934 BLUE JUBILEE",
    date: "03/22/2022 19:02:00",
    price: "38000"
  },
  {
    item: "ROLEX 126710 BLRO PEPSI OYSTER",
    date: "03/21/2022 04:29:13",
    price: "28000"
  },
  {
    item: "ROLEX 126710BLNR GMT BATMAN OYSTER",
    date: "03/09/2022 14:32:46",
    price: "22750"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "03/03/2022 16:38:41",
    price: "29500"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "02/18/2022 12:54:31",
    price: "24000"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "02/16/2022 01:23:34",
    price: "30000"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "02/14/2022 15:43:48",
    price: "45500"
  },
  {
    item: "ROLEX SKYDWELLER 326934 BLACK JUBILEE",
    date: "02/14/2022 11:38:04",
    price: "29300"
  },
  {
    item: "ROLEX 228235 WHITE ROMAN",
    date: "02/08/2022 13:18:56",
    price: "57000"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "02/02/2022 17:48:39",
    price: "51000"
  },
  {
    item: "ROLEX SKYDWELLER 326934 BLACK JUBILEE",
    date: "02/02/2022 02:06:37",
    price: "28000"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "02/02/2022 02:05:52",
    price: "30000"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "02/02/2022 02:05:52",
    price: "24000"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "02/02/2022 02:05:52",
    price: "24000"
  },
  {
    item: "ROLEX 228235 WHITE ROMAN",
    date: "01/27/2022 13:48:15",
    price: "57280"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "01/25/2022 14:20:37",
    price: "21600"
  },
  {
    item: "ROLEX 228235 WHITE ROMAN",
    date: "01/17/2022 18:39:46",
    price: "55500"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "01/11/2022 15:32:12",
    price: "22000"
  },
  {
    item: "ROLEX 128235 RGLD DAY DATE WHITE ROMAN",
    date: "01/05/2022 12:25:42",
    price: "36950"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "12/28/2021 14:09:14",
    price: "20350"
  },
  {
    item: "ROLEX 116500LN BLACK",
    date: "12/23/2021 16:20:27",
    price: "31000"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "12/22/2021 13:17:20",
    price: "38500"
  },
  {
    item: "ROLEX 126710 BLRO PEPSI OYSTER",
    date: "12/22/2021 13:17:20",
    price: "22500"
  },
  {
    item: "ROLEX SKYDWELLER 326934 BLUE JUBILEE",
    date: "12/21/2021 11:57:27",
    price: "32000"
  },
  {
    item: "ROLEX 126710 BLRO PEPSI OYSTER",
    date: "12/15/2021 14:29:11",
    price: "22200"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "12/13/2021 14:52:50",
    price: "14300"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "12/07/2021 15:33:58",
    price: "18850"
  },
  {
    item: "ROLEX 126710BLNR GMT BATMAN OYSTER",
    date: "11/30/2021 13:18:36",
    price: "18200"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "11/16/2021 13:50:40",
    price: "22900"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "11/08/2021 18:35:00",
    price: "22000"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "11/08/2021 16:29:06",
    price: "24500"
  },
  {
    item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
    date: "11/01/2021 16:40:38",
    price: "43250"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "10/26/2021 13:55:04",
    price: "18400"
  },
  {
    item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
    date: "10/20/2021 17:22:50",
    price: "43000"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "10/18/2021 15:35:54",
    price: "18450"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "10/08/2021 12:12:38",
    price: "18300"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "10/01/2021 13:56:42",
    price: "15200"
  },
  {
    item: "ROLEX SKYDWELLER 326934 BLACK JUBILEE",
    date: "09/19/2021 21:17:14",
    price: "26000"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "09/13/2021 22:11:58",
    price: "18200"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "08/24/2021 16:08:36",
    price: "17000"
  },
  {
    item: "ROLEX 116508 DAYTONA GREEN DIAL",
    date: "07/30/2021 13:22:45",
    price: "76000"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "07/29/2021 14:23:04",
    price: "27000"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "07/14/2021 14:40:31",
    price: "22500"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "06/28/2021 15:58:30",
    price: "22500"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "06/07/2021 12:44:57",
    price: "22300"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "05/20/2021 11:36:15",
    price: "22000"
  },
  {
    item: "IWC IW503404 PORTUGIESER  RGLD",
    date: "05/19/2022 13:06:59",
    price: "27280"
  },
  {
    item: "GRAND SEIKO SBGW277",
    date: "05/19/2022 12:46:05",
    price: "5050"
  },
  {
    item: "GRAND SEIKO SLGA009 WHITE BIRCH",
    date: "05/19/2022 12:46:05",
    price: "7000"
  },
  {
    item: "OMEGA HERITAGE CK 859",
    date: "05/19/2022 12:46:05",
    price: "4850"
  },
  {
    item: "PATEK 5320G",
    date: "05/18/2022 13:36:21",
    price: "64000"
  },
  {
    item: "PATEK 5712/1A",
    date: "05/18/2022 12:37:29",
    price: "155000"
  },
  {
    item: "VACHERON CONSTANTIN OVERSEAS DUAL TIME",
    date: "05/18/2022 11:30:08",
    price: "36000"
  },
  {
    item: "VACHERON CONSTANTIN OVERSEA QUARTZ BLACK",
    date: "05/18/2022 11:08:00",
    price: "13500"
  },
  {
    item: "VACHERON CONSTANTIN OVERSEA QUARTZ BLUE",
    date: "05/18/2022 11:08:00",
    price: "13500"
  },
  {
    item: "3 CT PEAR DIAMOND 6412471600 GIA",
    date: "05/17/2022 16:29:17",
    price: "22000"
  },
  {
    item: "ROLEX 228238 DAY DATE CHAMGPAGNE STICK",
    date: "05/17/2022 11:27:40",
    price: "41000"
  },
  {
    item: "GRAND SEIKO SBGJ251G GREEN",
    date: "05/16/2022 18:21:50",
    price: "5350"
  },
  {
    item: "ROLEX 126334 DATEJUST BLU DAIMOND DIAL",
    date: "05/16/2022 14:13:40",
    price: "14700"
  },
  {
    item: "ROLEX BOX",
    date: "05/16/2022 12:23:50",
    price: "225"
  },
  {
    item: "ROLEX 126334 BLUE INDEX JUBILEE",
    date: "05/13/2022 14:27:04",
    price: "12250"
  },
  {
    item: "ROLEX BOX",
    date: "05/13/2022 13:40:58",
    price: "250"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "05/13/2022 12:26:00",
    price: "14500"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "05/12/2022 14:55:47",
    price: "6500"
  },
  {
    item: "PATEK 5980/1R",
    date: "05/12/2022 12:11:19",
    price: "290000"
  },
  {
    item: "ROLEX 126333 CHAMPAGNE JUBILEE",
    date: "05/11/2022 14:50:29",
    price: "14000"
  },
  {
    item: "ROLEX  126660 BLUE JAMES CAMERON",
    date: "05/10/2022 11:43:32",
    price: "16700"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "05/09/2022 12:52:12",
    price: "15750"
  },
  {
    item: "ROLEX 228396TBR PLAT ICE BLU DIAMOND DIA",
    date: "05/09/2022 12:49:28",
    price: "140000"
  },
  {
    item: "ROLEX 226659",
    date: "05/09/2022 12:48:22",
    price: "35000"
  },
  {
    item: "ROLEX 128235 WHITE ROMAN DIAMON BRACELET",
    date: "05/09/2022 12:45:23",
    price: "0"
  },
  {
    item: "ROLEX 278274 SALMON DIAMOND OYSTER",
    date: "05/06/2022 15:00:15",
    price: "8958"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "05/06/2022 12:17:50",
    price: "1"
  },
  {
    item: "TUDOR BLACK BAY 58 M79030B SMURF",
    date: "05/06/2022 12:17:50",
    price: "1"
  },
  {
    item: "ROLEX 228349 BLACK DIAMOND DIAL",
    date: "05/06/2022 11:21:37",
    price: "59350"
  },
  {
    item: "ROLEX 126334 BLUE ROMAN OYSTER",
    date: "05/04/2022 14:38:55",
    price: "12300"
  },
  {
    item: "ROLEX 126300  BLUE INDEX OYSTER 2",
    date: "05/04/2022 13:58:34",
    price: "10000"
  },
  {
    item: "PATEK PHILIPPE CALATRAVA 6119R",
    date: "05/03/2022 15:49:59",
    price: "30000"
  },
  {
    item: "PATEK 5726/1A-014",
    date: "05/03/2022 13:28:39",
    price: "190000"
  },
  {
    item: "GRAND SEIKO SLGA009 WHITE BIRCH",
    date: "05/03/2022 13:27:54",
    price: "8700"
  },
  {
    item: "TUDOR ROYAL M28600 BLUE DIAL",
    date: "05/03/2022 13:27:29",
    price: "1900"
  },
  {
    item: "OMEGA SPEEDMASTER MOON WHITE DIAL",
    date: "05/03/2022 13:27:02",
    price: "34000"
  },
  {
    item: "IWC SPITFIRE IW387902 BRONZE GREEN DIAL",
    date: "05/03/2022 13:26:23",
    price: "5605"
  },
  {
    item: "PATEK PHILIPPE 5205R WHITE",
    date: "05/02/2022 14:21:45",
    price: "60000"
  },
  {
    item: "DOXA SUB ORANGE",
    date: "05/02/2022 10:38:02",
    price: "1700"
  },
  {
    item: "GRAND SEIKO SBGA413 PINK",
    date: "05/02/2022 10:38:02",
    price: "5000"
  },
  {
    item: "PANERAI PAM01164",
    date: "04/28/2022 13:01:42",
    price: "23000"
  },
  {
    item: "ROLEX 279174 DJUST 28MM MOP DIAMOND DIAL",
    date: "04/28/2022 11:57:02",
    price: "10650"
  },
  {
    item: "TUDOR BLACK BAY 58 79012 BRONZE",
    date: "04/27/2022 18:40:16",
    price: "5002.5"
  },
  {
    item: "GIA OVAL BRILLIANT 10 43 H VS1",
    date: "04/27/2022 15:03:38",
    price: "354000"
  },
  {
    item: "CARTIER CRWGTA0046 AMERICANA ROSE GOLD",
    date: "04/27/2022 13:02:04",
    price: "1"
  },
  {
    item: "GRAND SEIKO SBGA413 PINK",
    date: "04/27/2022 13:01:08",
    price: "1"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "04/27/2022 11:20:55",
    price: "6300"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "04/27/2022 11:20:54",
    price: "6300"
  },
  {
    item: "GRAND SEIKO SLGH005 WHITE BIRCH SHIRAKAB",
    date: "04/27/2022 10:14:53",
    price: "7500"
  },
  {
    item: "CARTIER SANTOS ROSE GOLD SKELETON 0016",
    date: "04/26/2022 14:09:35",
    price: "48000"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "04/26/2022 14:07:20",
    price: "57000"
  },
  {
    item: "ROLEX DAYTONA 116518 PAUL NEWMAN",
    date: "04/26/2022 13:33:28",
    price: "54500"
  },
  {
    item: "ROLEX 278273 GREEN ROMN JUBILEE",
    date: "04/25/2022 16:07:57",
    price: "16000"
  },
  {
    item: "IWC IW389109 BLUE ANGELS CHRONO",
    date: "04/17/2022 23:09:05",
    price: "8000"
  },
  {
    item: "GRAND SEIKO SBGA211 SNOWFLAKE",
    date: "04/17/2022 23:08:51",
    price: "4700"
  },
  {
    item: "PATEK 5522A PILOT WATCH NY EDITION",
    date: "04/15/2022 13:18:58",
    price: "59500"
  },
  {
    item: "ROLEX DATEJUST 31MM 278384 SILVER DIAMON",
    date: "04/15/2022 12:08:55",
    price: "16800"
  },
  {
    item: "ROLEX 126334 BLACK OYSTER",
    date: "04/15/2022 12:08:44",
    price: "11500"
  },
  {
    item: "DOXA SUB ORANGE",
    date: "04/14/2022 13:00:33",
    price: "1"
  },
  {
    item: "CARTIER W6701011 RONDE SOLO 42MM XL",
    date: "04/14/2022 13:00:18",
    price: "1"
  },
  {
    item: "ROMAIN JEROME SPACE INVADER WATCH",
    date: "04/14/2022 13:00:18",
    price: "1"
  },
  {
    item: "TUDOR 79360N BLACK DIAL 41MM",
    date: "04/13/2022 13:53:34",
    price: "5000"
  },
  {
    item: "ROLEX 126233 DJUST 36MM MOP DIAL JUB",
    date: "04/12/2022 14:19:00",
    price: "18200"
  },
  {
    item: "RICHARD MILLE RM07-01",
    date: "04/12/2022 07:35:20",
    price: "278000"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "04/11/2022 18:07:32",
    price: "7800"
  },
  {
    item: "BREGUET 5727BB/12/9ZU HORA MUNDI WATCH",
    date: "04/11/2022 14:10:33",
    price: "30000"
  },
  {
    item: "GRAND SEIKO SBGA413 PINK",
    date: "04/11/2022 11:59:03",
    price: "5500"
  },
  {
    item: "ROLEX 126231 WIMBLEDON JUBILEE",
    date: "04/08/2022 11:36:46",
    price: "12500"
  },
  {
    item: "PATEK 5980/1R",
    date: "04/08/2022 07:23:08",
    price: "285000"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "04/07/2022 16:27:18",
    price: "17000"
  },
  {
    item: "BREGUET 5727BB/12/9ZU HORA MUNDI WATCH",
    date: "04/06/2022 13:51:50",
    price: "0"
  },
  {
    item: "OMEGA SEAMASTER AQUA TERRA BEIJING 2022",
    date: "04/06/2022 11:36:02",
    price: "4000"
  },
  {
    item: "OMEGA SEAMASTER AQUA TERRA GREEN STEEL",
    date: "04/06/2022 11:36:02",
    price: "4300"
  },
  {
    item: "ROLEX 126281RBR 36MM MOP DIAM BEZ",
    date: "04/05/2022 12:43:00",
    price: "25000"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLK DIAL",
    date: "04/05/2022 10:26:48",
    price: "20000"
  },
  {
    item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
    date: "04/04/2022 15:24:44",
    price: "18500"
  },
  {
    item: "PATEK PHILIPPE 5990R BLUE DIAL",
    date: "04/03/2022 13:45:37",
    price: "450000"
  },
  {
    item: "RICHARD MILLE RM028 ROSE GOLD",
    date: "04/01/2022 10:42:53",
    price: "102000"
  },
  {
    item: "ROLEX 126334 BLUE INDEX OYSTER",
    date: "04/01/2022 10:38:03",
    price: "13500"
  },
  {
    item: "ROLEX DAYDATE 128349 WHITE MOP DIAMOND",
    date: "04/01/2022 10:38:03",
    price: "49000"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "03/31/2022 15:07:51",
    price: "1"
  },
  {
    item: "ROLEX 278383 31MM GREEN ROMAN DIAM BEZ",
    date: "03/30/2022 15:14:31",
    price: "19600"
  },
  {
    item: "PATEK 4948R",
    date: "03/30/2022 11:57:38",
    price: "69000"
  },
  {
    item: "PATEK 5164R",
    date: "03/29/2022 17:47:25",
    price: "168000"
  },
  {
    item: "ROLEX 126331 CHOC DIAL OYSTER",
    date: "03/29/2022 17:33:59",
    price: "15435"
  },
  {
    item: "ROLEX DAYTONA 116518 PAUL NEWMAN",
    date: "03/29/2022 17:32:10",
    price: "55500"
  },
  {
    item: "GIA OVAL BRILLIANT DIAMOND 10 02 H VS2",
    date: "03/29/2022 15:24:08",
    price: "300000"
  },
  {
    item: "CARTIER SANTOS WHSA0007 SKELETON",
    date: "03/28/2022 17:10:32",
    price: "22500"
  },
  {
    item: "GRAND SEIKO SBGE253G GMT SPRING DRIVE",
    date: "03/28/2022 15:53:28",
    price: "3500"
  },
  {
    item: "IWC CHRONO SPITFIRE IW387901",
    date: "03/28/2022 15:52:58",
    price: "3500"
  },
  {
    item: "ROLEX 279171 PURPLE DIAMOND OYSTER",
    date: "03/28/2022 13:47:55",
    price: "11600"
  },
  {
    item: "PATEK PHILIPPE 5205R WHITE",
    date: "03/28/2022 13:36:41",
    price: "64250"
  },
  {
    item: "ROLEX WARRANTY BOOKLET AND WALLET",
    date: "03/28/2022 12:10:04",
    price: "20"
  },
  {
    item: "ROLEX BOX",
    date: "03/28/2022 12:08:46",
    price: "200"
  },
  {
    item: "VACHERON CONSTATIN 3110V/000A-B246",
    date: "03/25/2022 12:10:12",
    price: "16500"
  },
  {
    item: "ROLEX 126233 DJUST 36MM CHAMP PALM DIAL",
    date: "03/24/2022 18:24:09",
    price: "13250"
  },
  {
    item: "ROLEX 226570 EXPLORER II BLK DIAL",
    date: "03/24/2022 17:53:26",
    price: "12000"
  },
  {
    item: "CARTIER SANTOS ROSE GOLD WGSA0008",
    date: "03/24/2022 17:18:51",
    price: "27000"
  },
  {
    item: "ROLEX 126600 SEA DWELLER RED LETTERS",
    date: "03/24/2022 13:24:24",
    price: "15500"
  },
  {
    item: "PATEK PHILLIPE 4948G MOP DIAL",
    date: "03/24/2022 12:43:58",
    price: "69000"
  },
  {
    item: "GRAND SEIKO SLGA009 WHITE BIRCH",
    date: "03/24/2022 10:32:22",
    price: "7000"
  },
  {
    item: "GIA DIAMOND PENDANT NECKLACE HAMILTON",
    date: "03/23/2022 17:16:05",
    price: "20520"
  },
  {
    item: "GIA ROUND DIAMOND PENDANT JAMES  SONS",
    date: "03/23/2022 16:18:05",
    price: "9500"
  },
  {
    item: "GIA DIAMOND PENDANT CLARKSON 7381433464",
    date: "03/23/2022 16:17:50",
    price: "15000"
  },
  {
    item: "ROLEX 178240 WHITE STICK OYSTER",
    date: "03/23/2022 13:04:20",
    price: "5800"
  },
  {
    item: "ROLEX 124300 OYSTER PERPETUAL GREEN DIAL",
    date: "03/21/2022 12:25:51",
    price: "14250"
  },
  {
    item: "ROLEX 128238 DAYDATE GREEN DIAMOND DIAL",
    date: "03/21/2022 04:27:00",
    price: "55000"
  },
  {
    item: "PATEK PHILIPPE 4947R ANNUAL CALENDAR",
    date: "03/18/2022 14:27:19",
    price: "51000"
  },
  {
    item: "ROLEX 128238 WHITE ROMAN DIAL",
    date: "03/18/2022 14:27:19",
    price: "34000"
  },
  {
    item: "OMEGA SPEEDMASTER O31030425001002",
    date: "03/15/2022 16:45:05",
    price: "1"
  },
  {
    item: "GRAND SEIKO SBGA211 SNOWFLAKE",
    date: "03/15/2022 16:44:50",
    price: "1"
  },
  {
    item: "GRAND SEIKO FOUR SEASONS SBGH271 GREEN",
    date: "03/15/2022 16:43:48",
    price: "1"
  },
  {
    item: "GRAND SEIKO SBGA413 PINK",
    date: "03/15/2022 16:43:48",
    price: "1"
  },
  {
    item: "GRAND SEIKO SBGE253G GMT SPRING DRIVE",
    date: "03/15/2022 16:43:48",
    price: "1"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "03/15/2022 15:50:38",
    price: "6500"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "03/15/2022 13:03:19",
    price: "15250"
  },
  {
    item: "ROLEX DAYDATE 228235 CHOCOLATE BAGUETTE",
    date: "03/15/2022 11:53:33",
    price: "65000"
  },
  {
    item: "ROLEX 116613LN",
    date: "03/14/2022 15:55:54",
    price: "14000"
  },
  {
    item: "ROLEX DATEJUS 278273 WHITE ROMAN JUBILEE",
    date: "03/14/2022 15:32:44",
    price: "12500"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLK DIAL",
    date: "03/14/2022 13:59:22",
    price: "19700"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "03/14/2022 11:26:21",
    price: "62300"
  },
  {
    item: "ROLEX 126300  BLACK INDEX OYSTER",
    date: "03/14/2022 11:25:01",
    price: "9500"
  },
  {
    item: "ROLEX 126303 WIMBELDON SMOOTH BEZ OYSTER",
    date: "03/14/2022 11:25:01",
    price: "13000"
  },
  {
    item: "ROLEX 116688",
    date: "03/14/2022 11:23:58",
    price: "53000"
  },
  {
    item: "ROLEX DAYDATE 128235 ROMAN EISENKIESEL",
    date: "03/14/2022 11:22:28",
    price: "54000"
  },
  {
    item: "GRAND SEIKO SBGA211 SNOWFLAKE",
    date: "03/14/2022 10:17:44",
    price: "4900"
  },
  {
    item: "LONGINES MASTER COLLECTION BLUE DIAL",
    date: "03/13/2022 01:24:06",
    price: "2100"
  },
  {
    item: "ROLEX  126660 BLUE JAMES CAMERON",
    date: "03/10/2022 12:47:14",
    price: "17600"
  },
  {
    item: "ROLEX 228235 EISENKIESEL BAGUETTE",
    date: "03/08/2022 15:18:33",
    price: "105000"
  },
  {
    item: "TAG HEUER AQUARACER BLUE DIAL",
    date: "03/08/2022 13:55:43",
    price: "1450"
  },
  {
    item: "ROLEX 228235 SUNDUST ROMAN",
    date: "03/04/2022 12:29:20",
    price: "66000"
  },
  {
    item: "ROLEX 228235 GREEN ROMAN",
    date: "03/04/2022 12:08:40",
    price: "90500"
  },
  {
    item: "GRAND SEIKO SLGA009 WHITE BIRCH",
    date: "03/03/2022 17:19:34",
    price: "7500"
  },
  {
    item: "GRAND SEIKO GMT SPRING DRIVE SBGE205",
    date: "03/03/2022 17:19:04",
    price: "4600"
  },
  {
    item: "PATEK 5270P PLATINUM SALMON DIAL",
    date: "03/03/2022 17:18:57",
    price: "230000"
  },
  {
    item: "OMEGA SEAMASTER BEIJING BLUE DIAL",
    date: "03/03/2022 17:17:51",
    price: "5200"
  },
  {
    item: "ROLEX 126331  WIMBLEDON JUBILEE",
    date: "03/03/2022 16:15:05",
    price: "17000"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "03/03/2022 15:02:19",
    price: "15500"
  },
  {
    item: "DIAMOND PENDANT NECKLACE BETTERIDGE",
    date: "03/02/2022 15:26:06",
    price: "18500"
  },
  {
    item: "GIRARD PERREGAUX LAUREATO BLACK 38MM",
    date: "03/02/2022 14:25:44",
    price: "16650"
  },
  {
    item: "TUDOR BLACK BAY 58 79030B BLUE BRACELET",
    date: "03/02/2022 13:33:28",
    price: "2900"
  },
  {
    item: "TUDOR BLACK BAY 58 SILVER 925",
    date: "03/02/2022 13:33:28",
    price: "3600"
  },
  {
    item: "TUDOR BLACK BAY M79230B",
    date: "03/02/2022 13:33:28",
    price: "2700"
  },
  {
    item: "TUDOR BLACK BAY CERAMIC M79210CNU",
    date: "03/02/2022 13:33:27",
    price: "4200"
  },
  {
    item: "PATEK PHILIPPE 4947/1A ANNUAL CALENDAR",
    date: "03/01/2022 15:53:07",
    price: "47000"
  },
  {
    item: "ROLEX 226570 EXPLORER II WHT DIAL",
    date: "03/01/2022 15:50:36",
    price: "14350"
  },
  {
    item: "ROLEX DAYDATE 128349 PINK OPAL DIAMOND",
    date: "03/01/2022 15:46:35",
    price: "53000"
  },
  {
    item: "ROLEX 126233 DATEJUST WHITE ROMAN",
    date: "03/01/2022 14:57:19",
    price: "13000"
  },
  {
    item: "RAHAMINOV GIA DIAMOND NECKLACE 30CT",
    date: "03/01/2022 13:52:08",
    price: "42000"
  },
  {
    item: "CARTIER W6701011 RONDE SOLO 42MM XL",
    date: "02/25/2022 14:29:12",
    price: "3500"
  },
  {
    item: "ROLEX 228348 SILVER MOTIF DIAMOND BEZEL",
    date: "02/24/2022 15:05:05",
    price: "53000"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "02/24/2022 14:11:05",
    price: "6750"
  },
  {
    item: "PATEK PHILIPPE CALATRAVA 6119R",
    date: "02/24/2022 13:21:29",
    price: "36500"
  },
  {
    item: "GIA ROUND DIAMOND PENDANT RF MOELLER",
    date: "02/23/2022 16:19:20",
    price: "9500"
  },
  {
    item: "AUDEMARS PIGUET 15451ST ROYAL OAK DIAMON",
    date: "02/23/2022 15:57:21",
    price: "37500"
  },
  {
    item: "ROLEX 80285 PEARLMASTER 28MM RGLD",
    date: "02/23/2022 15:17:04",
    price: "48000"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "02/23/2022 14:25:34",
    price: "3100"
  },
  {
    item: "ROLEX 228396TBR PLAT ICE BLU DIAMOND DIA",
    date: "02/22/2022 12:40:22",
    price: "175000"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "02/21/2022 13:59:32",
    price: "6750"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "02/21/2022 13:59:32",
    price: "6750"
  },
  {
    item: "ROLEX SUBMARINER 126618 BLACK DIAL",
    date: "02/21/2022 01:58:52",
    price: "49500"
  },
  {
    item: "ROLEX 116689 WGOLD YMASTER 2",
    date: "02/21/2022 01:58:11",
    price: "49000"
  },
  {
    item: "ROLEX 228396TBR PLAT ICE BLU DIAMOND DIA",
    date: "02/18/2022 13:34:20",
    price: "175000"
  },
  {
    item: "ROLEX 178384 DJUST 31MM DIAM BEZ MOP DIA",
    date: "02/17/2022 15:15:36",
    price: "17000"
  },
  {
    item: "OMEGA SNOOPY 50TH ANNIVERSARY",
    date: "02/16/2022 14:21:38",
    price: "28000"
  },
  {
    item: "PATEK 5712/1A",
    date: "02/16/2022 01:23:34",
    price: "210000"
  },
  {
    item: "PATEK 5740/1G BLUE DIAL",
    date: "02/16/2022 01:23:34",
    price: "420000"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLK DIAL",
    date: "02/16/2022 01:23:34",
    price: "20000"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "02/16/2022 01:23:34",
    price: "38500"
  },
  {
    item: "ROLEX 326934 SKY DWELLER WHT DIAL JUB",
    date: "02/16/2022 01:23:34",
    price: "30000"
  },
  {
    item: "ROLEX DATEJUST 126281 JUBILEE BLACK DIAM",
    date: "02/15/2022 17:57:12",
    price: "21500"
  },
  {
    item: "ROLEX 126300 RHODIUM OYSTER",
    date: "02/15/2022 12:06:34",
    price: "10500"
  },
  {
    item: "ROLEX 268655 YMASTER 37MM PAVE DIAL RGLD",
    date: "02/15/2022 02:02:10",
    price: "42000"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "02/15/2022 02:02:10",
    price: "17000"
  },
  {
    item: "ROLEX YACHTMASTER 126655 PAVE DIAMOND",
    date: "02/15/2022 02:02:10",
    price: "52500"
  },
  {
    item: "GIA ROUND DIAMOND PENDANT CLARKSON JEWEL",
    date: "02/14/2022 16:05:18",
    price: "11000"
  },
  {
    item: "ROLEX 116688",
    date: "02/14/2022 15:48:07",
    price: "53250"
  },
  {
    item: "ROLEX 116505 BLACK DIAL",
    date: "02/14/2022 15:39:55",
    price: "62000"
  },
  {
    item: "TUDOR PELAGOS BLUE 25707B NATO STRAP",
    date: "02/14/2022 15:24:54",
    price: "1"
  },
  {
    item: "GIA ROUND DIAMOND PENDANT GRUNOZ JEWELER",
    date: "02/14/2022 15:11:26",
    price: "10000"
  },
  {
    item: "GIA DIAMOND PENDANT NECKLACE MARTIN BIND",
    date: "02/14/2022 15:07:41",
    price: "10000"
  },
  {
    item: "GIA DIAMOND PENDANT NECKLACE SHREVE",
    date: "02/14/2022 15:07:41",
    price: "10000"
  },
  {
    item: "ROLEX 126331 CHOC INDEX JUBILEE",
    date: "02/14/2022 14:52:44",
    price: "17350"
  },
  {
    item: "ROLEX 116505 CHOC DIAL",
    date: "02/14/2022 14:08:17",
    price: "85000"
  },
  {
    item: "ROLEX 228206 DAY DATE PLATINIUM BLU ROM",
    date: "02/14/2022 13:42:39",
    price: "93000"
  },
  {
    item: "PATEK PHILIPPE 5236P PERPETUAL CALENDAR",
    date: "02/14/2022 12:39:11",
    price: "148000"
  },
  {
    item: "OMEGA SPEEDMASTER APOLLO 8 LEATHER",
    date: "02/14/2022 11:28:23",
    price: "8775"
  },
  {
    item: "ROLEX DATEJUST 126281 JUBILEE BLACK DIAM",
    date: "02/14/2022 11:23:21",
    price: "21000"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "02/08/2022 18:12:36",
    price: "8500"
  },
  {
    item: "GRAND SEIKO SBGA413 PINK",
    date: "02/08/2022 13:59:09",
    price: "5300"
  },
  {
    item: "GRAND SEIKO SBGA387 BLUE",
    date: "02/08/2022 13:58:57",
    price: "9000"
  },
  {
    item: "TUDOR 79360N OPALINE DIAL 41MM",
    date: "02/08/2022 13:57:35",
    price: "5644.5"
  },
  {
    item: "CASIO G SHOCK GBD200-9 GREEN",
    date: "02/08/2022 13:57:02",
    price: "150"
  },
  {
    item: "PANERAI PAM01068 SUBMERSIBLE BLUE",
    date: "02/08/2022 13:56:45",
    price: "8500"
  },
  {
    item: "TUDOR BLACK BAY 58 SILVER 925",
    date: "02/08/2022 13:56:22",
    price: "3500"
  },
  {
    item: "CARTIER CRWGTA0046 AMERICANA ROSE GOLD",
    date: "02/07/2022 12:57:34",
    price: "9500"
  },
  {
    item: "BREITLING AB0155 CHOC DIAL",
    date: "02/07/2022 10:29:50",
    price: "3500"
  },
  {
    item: "GRAND SEIKO FOUR SEASONS SBGH271 GREEN",
    date: "02/07/2022 10:29:50",
    price: "4400"
  },
  {
    item: "PATEK 6119G CALATRAVA",
    date: "02/04/2022 12:33:12",
    price: "34150"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "02/04/2022 12:32:46",
    price: "3200"
  },
  {
    item: "ROLEX 126334 BLUE ROMAN OYSTER",
    date: "02/04/2022 10:59:56",
    price: "13750"
  },
  {
    item: "VACHERON 4000E/000R-B438 FIFTYSIX RG",
    date: "02/03/2022 16:32:38",
    price: "27750"
  },
  {
    item: "GIA ROUND BRILLIANT DIAMOND 3 07 G SI1",
    date: "02/03/2022 15:49:04",
    price: "71800"
  },
  {
    item: "GIA ROUND BRILLIANT DIAMOND 3 74 F VS2",
    date: "02/03/2022 15:49:04",
    price: "35200"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "02/03/2022 15:22:51",
    price: "3600"
  },
  {
    item: "VACHERON CONSTANTIN FIFTYSIX X40R2755",
    date: "02/03/2022 13:44:14",
    price: "27750"
  },
  {
    item: "ROLEX 128235 RGLD DAY DATE CHOCO DIAMOND",
    date: "02/03/2022 13:32:14",
    price: "41700"
  },
  {
    item: "GIRARD PERREGAUX LAUREATO ABSOLUTE BLACK",
    date: "02/02/2022 15:37:02",
    price: "14320"
  },
  {
    item: "PANERAI PAM01090 BLK DIAL",
    date: "02/02/2022 15:31:48",
    price: "4500"
  },
  {
    item: "ROLEX 126234 PINK JUBILEE DD JUB",
    date: "02/02/2022 15:25:58",
    price: "13000"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "02/02/2022 02:09:00",
    price: "57800"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "02/02/2022 02:08:12",
    price: "62000"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 277200 TIFFANY 31",
    date: "02/02/2022 02:05:52",
    price: "13000"
  },
  {
    item: "ROLEX 126333 CHAMP DIAMOND JUBILEE",
    date: "01/30/2022 21:56:13",
    price: "17000"
  },
  {
    item: "ROLEX 279171 CHOCO DIAM JUBILEE",
    date: "01/30/2022 21:53:54",
    price: "12250"
  },
  {
    item: "TUDOR BLACK BAY 58 79012 BRONZE",
    date: "01/28/2022 12:28:38",
    price: "5002.5"
  },
  {
    item: "ROLEX 126622 BLUE DIAL",
    date: "01/27/2022 13:57:58",
    price: "19500"
  },
  {
    item: "PATEK 7300/1200R TWENTY 4",
    date: "01/25/2022 22:03:26",
    price: "35800"
  },
  {
    item: "ROLEX DAYDATE 228349 SILVER DIAMOND DIAL",
    date: "01/25/2022 22:01:40",
    price: "61700"
  },
  {
    item: "ROLEX CELLINI DATE 50515 BLACK DIAL",
    date: "01/25/2022 14:36:19",
    price: "16350"
  },
  {
    item: "ROLEX 126622 BLUE DIAL",
    date: "01/25/2022 14:19:09",
    price: "17500"
  },
  {
    item: "JAEGER LECOULTRE REVERSO 3978430 GREEN",
    date: "01/25/2022 06:42:57",
    price: "7860"
  },
  {
    item: "CARTIER WGSA0018 SANTOS ROSE GOLD",
    date: "01/24/2022 10:33:32",
    price: "27000"
  },
  {
    item: "IWC IW389109 BLUE ANGELS CHRONO",
    date: "01/24/2022 10:33:32",
    price: "8700"
  },
  {
    item: "GRAND SEIKO SBGA211 SNOWFLAKE",
    date: "01/24/2022 10:33:01",
    price: "4550"
  },
  {
    item: "PATEK 5320G",
    date: "01/21/2022 13:48:01",
    price: "69000"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "01/21/2022 10:36:19",
    price: "3300"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "01/21/2022 10:33:46",
    price: "8400"
  },
  {
    item: "ROLEX 228239 DAY DATE GRAY DIAL",
    date: "01/17/2022 18:38:53",
    price: "45100"
  },
  {
    item: "TUDOR BLACK BAY 58 YELLOW GOLD M79018V",
    date: "01/17/2022 17:55:40",
    price: "13000"
  },
  {
    item: "TUDOR BLACK BAY 58 M79030B SMURF",
    date: "01/17/2022 17:47:33",
    price: "3300"
  },
  {
    item: "VACHERON CONSTANTIN X40A2656 BLUE DIAL",
    date: "01/17/2022 13:00:56",
    price: "19500"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "01/17/2022 10:16:02",
    price: "8400"
  },
  {
    item: "BREITLING AB0155 CHOC DIAL",
    date: "01/13/2022 16:12:56",
    price: "1"
  },
  {
    item: "GRAND SEIKO FOUR SEASONS SBGH271 GREEN",
    date: "01/13/2022 16:12:56",
    price: "1"
  },
  {
    item: "GRAND SEIKO SBGH273 BLUE",
    date: "01/13/2022 16:12:56",
    price: "1"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "01/13/2022 10:38:39",
    price: "8500"
  },
  {
    item: "ROLEX 326933 WHT DIAL JUB",
    date: "01/11/2022 11:44:35",
    price: "23350"
  },
  {
    item: "ROLEX DATEJUST 279381 CHOCOLATE DIAMOND",
    date: "01/11/2022 11:41:39",
    price: "15075"
  },
  {
    item: "ROLEX SKYDWELLER 326235 WHITE DIAL",
    date: "01/11/2022 10:46:26",
    price: "45000"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "01/10/2022 17:13:04",
    price: "3500"
  },
  {
    item: "BREITLING TOP TIME FORD MUSTANG GREEN",
    date: "01/10/2022 12:14:43",
    price: "5500"
  },
  {
    item: "VAN CLEEF AND ARPELS SOCRATES NECKLACE",
    date: "01/10/2022 10:26:25",
    price: "8000"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "01/09/2022 15:56:36",
    price: "8575"
  },
  {
    item: "JAEGAR LECOULTRE REVERSO DUO 3988482 BLU",
    date: "01/06/2022 11:20:57",
    price: "9500"
  },
  {
    item: "IWC CHRONO SPITFIRE IW387901",
    date: "01/06/2022 11:18:44",
    price: "4250"
  },
  {
    item: "ROLEX 268621 37MM BLK DIAL TWO TONE",
    date: "01/05/2022 12:33:30",
    price: "15000"
  },
  {
    item: "ROLEX 228396 PLATINUM METEORITE DIAL",
    date: "01/05/2022 12:02:46",
    price: "169500"
  },
  {
    item: "ROLEX 50529 CELLINI WGLD BLK DIAL",
    date: "01/05/2022 11:55:15",
    price: "15000"
  },
  {
    item: "GIRARD PERREGAUX LAUREATO GREEN 81020 GP",
    date: "01/04/2022 17:10:41",
    price: "20000"
  },
  {
    item: "GIA ROUND BRILLIANT DIAMOND 3 74 F VS2",
    date: "01/04/2022 16:10:31",
    price: "70000"
  },
  {
    item: "CARTIER TANK MUST BLUE",
    date: "01/04/2022 13:50:57",
    price: "2850"
  },
  {
    item: "TUDOR BLACK BAY 58 YELLOW GOLD M79018V",
    date: "01/03/2022 15:32:39",
    price: "13699"
  },
  {
    item: "ROLEX 116618LB SUBMARINER",
    date: "01/03/2022 15:03:04",
    price: "44000"
  },
  {
    item: "OMEGA SPEEDMASTER APOLLO 8 LEATHER",
    date: "12/30/2021 16:07:15",
    price: "1"
  },
  {
    item: "TUDOR ROYAL M28600 BLUE DIAL",
    date: "12/30/2021 14:49:36",
    price: "1850"
  },
  {
    item: "ROLEX 1236231 DJUST 36MM ROMAN RHODIUM",
    date: "12/29/2021 10:30:04",
    price: "17600"
  },
  {
    item: "ROLEX 1236231 DJUST 36MM ROMAN RHODIUM",
    date: "12/29/2021 10:28:02",
    price: "15000"
  },
  {
    item: "IWC IW388104 PILOT GREEN DIAL",
    date: "12/28/2021 17:26:00",
    price: "6000"
  },
  {
    item: "ROLEX 126334  BLUE ROMAN JUB",
    date: "12/28/2021 14:36:33",
    price: "12400"
  },
  {
    item: "ROLEX 126334 BLUE INDEX OYSTER",
    date: "12/28/2021 14:36:33",
    price: "12400"
  },
  {
    item: "ROLEX 228238  WHITE ROMAN",
    date: "12/28/2021 14:05:54",
    price: "42500"
  },
  {
    item: "ROLEX DAY-DATE 228345 PINK DIAMOND DIAL",
    date: "12/27/2021 12:19:10",
    price: "61000"
  },
  {
    item: "ROLEX DAYTONA 116503 CHAMPAGNE INDEX DIA",
    date: "12/24/2021 11:26:26",
    price: "23450"
  },
  {
    item: "ROLEX 126334 WHITE INDEX JUB",
    date: "12/23/2021 18:37:35",
    price: "12150"
  },
  {
    item: "IWC IW356517 WHITE DIAL",
    date: "12/23/2021 16:06:15",
    price: "3100"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "12/23/2021 14:07:54",
    price: "6900"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "12/23/2021 12:14:30",
    price: "3350"
  },
  {
    item: "ROLEX DAYTONA 116515 BLACK DIAL PINK SUB",
    date: "12/22/2021 16:52:57",
    price: "51000"
  },
  {
    item: "ROLEX SKYDWELLER 326935 CHOCOLATE INDEX",
    date: "12/22/2021 16:47:33",
    price: "68250"
  },
  {
    item: "PATEK PHILIPPE 4947G WHITE DIAL",
    date: "12/22/2021 14:50:30",
    price: "48500"
  },
  {
    item: "PATEK PHILIPPE 5147G BLUE",
    date: "12/22/2021 14:50:18",
    price: "58000"
  },
  {
    item: "ROLEX 126233 CHAMP FLUTED JUB",
    date: "12/22/2021 13:27:19",
    price: "13000"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 276200 PINK 28MM",
    date: "12/22/2021 13:24:18",
    price: "5400"
  },
  {
    item: "PATEK 5320G",
    date: "12/21/2021 16:54:34",
    price: "65000"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "12/21/2021 15:15:37",
    price: "52800"
  },
  {
    item: "IWC IW388104 PILOT GREEN DIAL",
    date: "12/21/2021 13:32:12",
    price: "6000"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "12/21/2021 12:22:42",
    price: "6900"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "12/21/2021 12:22:42",
    price: "6900"
  },
  {
    item: "PATEK 7010/1R CHAMP",
    date: "12/21/2021 10:45:48",
    price: "72000"
  },
  {
    item: "CARTIER TANK MUST RED",
    date: "12/20/2021 12:10:51",
    price: "2975"
  },
  {
    item: "FREIDA ROTHMAN BRACELET",
    date: "12/17/2021 14:26:10",
    price: "0"
  },
  {
    item: "FREIDA ROTHMAN FLORAL",
    date: "12/17/2021 14:26:10",
    price: "0"
  },
  {
    item: "FREIDA ROTHMAN NECKLACE",
    date: "12/17/2021 14:26:10",
    price: "814"
  },
  {
    item: "FREIDA ROTHMAN PENDANT",
    date: "12/17/2021 14:26:10",
    price: "0"
  },
  {
    item: "PATEK 5167R",
    date: "12/17/2021 14:06:06",
    price: "98000"
  },
  {
    item: "CARTIER SANTOS WHSA0007 SKELETON",
    date: "12/17/2021 13:41:09",
    price: "23667"
  },
  {
    item: "CARTIER WB520002 BAIGNOIRE ROSE GOLD",
    date: "12/17/2021 13:35:05",
    price: "30000"
  },
  {
    item: "ROLEX 126334 BLUE DIAMOND OYSTER",
    date: "12/17/2021 11:39:58",
    price: "13650"
  },
  {
    item: "CARTIER TANK MUST GREEN",
    date: "12/17/2021 11:24:47",
    price: "2900"
  },
  {
    item: "CARTIER TANK MUST RED",
    date: "12/17/2021 11:24:47",
    price: "2900"
  },
  {
    item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
    date: "12/15/2021 14:29:11",
    price: "151000"
  },
  {
    item: "IWC IW388104 PILOT GREEN DIAL",
    date: "12/15/2021 14:18:11",
    price: "6250"
  },
  {
    item: "ROLEX 126231 WIMBLEDON JUBILEE",
    date: "12/13/2021 17:29:12",
    price: "12950"
  },
  {
    item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
    date: "12/13/2021 17:29:12",
    price: "16450"
  },
  {
    item: "ROLEX DATEJUST 278271 OYSTER PINK ROMAN",
    date: "12/13/2021 16:54:04",
    price: "11500"
  },
  {
    item: "PATEK 5270P PLATINUM SALMON DIAL",
    date: "12/13/2021 13:35:52",
    price: "174500"
  },
  {
    item: "TUDOR BLACK BAY 58 SILVER 925",
    date: "12/13/2021 12:50:50",
    price: "3700"
  },
  {
    item: "ROLEX SUBMARINER 126618 BLUE",
    date: "12/13/2021 12:30:18",
    price: "42550"
  },
  {
    item: "ROLEX 126334 BLUE INDEX JUBILEE",
    date: "12/13/2021 10:33:49",
    price: "13000"
  },
  {
    item: "ROLEX 1236231 DJUST 36MM ROMAN RHODIUM",
    date: "12/13/2021 10:07:42",
    price: "16500"
  },
  {
    item: "ROLEX 178273 DJUST 31MM WHITE ROMAN DIAL",
    date: "12/10/2021 12:47:12",
    price: "9700"
  },
  {
    item: "VAN CLEEF ARPELS ALHAMBRA ONYX NECKLACE",
    date: "12/09/2021 15:03:00",
    price: "5900"
  },
  {
    item: "IWC SPITFIRE IW387902 BRONZE GREEN DIAL",
    date: "12/08/2021 15:42:03",
    price: "5600"
  },
  {
    item: "ROLEX 228345 EISENKIESEL DIAMOND DIAL",
    date: "12/08/2021 13:50:49",
    price: "79200"
  },
  {
    item: "ROLEX CELLINI DUAL 50525 BLACK DIAL",
    date: "12/08/2021 13:49:54",
    price: "14950"
  },
  {
    item: "ROLEX DAY-DATE 228345 PINK DIAMOND DIAL",
    date: "12/08/2021 12:14:28",
    price: "61000"
  },
  {
    item: "ROLEX SKYDWELLER 326235 SLATE DIAL",
    date: "12/08/2021 12:05:49",
    price: "45200"
  },
  {
    item: "ROLEX 228235 SUNDUST ROMAN",
    date: "12/06/2021 16:37:19",
    price: "51000"
  },
  {
    item: "PATEK PHILIPPE 5146R CREAM DIAL",
    date: "12/06/2021 14:41:59",
    price: "45000"
  },
  {
    item: "ROLEX 81405 PEARL MASTER 34 RG DIAMOND",
    date: "12/06/2021 13:10:03",
    price: "135000"
  },
  {
    item: "ROLEX 326238 SKY DWELLER GOLD BLK DIAL",
    date: "12/06/2021 11:28:00",
    price: "42000"
  },
  {
    item: "ROLEX SUBMARINER 126618 BLUE",
    date: "12/03/2021 13:33:01",
    price: "42500"
  },
  {
    item: "CARTIER SANTOS WHSA0007 SKELETON",
    date: "12/03/2021 12:48:31",
    price: "24800"
  },
  {
    item: "CARTIER TANK MUST BLUE",
    date: "12/02/2021 17:57:39",
    price: "2755"
  },
  {
    item: "CARTIER TANK MUST RED",
    date: "12/02/2021 17:57:39",
    price: "2755"
  },
  {
    item: "JAEGAR LECOULTRE MARINER BLUE Q9068180",
    date: "12/02/2021 17:57:21",
    price: "8500"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "12/02/2021 17:36:28",
    price: "3600"
  },
  {
    item: "ROLEX 126301 DJUST SUNDUST SMOOTH OYSTER",
    date: "12/02/2021 17:15:57",
    price: "12600"
  },
  {
    item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
    date: "12/02/2021 11:57:28",
    price: "16300"
  },
  {
    item: "ROLEX DAYDATE 128235 PINK DIAMOND DIAL",
    date: "12/01/2021 13:36:48",
    price: "40000"
  },
  {
    item: "ROLEX EXPLORER 124273 TWO TONE 36MM",
    date: "12/01/2021 01:53:20",
    price: "11950"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "12/01/2021 01:53:20",
    price: "14950"
  },
  {
    item: "ROLEX DATEJUST 126234 SALMON DIAMOND JUB",
    date: "11/30/2021 17:12:15",
    price: "13200"
  },
  {
    item: "ROLEX SUBMARINER 126618 BLUE",
    date: "11/30/2021 14:06:34",
    price: "42500"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "11/30/2021 13:19:13",
    price: "33500"
  },
  {
    item: "CARTIER BALLON BLEU DE CARTIER W69012Z4",
    date: "11/30/2021 13:12:38",
    price: "4000"
  },
  {
    item: "TUDOR 79350 HERITAGE BLACK BAY CHRONO",
    date: "11/30/2021 12:47:37",
    price: "3100"
  },
  {
    item: "ROLEX 116688",
    date: "11/29/2021 13:32:06",
    price: "50500"
  },
  {
    item: "TUDOR ROYAL M28600 BLUE DIAL",
    date: "11/26/2021 15:38:14",
    price: "1900"
  },
  {
    item: "CARTIER TANK MUST BLUE",
    date: "11/26/2021 15:33:12",
    price: "2860"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "11/26/2021 15:33:12",
    price: "3400"
  },
  {
    item: "TUDOR BLACK BAY CERAMIC M79210CNU",
    date: "11/26/2021 15:33:12",
    price: "4500"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "11/24/2021 12:17:19",
    price: "7000"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "11/24/2021 12:17:19",
    price: "7000"
  },
  {
    item: "ROLEX DATEJUST PRES 278289RBR BUTTERFLY",
    date: "11/23/2021 18:12:48",
    price: "48000"
  },
  {
    item: "ROLEX 226659",
    date: "11/23/2021 12:49:46",
    price: "32100"
  },
  {
    item: "TUDOR BLACK BAY 58 SILVER 925",
    date: "11/23/2021 10:15:13",
    price: "4200"
  },
  {
    item: "ROLEX 228238 CHAMP ROMAN",
    date: "11/19/2021 12:32:20",
    price: "45000"
  },
  {
    item: "JAEGER LECOULTRE REVERSO 3978430 GREEN",
    date: "11/18/2021 14:31:03",
    price: "8000"
  },
  {
    item: "ROLEX 116234 DATEJUST WHITE ROMAN",
    date: "11/18/2021 14:03:22",
    price: "7000"
  },
  {
    item: "ROLEX 116334 BLK DIAL OYSTER FLUTED",
    date: "11/18/2021 14:03:10",
    price: "9500"
  },
  {
    item: "ROLEX 278273 GREEN DIAMOND DIAL",
    date: "11/18/2021 12:27:11",
    price: "12700"
  },
  {
    item: "TUDOR BLACK BAY CERAMIC M79210CNU",
    date: "11/18/2021 10:51:26",
    price: "4650"
  },
  {
    item: "ROLEX 124060LN",
    date: "11/18/2021 10:38:37",
    price: "13100"
  },
  {
    item: "ROLEX 116688",
    date: "11/17/2021 16:16:29",
    price: "50500"
  },
  {
    item: "ROLEX 126200 BLACK  INDEX JUBILEE",
    date: "11/17/2021 14:47:54",
    price: "8550"
  },
  {
    item: "ROLEX  228239 GREEN DIAL",
    date: "11/17/2021 10:52:07",
    price: "53000"
  },
  {
    item: "ROLEX 126231 36MM MOP DIAMOND DIAL OYS",
    date: "11/16/2021 18:23:57",
    price: "18500"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "11/16/2021 16:49:44",
    price: "7300"
  },
  {
    item: "ROLEX 226659",
    date: "11/16/2021 14:21:31",
    price: "31500"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "11/16/2021 11:45:36",
    price: "9275"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "11/15/2021 17:12:14",
    price: "7300"
  },
  {
    item: "LONGINES SPIRIT GREEN DIAL",
    date: "11/15/2021 17:03:18",
    price: "1250"
  },
  {
    item: "WILLIAM HENRY KNIFE SET",
    date: "11/15/2021 16:59:12",
    price: "1550"
  },
  {
    item: "ROLEX 126333 SILVER OYSTER FLU",
    date: "11/15/2021 15:39:56",
    price: "13500"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "11/15/2021 13:39:16",
    price: "9000"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "11/14/2021 21:22:17",
    price: "3700"
  },
  {
    item: "GRAND SEIKO SLGH005 WHITE BIRCH SHIRAKAB",
    date: "11/14/2021 20:56:45",
    price: "7900"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "11/14/2021 20:52:52",
    price: "6950"
  },
  {
    item: "CARTIER SANTOS WSSA0009 WHITE DIAL",
    date: "11/14/2021 20:52:52",
    price: "6950"
  },
  {
    item: "ROLEX SKYDWELLER 326235 SLATE DIAL",
    date: "11/12/2021 13:47:09",
    price: "46000"
  },
  {
    item: "PATEK PHILIPPE AQUANAUT 5072",
    date: "11/12/2021 11:58:36",
    price: "115000"
  },
  {
    item: "ROLEX 126234 36MM BLU DIAM DIAL FLU JUB",
    date: "11/12/2021 10:51:17",
    price: "11850"
  },
  {
    item: "GIRARD PERREGAUX LAUREATO BLACK 38MM",
    date: "11/11/2021 15:23:48",
    price: "13360"
  },
  {
    item: "ROLEX 126300 BLUE ROMAN OYSTER",
    date: "11/11/2021 12:36:39",
    price: "10650"
  },
  {
    item: "ROLEX 116509 BLU DIAL",
    date: "11/10/2021 18:16:51",
    price: "57075"
  },
  {
    item: "ROLEX 116508 WHITE DIAL",
    date: "11/10/2021 18:13:32",
    price: "56950"
  },
  {
    item: "TUDOR BLACK BAY 58 SILVER 925",
    date: "11/10/2021 10:09:25",
    price: "3725"
  },
  {
    item: "ROLEX 126334 BLACK INDEX JUB",
    date: "11/09/2021 12:07:31",
    price: "12800"
  },
  {
    item: "BREITLING RB2510371G1P1 PREMIER B25",
    date: "11/08/2021 17:05:01",
    price: "15000"
  },
  {
    item: "ROLEX 116681 yacht master 2",
    date: "11/08/2021 16:01:30",
    price: "26600"
  },
  {
    item: "ROLEX 126201 WIMBELDON OYSTER",
    date: "11/05/2021 12:32:55",
    price: "11000"
  },
  {
    item: "IWC SPITFIRE IW387902 BRONZE GREEN DIAL",
    date: "11/03/2021 14:06:29",
    price: "4750"
  },
  {
    item: "ROLEX 126600 SEA DWELLER RED LETTERS",
    date: "11/02/2021 20:41:45",
    price: "14950"
  },
  {
    item: "ROLEX 126334 BLUE INDEX JUBILEE",
    date: "11/01/2021 16:13:47",
    price: "12850"
  },
  {
    item: "ROLEX 128348 MOP DIAMOND DIAL DIAMON BEZ",
    date: "11/01/2021 15:01:47",
    price: "52500"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "11/01/2021 10:52:16",
    price: "8000"
  },
  {
    item: "RICHARD MILLE RM28",
    date: "10/29/2021 13:48:21",
    price: "75000"
  },
  {
    item: "ROLEX 124300 OYSTER PERPETUAL RED",
    date: "10/29/2021 13:37:58",
    price: "10500"
  },
  {
    item: "ROLEX 126600 SEA DWELLER RED LETTERS",
    date: "10/29/2021 12:56:49",
    price: "14500"
  },
  {
    item: "ROLEX SKYDWELLER 326238 WHITE DIAL",
    date: "10/29/2021 11:52:26",
    price: "39500"
  },
  {
    item: "ROLEX DATEJUST 126234 MOP DIAMOND JUBILE",
    date: "10/29/2021 11:05:53",
    price: "14000"
  },
  {
    item: "CARTIER WSSA0018 SANTOS XL BLUE",
    date: "10/28/2021 16:02:02",
    price: "7350"
  },
  {
    item: "ROLEX 126300 BLUE ROMAN JUB",
    date: "10/27/2021 13:24:17",
    price: "10000"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "10/27/2021 13:19:09",
    price: "37500"
  },
  {
    item: "GRAND SEIKO SPRING DRIVE SBGY007",
    date: "10/27/2021 10:51:22",
    price: "6100"
  },
  {
    item: "PATEK 5527G CALATRAVA BLACK DIAL",
    date: "10/26/2021 16:35:32",
    price: "28000"
  },
  {
    item: "CARTIER WSSA0018 SANTOS XL BLUE",
    date: "10/26/2021 15:44:23",
    price: "6450"
  },
  {
    item: "TUDOR BLACK BAY 58 79030B BLUE BRACELET",
    date: "10/26/2021 15:24:23",
    price: "3022"
  },
  {
    item: "DOXA SUB 300",
    date: "10/26/2021 15:24:11",
    price: "2075"
  },
  {
    item: "GRAND SEIKO SLGH005 WHITE BIRCH SHIRAKAB",
    date: "10/26/2021 15:24:11",
    price: "8100"
  },
  {
    item: "IWC IW388102 PILOT BLUE DIAL",
    date: "10/26/2021 15:24:11",
    price: "6200"
  },
  {
    item: "MIDO MULTIFORT PATRIMONY",
    date: "10/26/2021 15:24:11",
    price: "600"
  },
  {
    item: "TUDOR BLACK BAY 58 79012 BRONZE",
    date: "10/26/2021 15:22:45",
    price: "4926.59"
  },
  {
    item: "ROLEX 126234 36MM DJUST BLU MOTIF OYSTER",
    date: "10/26/2021 14:23:23",
    price: "11000"
  },
  {
    item: "RICHARD MILLE RM 60-01 YELLOW",
    date: "10/26/2021 11:10:38",
    price: "150000"
  },
  {
    item: "ROLEX 126300 WHITE ROMAN JUBILE",
    date: "10/26/2021 00:22:39",
    price: "10000"
  },
  {
    item: "ROLEX 116518LN CHAMP AND BLACK",
    date: "10/25/2021 23:12:00",
    price: "49500"
  },
  {
    item: "GRAND SEIKO SPRING DRIVE SBGY007",
    date: "10/25/2021 15:34:24",
    price: "6250"
  },
  {
    item: "PATEK PHILIPPE WORLD TIME 5230R",
    date: "10/25/2021 15:00:14",
    price: "38000"
  },
  {
    item: "PATEK 5930G COMPLICATIONS WORLD TIME",
    date: "10/25/2021 15:00:01",
    price: "55000"
  },
  {
    item: "ROLEX CELLINI DUAL 50525 BLACK DIAL",
    date: "10/25/2021 11:10:36",
    price: "15520"
  },
  {
    item: "ROLEX YACHTMASTER 268655 37MM",
    date: "10/22/2021 14:47:12",
    price: "24650"
  },
  {
    item: "ROLEX 126710 BLRO PEPSI OYSTER",
    date: "10/22/2021 14:15:19",
    price: "22000"
  },
  {
    item: "TUDOR BLACK BAY 58 79030B BLUE BRACELET",
    date: "10/22/2021 12:27:24",
    price: "3150"
  },
  {
    item: "CARTIER TANK MUST BLUE",
    date: "10/21/2021 17:08:19",
    price: "2800"
  },
  {
    item: "CARTIER TANK MUST GREEN",
    date: "10/21/2021 17:08:19",
    price: "2850"
  },
  {
    item: "ROLEX 124300 OYSTER PERPETUAL TURQ 41MM",
    date: "10/21/2021 14:18:56",
    price: "16500"
  },
  {
    item: "ROLEX 124300 OYSTER PREP YELLOW DIA",
    date: "10/21/2021 14:09:00",
    price: "12500"
  },
  {
    item: "ROLEX 116505 PINK DIAL",
    date: "10/21/2021 14:07:35",
    price: "60000"
  },
  {
    item: "ROLEX 126710 BLRO PEPSI OYSTER",
    date: "10/21/2021 14:05:33",
    price: "22000"
  },
  {
    item: "ROLEX EXPLORER 124273 TWO TONE 36MM",
    date: "10/21/2021 14:02:37",
    price: "12100"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "10/20/2021 10:39:28",
    price: "7350"
  },
  {
    item: "ROLEX DAYDATE 128235 PINK DIAMOND DIAL",
    date: "10/20/2021 09:48:04",
    price: "42750"
  },
  {
    item: "TUDOR BLACK BAY 58 SILVER 925",
    date: "10/18/2021 13:56:36",
    price: "3500"
  },
  {
    item: "ROLEX DATEJUST 126234 WIMBLEDON OYSTER",
    date: "10/18/2021 12:37:04",
    price: "10450"
  },
  {
    item: "ROLEX MANUAL BOOK",
    date: "10/18/2021 12:15:51",
    price: "12"
  },
  {
    item: "ROLEX TAG",
    date: "10/18/2021 12:15:51",
    price: "6"
  },
  {
    item: "PATEK 5167R",
    date: "10/15/2021 14:53:13",
    price: "84500"
  },
  {
    item: "PATEK PHILIPPE 5205R BLACK",
    date: "10/15/2021 14:38:18",
    price: "46500"
  },
  {
    item: "AUDEMARS PIGUET 26470ST OFFSHORE GREY",
    date: "10/15/2021 14:37:30",
    price: "43000"
  },
  {
    item: "ROLEX DATEJUST 126331 MOP DIAMOND JUBILE",
    date: "10/15/2021 12:26:32",
    price: "17800"
  },
  {
    item: "ROLEX 126334 WHITE INDEX JUB",
    date: "10/15/2021 11:30:46",
    price: "12750"
  },
  {
    item: "PATEK 5212A WHITE DIAL",
    date: "10/13/2021 15:58:28",
    price: "40000"
  },
  {
    item: "ROLEX 126233 DJUST 36MM GREEN DIAL",
    date: "10/13/2021 12:38:17",
    price: "16500"
  },
  {
    item: "TUDOR BLACK BAY CERAMIC M79210CNU",
    date: "10/13/2021 11:51:58",
    price: "4500"
  },
  {
    item: "ROLEX 126300 WHITE INDEX OYSTER",
    date: "10/12/2021 15:11:55",
    price: "9100"
  },
  {
    item: "ROLEX  126660 BLUE JAMES CAMERON",
    date: "10/12/2021 13:47:14",
    price: "17050"
  },
  {
    item: "OMEGA SPEEDMASTER MOONWATCH 310 30 42 50",
    date: "10/12/2021 12:39:46",
    price: "5800"
  },
  {
    item: "PATEK 5524G",
    date: "10/12/2021 11:19:54",
    price: "39500"
  },
  {
    item: "ROLEX BOX",
    date: "10/11/2021 17:04:25",
    price: "225"
  },
  {
    item: "ROLEX MANUAL BOOK",
    date: "10/11/2021 17:04:25",
    price: "0"
  },
  {
    item: "CARTIER TANK MUST GREEN",
    date: "10/11/2021 11:14:16",
    price: "3040"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "10/11/2021 10:25:17",
    price: "3450"
  },
  {
    item: "ROLEX 126231 RHODIUM JUB",
    date: "10/08/2021 12:23:48",
    price: "13300"
  },
  {
    item: "ROLEX BOX",
    date: "10/08/2021 10:50:44",
    price: "225"
  },
  {
    item: "CARTIER TANK MUST BLUE",
    date: "10/07/2021 15:45:30",
    price: "3034"
  },
  {
    item: "CARTIER TANK MUST GREEN",
    date: "10/07/2021 15:45:30",
    price: "3034"
  },
  {
    item: "CARTIER TANK MUST RED",
    date: "10/07/2021 15:45:30",
    price: "3034"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS LADIES 7118/1A",
    date: "10/07/2021 11:44:20",
    price: "52000"
  },
  {
    item: "ROLEX DAY-DATE 228345 PINK DIAMOND DIAL",
    date: "10/07/2021 11:43:33",
    price: "58500"
  },
  {
    item: "PATEK PHILIPPE CALATRAVA 6119R",
    date: "10/07/2021 11:42:45",
    price: "29000"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "10/07/2021 11:21:34",
    price: "7450"
  },
  {
    item: "CARTIER SANTOS WSSA0009 WHITE DIAL",
    date: "10/07/2021 11:21:34",
    price: "7450"
  },
  {
    item: "ROLEX  126660 BLUE JAMES CAMERON",
    date: "10/07/2021 11:15:45",
    price: "16950"
  },
  {
    item: "ROLEX DATEJUST 278240 BLUE ROMAN JUBILEE",
    date: "10/06/2021 15:52:13",
    price: "7000"
  },
  {
    item: "ROLEX 126600 SEA DWELLER RED LETTERS",
    date: "10/06/2021 15:08:41",
    price: "14150"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "10/06/2021 15:04:14",
    price: "36000"
  },
  {
    item: "SHIPPING SERVICES",
    date: "10/06/2021 00:40:20",
    price: "1400"
  },
  {
    item: "ROLEX 50519 WG BLK DIAL",
    date: "10/05/2021 14:50:25",
    price: "14320"
  },
  {
    item: "PATEK 5164R",
    date: "10/05/2021 04:53:50",
    price: "114000"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 277200 PINK DIAL",
    date: "10/04/2021 16:25:31",
    price: "5200"
  },
  {
    item: "ROLEX 128238 WHITE ROMAN DIAL",
    date: "10/04/2021 14:32:47",
    price: "32000"
  },
  {
    item: "PATEK PHILLIPE WATCH WINDER",
    date: "10/04/2021 13:28:53",
    price: "1207"
  },
  {
    item: "PREOWNED ROLEX 126331 SUNDUST JUBILEE",
    date: "10/04/2021 12:19:16",
    price: "13000"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS LADIES 7118/1A",
    date: "10/04/2021 11:59:27",
    price: "51650"
  },
  {
    item: "ROLEX 228235 GREEN ROMAN",
    date: "10/04/2021 11:06:12",
    price: "58500"
  },
  {
    item: "WHITE GOLD DIAMOND NECKLACE",
    date: "10/03/2021 21:36:48",
    price: "600"
  },
  {
    item: "ROUND BRILLIANT DIAMOND STUD EARRINGS",
    date: "10/03/2021 21:21:14",
    price: "900"
  },
  {
    item: "ROLEX 126303 WIMBELDON SMOOTH BEZ JUB",
    date: "10/01/2021 12:20:31",
    price: "13450"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 276200 PINK 28MM",
    date: "10/01/2021 00:34:30",
    price: "0"
  },
  {
    item: "PATEK PHILIPPE AQUANAUT 5267A WHITE",
    date: "09/30/2021 23:59:04",
    price: "49500"
  },
  {
    item: "ROLEX 116519 STEEL DIAL",
    date: "09/30/2021 23:59:04",
    price: "44000"
  },
  {
    item: "ROLEX DAYTONA 116518 BLACK DIAMOND DIAL",
    date: "09/30/2021 23:59:04",
    price: "45500"
  },
  {
    item: "TUDOR BLACK BAY 58 M79030B SMURF",
    date: "09/30/2021 19:36:33",
    price: "3022"
  },
  {
    item: "JAEGER-LECOULTRE REVERSO Q2618540",
    date: "09/30/2021 19:35:41",
    price: "3150"
  },
  {
    item: "TUDOR BLACK BAY M79540 SILVER DIAL",
    date: "09/30/2021 19:34:57",
    price: "1830"
  },
  {
    item: "LONGINES SPIRIT PRESTIGE L38104939 BLUE",
    date: "09/30/2021 19:34:16",
    price: "1100"
  },
  {
    item: "ROLEX 124060LN",
    date: "09/30/2021 16:21:46",
    price: "13050"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "09/30/2021 12:27:04",
    price: "3350"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 126000 GREEN",
    date: "09/30/2021 11:51:00",
    price: "9200"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "09/27/2021 12:31:57",
    price: "7450"
  },
  {
    item: "PATEK 5270P PLATINUM SALMON DIAL",
    date: "09/24/2021 13:47:43",
    price: "175000"
  },
  {
    item: "ROLEX 126231 36MM PINK ROMAN JUB",
    date: "09/24/2021 12:43:49",
    price: "15600"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "09/23/2021 16:04:43",
    price: "7450"
  },
  {
    item: "CARTIER WSSA0018 SANTOS XL BLUE",
    date: "09/23/2021 16:01:21",
    price: "7450"
  },
  {
    item: "ROLEX 277200 OYSTER PERPETUAL ORANGE DIA",
    date: "09/23/2021 15:32:26",
    price: "5950"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "09/23/2021 10:36:10",
    price: "3446"
  },
  {
    item: "CARTIER TANK MUST RED",
    date: "09/23/2021 10:34:39",
    price: "3169"
  },
  {
    item: "ROLEX 326938 SKY DWELLER CHAMP DIAL",
    date: "09/20/2021 12:38:19",
    price: "51650"
  },
  {
    item: "ROLEX 228235 SUNDUST ROMAN",
    date: "09/19/2021 18:04:53",
    price: "45000"
  },
  {
    item: "ROLEX 326934 SKY DWELLER WHT DIAL JUB",
    date: "09/17/2021 14:54:15",
    price: "22000"
  },
  {
    item: "ROLEX 124300 OYSTER PREP YELLOW DIA",
    date: "09/17/2021 14:46:24",
    price: "12000"
  },
  {
    item: "ROLEX 326933 SKY DWELLER BLK DIAL JUB",
    date: "09/17/2021 14:44:32",
    price: "22000"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "09/17/2021 11:36:07",
    price: "14000"
  },
  {
    item: "ROLEX 116500LN BLACK",
    date: "09/16/2021 23:18:19",
    price: "31500"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "09/15/2021 12:06:07",
    price: "7450"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "09/15/2021 10:26:30",
    price: "35500"
  },
  {
    item: "ROLEX DAYTONA 116503 WHITE MOP DIAMOND",
    date: "09/14/2021 12:57:55",
    price: "28800"
  },
  {
    item: "PATEK 5269R",
    date: "09/13/2021 22:11:58",
    price: "62000"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "09/13/2021 22:11:58",
    price: "21000"
  },
  {
    item: "ROLEX YACHTMASTER 37MM 268622 SLATE",
    date: "09/13/2021 22:11:58",
    price: "11200"
  },
  {
    item: "ROLEX 277200 OYSTER PERPETUAL BLACK",
    date: "09/13/2021 14:35:51",
    price: "4725"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 277200 BLUE",
    date: "09/13/2021 14:35:51",
    price: "4725"
  },
  {
    item: "ROLEX DAYDATE 228206 BAGUETTE DIAMONDS",
    date: "09/12/2021 01:38:37",
    price: "73750"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "09/10/2021 17:49:39",
    price: "22800"
  },
  {
    item: "ROLEX 116518LN CHAMP AND BLACK",
    date: "09/10/2021 17:49:39",
    price: "48000"
  },
  {
    item: "ROLEX EXPLORER 216570 POLAR WHITE",
    date: "09/10/2021 14:35:18",
    price: "10750"
  },
  {
    item: "WILLIAM HENRY OUTBACK KNIFE",
    date: "09/10/2021 13:23:03",
    price: "1"
  },
  {
    item: "ROLEX 228235 SUNDUST ROMAN",
    date: "09/10/2021 13:21:37",
    price: "0"
  },
  {
    item: "ROLEX 126233 CHAMP OYSTER",
    date: "09/10/2021 10:51:40",
    price: "13200"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "09/09/2021 16:54:26",
    price: "14000"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "09/09/2021 16:52:36",
    price: "13500"
  },
  {
    item: "ROLEX 116500LN BLACK",
    date: "09/09/2021 16:46:43",
    price: "31400"
  },
  {
    item: "ROLEX 126600 SEA DWELLER RED LETTERS",
    date: "09/09/2021 16:39:26",
    price: "14350"
  },
  {
    item: "PATEK PHILIPPE CALATRAVA 6119R",
    date: "09/09/2021 14:37:36",
    price: "0"
  },
  {
    item: "ROLEX DAYDATE 128238 TURQUOISE DIAMOND",
    date: "09/09/2021 13:41:48",
    price: "47000"
  },
  {
    item: "ROLEX DAYDATE 128238 TURQUOISE DIAMOND",
    date: "09/09/2021 13:35:57",
    price: "46250"
  },
  {
    item: "ROLEX DAYTONA 116503 WHITE MOP DIAMOND",
    date: "09/02/2021 18:06:14",
    price: "28500"
  },
  {
    item: "ROLEX 116334 BLK DIAL OYSTER FLUTED",
    date: "09/02/2021 15:48:14",
    price: "0"
  },
  {
    item: "ROLEX 278271 SUNDUST DIAMOND DIAL",
    date: "09/02/2021 15:05:32",
    price: "12700"
  },
  {
    item: "RICHARD MILLE RM035 BABY NADAL",
    date: "09/01/2021 18:47:42",
    price: "225000"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "09/01/2021 17:13:32",
    price: "17600"
  },
  {
    item: "ROLEX 278271 SUNDUST DIAMOND DIAL",
    date: "08/31/2021 17:49:46",
    price: "14200"
  },
  {
    item: "ROLEX DAYTONA 116518 BLACK DIAMOND DIAL",
    date: "08/31/2021 14:32:16",
    price: "45000"
  },
  {
    item: "ROLEX 126231 36MM WHITE DIAL FLUTED JUB",
    date: "08/31/2021 14:13:39",
    price: "12000"
  },
  {
    item: "ROLEX 126333 CHAMP DIAMOND OYSTER",
    date: "08/31/2021 14:10:08",
    price: "14550"
  },
  {
    item: "ROLEX 126334 BLK DIAMOND OYSTER FLUTED",
    date: "08/31/2021 14:10:08",
    price: "13000"
  },
  {
    item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
    date: "08/31/2021 13:32:17",
    price: "136000"
  },
  {
    item: "278271 PINK DIMOAND DIAL JUBILEE",
    date: "08/31/2021 00:11:00",
    price: "12700"
  },
  {
    item: "ROLEX 126333 CHAMP DIAMOND JUBILEE",
    date: "08/31/2021 00:11:00",
    price: "15200"
  },
  {
    item: "ROLEX DATEJUST 278274 MOP DIA JUBILEE 31",
    date: "08/31/2021 00:10:59",
    price: "12500"
  },
  {
    item: "CARTIER SANTOS ROSE GOLD SKELETON 0016",
    date: "08/30/2021 15:47:17",
    price: "53500"
  },
  {
    item: "ROLEX 116681 yacht master 2",
    date: "08/30/2021 15:20:20",
    price: "26000"
  },
  {
    item: "PATEK PHILIPPE AQUANAUT 5267 GREEN",
    date: "08/30/2021 11:18:47",
    price: "54000"
  },
  {
    item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
    date: "08/30/2021 10:40:00",
    price: "14500"
  },
  {
    item: "ROLEX 126719BLRO MEOTERITE DIAL",
    date: "08/30/2021 10:38:26",
    price: "61500"
  },
  {
    item: "ROLEX 118205 DAY DATE 36MM RGLD",
    date: "08/30/2021 10:37:14",
    price: "23000"
  },
  {
    item: "ROLEX 128348 TURQ DIAL DIAMOND BEZEL",
    date: "08/25/2021 11:27:40",
    price: "64800"
  },
  {
    item: "ROLEX 126719BLRO MEOTERITE DIAL",
    date: "08/23/2021 12:32:53",
    price: "59500"
  },
  {
    item: "CARTIER SANTOS WGSA0030 WHITE DIAL",
    date: "08/18/2021 16:22:46",
    price: "28500"
  },
  {
    item: "ROLEX OYSTERFLEX STRAP",
    date: "08/18/2021 15:34:54",
    price: "200"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "08/18/2021 13:48:33",
    price: "42000"
  },
  {
    item: "ROLEX 228238  SILVER HONEYCOMB",
    date: "08/17/2021 11:42:38",
    price: "39150"
  },
  {
    item: "ROLEX WARRANTY BOOKLET AND WALLET",
    date: "08/17/2021 11:11:36",
    price: "30"
  },
  {
    item: "ROLEX MANUAL BOOK",
    date: "08/17/2021 11:09:16",
    price: "20"
  },
  {
    item: "ROLEX YACHTMASTER 2 116680",
    date: "08/16/2021 17:55:35",
    price: "19400"
  },
  {
    item: "ROLEX MANUAL BOOK",
    date: "08/16/2021 15:23:25",
    price: "10"
  },
  {
    item: "ROLEX WARRANTY BOOKLET AND WALLET",
    date: "08/16/2021 15:23:25",
    price: "10"
  },
  {
    item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
    date: "08/16/2021 13:00:48",
    price: "135000"
  },
  {
    item: "ROLEX 277200 OP31 GREEN DIAL",
    date: "08/16/2021 12:34:52",
    price: "6000"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "08/12/2021 16:39:40",
    price: "6700"
  },
  {
    item: "OMEGA SPEEDMASTER O31030425001002",
    date: "08/12/2021 16:39:40",
    price: "5720"
  },
  {
    item: "PATEK 5711/1300A GREEN DIAL DIAMOND BEZ",
    date: "08/12/2021 14:29:24",
    price: "700000"
  },
  {
    item: "ROLEX 226659",
    date: "08/11/2021 16:49:53",
    price: "29500"
  },
  {
    item: "ROLEX DATEJUST 126303 SILVER OYSTER",
    date: "08/11/2021 13:13:42",
    price: "12500"
  },
  {
    item: "PATEK PHILIPPE AQUANAUT 5268/200R WHITE",
    date: "08/11/2021 13:11:55",
    price: "75000"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "08/11/2021 10:42:59",
    price: "42000"
  },
  {
    item: "ROLEX 268621 37MM CHOC DIAL TWO TONE",
    date: "08/11/2021 10:42:37",
    price: "13500"
  },
  {
    item: "ROLEX 116689 WGOLD YMASTER 2",
    date: "08/11/2021 10:39:58",
    price: "44000"
  },
  {
    item: "PATEK 5740/1G BLUE DIAL",
    date: "08/11/2021 10:36:52",
    price: "230000"
  },
  {
    item: "ROLEX 279171 CHOCO ROMAN JUBILE",
    date: "08/10/2021 15:11:33",
    price: "9357.5"
  },
  {
    item: "ROLEX 126333 CHAMPAGNE JUBILEE",
    date: "08/10/2021 14:49:48",
    price: "13250"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "08/09/2021 18:05:55",
    price: "18100"
  },
  {
    item: "PATEK 5146J SLATE DIAL",
    date: "08/09/2021 17:29:38",
    price: "30000"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS 7010/1R WHITE",
    date: "08/09/2021 17:29:37",
    price: "58000"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "08/09/2021 17:29:37",
    price: "34000"
  },
  {
    item: "PATEK PHILIPPE CALATRAVA 6119R",
    date: "08/09/2021 15:23:16",
    price: "32500"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 276200 PINK 28MM",
    date: "08/09/2021 14:30:23",
    price: "4500"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "08/09/2021 13:16:06",
    price: "17500"
  },
  {
    item: "TUDOR BLACK BAY CERAMIC M79210CNU",
    date: "08/09/2021 12:22:40",
    price: "4700"
  },
  {
    item: "PATEK 5740/1G BLUE DIAL",
    date: "08/09/2021 11:55:35",
    price: "231500"
  },
  {
    item: "PATEK PHILIPPE WORLD TIME 5230R",
    date: "08/09/2021 11:53:51",
    price: "37000"
  },
  {
    item: "ROLEX 326933 WHT DIAL JUB",
    date: "08/05/2021 15:56:08",
    price: "21000"
  },
  {
    item: "CARTIER SANTOS WHITE STRAP DIAMOND BEZEL",
    date: "08/05/2021 14:39:46",
    price: "7500"
  },
  {
    item: "ROLEX 126234 36MM DJUST BLK DIAL FLU JUB",
    date: "08/05/2021 11:03:26",
    price: "8300"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "08/04/2021 15:57:12",
    price: "14000"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "08/03/2021 19:18:25",
    price: "17500"
  },
  {
    item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
    date: "08/03/2021 13:55:24",
    price: "15200"
  },
  {
    item: "ROLEX DAYTONA 116518 PAUL NEWMAN",
    date: "08/02/2021 15:45:35",
    price: "45000"
  },
  {
    item: "ROLEX BOX",
    date: "08/02/2021 12:51:25",
    price: "300"
  },
  {
    item: "ROLEX 126231 WHITE ROMAN JUBILEE",
    date: "07/30/2021 15:01:33",
    price: "12500"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "07/30/2021 13:33:54",
    price: "19000"
  },
  {
    item: "ROLEX 116500LN BLACK",
    date: "07/30/2021 13:31:09",
    price: "31250"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "07/30/2021 13:25:46",
    price: "13700"
  },
  {
    item: "ROLEX 126334 WIMBELDON OYSTER",
    date: "07/30/2021 12:17:33",
    price: "12150"
  },
  {
    item: "ROLEX 126710 PEPSI JUBILEE",
    date: "07/29/2021 17:37:29",
    price: "20400"
  },
  {
    item: "ROLEX YACHTMASTER 37MM 268622 SLATE",
    date: "07/29/2021 16:48:31",
    price: "11350"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "07/29/2021 13:15:49",
    price: "7325"
  },
  {
    item: "CARTIER WSSA0018 SANTOS XL BLUE",
    date: "07/29/2021 13:04:52",
    price: "7400"
  },
  {
    item: "TUDOR BLACK BAY 58 SILVER 925",
    date: "07/29/2021 12:52:41",
    price: "4300"
  },
  {
    item: "ROLEX 116519 BLK DIAMOND DIAL",
    date: "07/28/2021 15:15:55",
    price: "41550"
  },
  {
    item: "AUDEMARS PIGUET 15400OR BLACK DIAL",
    date: "07/28/2021 10:42:10",
    price: "42500"
  },
  {
    item: "ROLEX 126710 BLRO PEPSI OYSTER",
    date: "07/28/2021 10:34:15",
    price: "21500"
  },
  {
    item: "ROLEX 268655 YMASTER 37MM PAVE DIAL RGLD",
    date: "07/27/2021 13:11:43",
    price: "41000"
  },
  {
    item: "PANERAI PAM01070 SUBMERISBLE GOLDTEC",
    date: "07/27/2021 11:41:27",
    price: "23000"
  },
  {
    item: "PATEK 5320G",
    date: "07/26/2021 17:31:01",
    price: "65000"
  },
  {
    item: "ROLEX SKYDWELLER 326934 BLUE JUBILEE",
    date: "07/26/2021 15:24:23",
    price: "29000"
  },
  {
    item: "ROLEX YACHTMASTER 2 116680",
    date: "07/26/2021 15:20:23",
    price: "20000"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "07/26/2021 15:20:05",
    price: "43500"
  },
  {
    item: "ROLEX 126710 PEPSI JUBILEE",
    date: "07/26/2021 15:16:25",
    price: "19000"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "07/26/2021 15:00:23",
    price: "17400"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "07/26/2021 14:58:35",
    price: "17800"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "07/26/2021 13:55:59",
    price: "34000"
  },
  {
    item: "ROLEX 126200 PALM MOTIF OYSTER",
    date: "07/26/2021 13:51:03",
    price: "11000"
  },
  {
    item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
    date: "07/26/2021 11:58:54",
    price: "16850"
  },
  {
    item: "ROLEX DAYTONA 116509 PAVE DIAMOND ARABIC",
    date: "07/26/2021 11:43:59",
    price: "49000"
  },
  {
    item: "ROLEX DATEJUS 126234 BLUE DIAMOND JUBILE",
    date: "07/26/2021 11:16:31",
    price: "11000"
  },
  {
    item: "RICHARD MILLE RM61-01 YOHAN BLAKE",
    date: "07/23/2021 16:41:15",
    price: "300000"
  },
  {
    item: "ROLEX 116300 DJUST RHODIUM DIAL ARABIC",
    date: "07/23/2021 14:33:53",
    price: "8500"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "07/22/2021 14:48:32",
    price: "7400"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "07/22/2021 14:48:32",
    price: "7400"
  },
  {
    item: "ROLEX 116506 PLAIN DIAL",
    date: "07/22/2021 13:53:28",
    price: "114000"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "07/21/2021 12:07:18",
    price: "22500"
  },
  {
    item: "ROLEX 116505 CHOC DIAL",
    date: "07/21/2021 12:07:18",
    price: "54000"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "07/21/2021 12:07:18",
    price: "8100"
  },
  {
    item: "ROLEX 124300 OYSTER PREP YELLOW DIA",
    date: "07/21/2021 12:07:18",
    price: "11000"
  },
  {
    item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
    date: "07/21/2021 12:07:18",
    price: "43650"
  },
  {
    item: "ROLEX YACHTMASTER 268655 37MM",
    date: "07/21/2021 12:07:18",
    price: "22000"
  },
  {
    item: "PANERAI PAM01393 LUMINOR BLUE DIAL",
    date: "07/21/2021 10:26:00",
    price: "6750"
  },
  {
    item: "ROLEX DAYDATE 228206 BAGUETTE DIAMONDS",
    date: "07/20/2021 13:52:50",
    price: "71000"
  },
  {
    item: "ROLEX 226570 EXPLORER II BLK DIAL",
    date: "07/20/2021 12:14:59",
    price: "11200"
  },
  {
    item: "ROLEX 326933 BLACK DIAL",
    date: "07/19/2021 14:35:57",
    price: "19050"
  },
  {
    item: "PATEK 5267/200A AQUANAUT STEEL BLK DIAM",
    date: "07/19/2021 12:31:50",
    price: "58000"
  },
  {
    item: "PATEK BOX",
    date: "07/19/2021 12:15:46",
    price: "500"
  },
  {
    item: "PATEK 5320G",
    date: "07/18/2021 00:35:59",
    price: "65000"
  },
  {
    item: "PO ROLEX 116500 DAYTONA WHT DIAL",
    date: "07/17/2021 23:45:29",
    price: "33000"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "07/17/2021 23:45:29",
    price: "35250"
  },
  {
    item: "ROLEX 326935 SKYDWELLER RHODIUM ROSE",
    date: "07/17/2021 23:43:35",
    price: "59500"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "07/15/2021 12:43:59",
    price: "28800"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 277200 TIFFANY 31",
    date: "07/15/2021 11:37:27",
    price: "8800"
  },
  {
    item: "PATEK 5968G BLUE DIAL CHRONO",
    date: "07/14/2021 16:42:09",
    price: "170000"
  },
  {
    item: "PATEK 6119G CALATRAVA",
    date: "07/14/2021 15:20:24",
    price: "27000"
  },
  {
    item: "ROLEX 277200 OYSTER PERPETUAL BLACK",
    date: "07/14/2021 15:13:31",
    price: "5400"
  },
  {
    item: "ROLEX 228238 DAY DATE CHAMGPAGNE STICK",
    date: "07/14/2021 14:21:15",
    price: "36250"
  },
  {
    item: "OMEGA SPEEDMASTER 321 MOONWATCH",
    date: "07/14/2021 12:13:04",
    price: "14100"
  },
  {
    item: "ROLEX 126300 BLACK INDEX JUBILEE",
    date: "07/14/2021 12:06:01",
    price: "10000"
  },
  {
    item: "ROLEX 228238 CHAMP ROMAN",
    date: "07/13/2021 17:59:21",
    price: "0"
  },
  {
    item: "ROLEX 228238 DAY DATE CHAMGPAGNE STICK",
    date: "07/13/2021 17:59:10",
    price: "0"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "07/12/2021 18:07:26",
    price: "43950"
  },
  {
    item: "PO ROLEX 116500 DAYTONA WHT DIAL",
    date: "07/12/2021 15:06:44",
    price: "35250"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "07/12/2021 15:06:01",
    price: "8100"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "07/12/2021 13:25:44",
    price: "43500"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "07/12/2021 11:08:42",
    price: "8850"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "07/12/2021 10:29:14",
    price: "35250"
  },
  {
    item: "ROLEX 126710 PEPSI JUBILEE",
    date: "07/12/2021 10:25:34",
    price: "19000"
  },
  {
    item: "ROLEX  126660 BLUE JAMES CAMERON",
    date: "07/09/2021 12:35:38",
    price: "16150"
  },
  {
    item: "PATEK 5726/1A-014",
    date: "07/08/2021 15:40:59",
    price: "136500"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "07/07/2021 16:28:32",
    price: "43750"
  },
  {
    item: "PATEK 7118/1R WHITE",
    date: "07/06/2021 16:31:06",
    price: "69500"
  },
  {
    item: "WATCH WINDER",
    date: "07/06/2021 15:43:38",
    price: "800"
  },
  {
    item: "ROLEX 126200 BLACK  INDEX JUBILEE",
    date: "07/06/2021 15:32:53",
    price: "7300"
  },
  {
    item: "CARTIER WSSA0018 SANTOS XL BLUE",
    date: "07/06/2021 14:18:29",
    price: "7300"
  },
  {
    item: "TUDOR ROYAL MOP DIAL M28300-0005",
    date: "07/06/2021 14:17:41",
    price: "3047"
  },
  {
    item: "BREITLING CHRONOMAT UB0134101B1U1",
    date: "07/06/2021 14:17:06",
    price: "9000"
  },
  {
    item: "PATEK PHILIPPE 5235/50R ANNUAL CALENDAR",
    date: "07/06/2021 14:07:44",
    price: "36500"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "07/06/2021 14:00:14",
    price: "8000"
  },
  {
    item: "JAEGER LECOULTRE REVERSO 3978480",
    date: "07/06/2021 13:33:32",
    price: "6150"
  },
  {
    item: "ROLEX 326238 SKY DWELLER GOLD BLK DIAL",
    date: "07/02/2021 09:11:51",
    price: "41000"
  },
  {
    item: "ROLEX SKYDWELLER 326238 CHAMPAGNE DIAL",
    date: "07/01/2021 16:08:46",
    price: "39150"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "07/01/2021 14:39:33",
    price: "43500"
  },
  {
    item: "ROLEX 126233 DATEJUST 36 WIMBLEDON",
    date: "06/30/2021 13:36:25",
    price: "11700"
  },
  {
    item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
    date: "06/29/2021 17:32:28",
    price: "17000"
  },
  {
    item: "PANERAI PAM00510 8 DAYS",
    date: "06/29/2021 17:06:24",
    price: "4290"
  },
  {
    item: "ULYSSE NARDIN EXECUTIVE DUAL TIME BLACK",
    date: "06/29/2021 17:06:24",
    price: "4950"
  },
  {
    item: "ROLEX 326938 SKY DWELLER BLK DIAL",
    date: "06/29/2021 16:26:37",
    price: "52000"
  },
  {
    item: "ROLEX CELLINI 50535 MOONPHASE",
    date: "06/29/2021 14:24:00",
    price: "23500"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "06/28/2021 16:46:11",
    price: "12950"
  },
  {
    item: "ROLEX DAY-DATE 228345 CHOCOLATE DIAMOND",
    date: "06/28/2021 11:08:11",
    price: "60000"
  },
  {
    item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
    date: "06/24/2021 13:32:50",
    price: "16800"
  },
  {
    item: "ROLEX 126710 BLRO PEPSI OYSTER",
    date: "06/24/2021 11:52:48",
    price: "21500"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 277200 PINK DIAL",
    date: "06/23/2021 14:08:44",
    price: "7600"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "06/23/2021 14:04:10",
    price: "7200"
  },
  {
    item: "CARTIER WSSA0018 SANTOS XL BLUE",
    date: "06/23/2021 14:04:10",
    price: "7200"
  },
  {
    item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
    date: "06/23/2021 13:37:20",
    price: "15200"
  },
  {
    item: "ROLEX SUBMARINER 126618 BLACK DIAL",
    date: "06/23/2021 10:54:01",
    price: "39000"
  },
  {
    item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
    date: "06/23/2021 10:52:51",
    price: "16600"
  },
  {
    item: "ROLEX 228239 BLUE ROMAN DIAL",
    date: "06/23/2021 10:46:21",
    price: "39000"
  },
  {
    item: "ROLEX 278243 DJUST 31MM DOMED BEZ OYSTER",
    date: "06/22/2021 16:07:12",
    price: "10350"
  },
  {
    item: "AUDEMARS PIGUET 26579CB OO",
    date: "06/22/2021 13:43:53",
    price: "200000"
  },
  {
    item: "AUDEMARS PIGUET 26579CB OO",
    date: "06/17/2021 17:17:45",
    price: "68000"
  },
  {
    item: "PATEK 5930G COMPLICATIONS WORLD TIME",
    date: "06/17/2021 16:59:24",
    price: "54500"
  },
  {
    item: "ROLEX 126710BLNR GMT BATMAN OYSTER",
    date: "06/17/2021 13:00:42",
    price: "18200"
  },
  {
    item: "PO ROLEX 116500 DAYTONA WHT DIAL",
    date: "06/16/2021 15:05:11",
    price: "34000"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 276200 PINK 28MM",
    date: "06/16/2021 14:50:01",
    price: "5150"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "06/16/2021 14:07:17",
    price: "13000"
  },
  {
    item: "ROLEX 116610LV SUBMARINER HULK",
    date: "06/16/2021 14:07:17",
    price: "22000"
  },
  {
    item: "ROLEX 228235 WHITE ROMAN",
    date: "06/16/2021 13:37:20",
    price: "46000"
  },
  {
    item: "ROLEX  126660 BLUE JAMES CAMERON",
    date: "06/16/2021 12:40:04",
    price: "15800"
  },
  {
    item: "ROLEX BOX",
    date: "06/15/2021 11:34:14",
    price: "190"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK 26740ST BLUE",
    date: "06/14/2021 15:59:47",
    price: "27500"
  },
  {
    item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
    date: "06/14/2021 14:09:56",
    price: "14000"
  },
  {
    item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
    date: "06/14/2021 14:09:56",
    price: "14950"
  },
  {
    item: "AUDEMARS PIGUET BLACK SKELETON 26585CE",
    date: "06/14/2021 10:37:42",
    price: "400000"
  },
  {
    item: "ZENITH 0331003600/69M3100 CHRONOGRAPH",
    date: "06/11/2021 14:42:13",
    price: "8500"
  },
  {
    item: "AUDEMARS PIGUET 26579CB OO",
    date: "06/11/2021 14:25:47",
    price: "268000"
  },
  {
    item: "ROLEX 126600 SEA DWELLER RED LETTERS",
    date: "06/10/2021 16:39:42",
    price: "14850"
  },
  {
    item: "ROLEX 116519 STEEL DIAL",
    date: "06/10/2021 13:24:40",
    price: "42500"
  },
  {
    item: "ROLEX 126719 BLRO  BLUE DIAL",
    date: "06/10/2021 11:25:31",
    price: "44975"
  },
  {
    item: "ROLEX CELLINI 50535 MOONPHASE",
    date: "06/09/2021 14:02:39",
    price: "24000"
  },
  {
    item: "278271 PINK DIMOAND DIAL JUBILEE",
    date: "06/09/2021 13:42:15",
    price: "13200"
  },
  {
    item: "TUDOR 79360N OPALINE DIAL 41MM",
    date: "06/09/2021 13:29:45",
    price: "6000"
  },
  {
    item: "ROLEX 126333 BLACK OYSTER",
    date: "06/09/2021 12:44:44",
    price: "12800"
  },
  {
    item: "PATEK 5524G",
    date: "06/09/2021 12:14:57",
    price: "39000"
  },
  {
    item: "CARTIER SANTOS WHSA0007 SKELETON",
    date: "06/08/2021 17:33:08",
    price: "23680"
  },
  {
    item: "ROLEX 116618LN",
    date: "06/08/2021 16:28:37",
    price: "36000"
  },
  {
    item: "ROLEX 116688",
    date: "06/08/2021 15:42:41",
    price: "43700"
  },
  {
    item: "TUDOR BLACK BAY CERAMIC M79210CNU",
    date: "06/08/2021 14:10:04",
    price: "5400"
  },
  {
    item: "ROLEX 126600 SEA DWELLER RED LETTERS",
    date: "06/07/2021 15:01:12",
    price: "13000"
  },
  {
    item: "ROLEX 126331 CHOC DIAL OYSTER",
    date: "06/07/2021 14:11:31",
    price: "14000"
  },
  {
    item: "ROLEX SKYDWELLER 326935 CHOCOLATE INDEX",
    date: "06/07/2021 13:58:21",
    price: "60000"
  },
  {
    item: "PATEK NAUTILUS 7118 DIAMOND BLUE",
    date: "06/07/2021 13:56:42",
    price: "60969"
  },
  {
    item: "PATEK PHILIPPE 5396R WHITE DIAL",
    date: "06/07/2021 13:56:31",
    price: "41000"
  },
  {
    item: "ROLEX 116681 yacht master 2",
    date: "06/07/2021 10:33:19",
    price: "23000"
  },
  {
    item: "ROLEX 126618LB 41MM SUBMARINER YELLOW",
    date: "06/04/2021 11:25:46",
    price: "39500"
  },
  {
    item: "ROLEX 126618LB 41MM SUBMARINER YELLOW",
    date: "06/03/2021 19:42:28",
    price: "39500"
  },
  {
    item: "ROLEX BOX",
    date: "06/03/2021 19:41:07",
    price: "198.01"
  },
  {
    item: "PATEK 7300/1A BLUE",
    date: "06/03/2021 15:15:37",
    price: "18500"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "06/03/2021 14:36:04",
    price: "21650"
  },
  {
    item: "CARTIER ROADSTER",
    date: "06/03/2021 14:17:35",
    price: "2079.8"
  },
  {
    item: "GIRARD PERREGAUX 81010-11-635-11A",
    date: "06/03/2021 11:09:31",
    price: "8500"
  },
  {
    item: "PANERAI PAM02020",
    date: "06/02/2021 18:17:04",
    price: "4963"
  },
  {
    item: "ROLEX 126600 SEA DWELLER RED LETTERS",
    date: "06/02/2021 18:11:29",
    price: "13800"
  },
  {
    item: "ROLEX 116506 PLAIN DIAL",
    date: "06/02/2021 16:35:17",
    price: "114000"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "06/02/2021 14:54:23",
    price: "6900"
  },
  {
    item: "CARTIER SANTOS WHSA0007 SKELETON",
    date: "06/02/2021 14:50:44",
    price: "23600"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "06/02/2021 14:50:44",
    price: "7100"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "06/02/2021 14:15:58",
    price: "28200"
  },
  {
    item: "PATEK 5968A",
    date: "06/02/2021 14:02:53",
    price: "129000"
  },
  {
    item: "AUDEMARS PIGUET 15400ST SILVER DIAL",
    date: "06/02/2021 12:40:51",
    price: "37000"
  },
  {
    item: "ROLEX 326238 SKY DWELLER GOLD BLK DIAL",
    date: "06/02/2021 12:21:12",
    price: "41000"
  },
  {
    item: "ROLEX 116506 PLAIN DIAL",
    date: "06/02/2021 10:53:26",
    price: "110000"
  },
  {
    item: "ROLEX 126234 36MM DJUST WIMBELDON JUB",
    date: "06/01/2021 17:57:16",
    price: "9800"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "06/01/2021 17:53:48",
    price: "28400"
  },
  {
    item: "ROLEX 326938 SKY DWELLER GOLD WHITE DIAL",
    date: "06/01/2021 17:53:48",
    price: "48900"
  },
  {
    item: "ROLEX 126234 DATEJUST BLUE FLU BEZ JUBIL",
    date: "06/01/2021 17:18:36",
    price: "8850"
  },
  {
    item: "PATEK 5980/1A WHITE",
    date: "06/01/2021 16:27:02",
    price: "111000"
  },
  {
    item: "ROLEX 126710BLNR GMT BATMAN OYSTER",
    date: "06/01/2021 15:19:33",
    price: "16500"
  },
  {
    item: "PATEK 5396R BLUE BAUGETTE DIAL",
    date: "06/01/2021 14:38:16",
    price: "49500"
  },
  {
    item: "ROLEX 124300 OYSTER PERPETUAL BLUE",
    date: "06/01/2021 14:17:00",
    price: "7700"
  },
  {
    item: "ROLEX 126333 BLACK OYSTER",
    date: "06/01/2021 13:01:38",
    price: "0"
  },
  {
    item: "ROLEX DAYDATE 228206 BAGUETTE DIAMONDS",
    date: "06/01/2021 12:17:23",
    price: "68000"
  },
  {
    item: "ROLEX MANUAL BOOK",
    date: "05/28/2021 12:03:32",
    price: "18"
  },
  {
    item: "OMEGA SPEEDMASTER O31030425001002",
    date: "05/28/2021 10:53:34",
    price: "6328.57"
  },
  {
    item: "TUDOR ROYAL M28500 BLUE",
    date: "05/28/2021 10:53:34",
    price: "2250"
  },
  {
    item: "ROLEX DATEJUST 126333 BLACK DIAL JUBILEE",
    date: "05/27/2021 19:14:16",
    price: "14455"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "05/27/2021 17:29:15",
    price: "17300"
  },
  {
    item: "ROLEX 278273 GREEN DIAMOND DIAL",
    date: "05/27/2021 15:32:15",
    price: "10800"
  },
  {
    item: "AUDEMARS PIGUET 15400 ROYAL OAK BLK DIAL",
    date: "05/27/2021 14:00:12",
    price: "36000"
  },
  {
    item: "ROLEX 226659",
    date: "05/27/2021 12:59:25",
    price: "30000"
  },
  {
    item: "PATEK PHILIPPE 4947/1A ANNUAL CALENDAR",
    date: "05/27/2021 10:31:13",
    price: "50000"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "05/26/2021 15:19:26",
    price: "20000"
  },
  {
    item: "ROLEX 116688",
    date: "05/26/2021 14:54:47",
    price: "44500"
  },
  {
    item: "ROLEX BOX",
    date: "05/26/2021 14:02:25",
    price: "190"
  },
  {
    item: "ROLEX 116500LN BLACK",
    date: "05/26/2021 02:03:25",
    price: "31500"
  },
  {
    item: "ROLEX 228235 GREEN ROMAN",
    date: "05/26/2021 02:02:13",
    price: "53250"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "05/26/2021 01:42:50",
    price: "6850"
  },
  {
    item: "CARTIER WSSA0018 SANTOS XL BLUE",
    date: "05/26/2021 01:42:50",
    price: "7100"
  },
  {
    item: "PATEK 5396R-014 BLUE DIAL STICK",
    date: "05/25/2021 17:36:05",
    price: "47500"
  },
  {
    item: "ROLEX BOX",
    date: "05/25/2021 17:03:54",
    price: "180"
  },
  {
    item: "ROLEX 226570 EXPLORER II BLK DIAL",
    date: "05/25/2021 14:29:52",
    price: "12000"
  },
  {
    item: "ROLEX MANUAL BOOK",
    date: "05/25/2021 12:20:56",
    price: "13"
  },
  {
    item: "ROLEX TAG",
    date: "05/25/2021 12:20:56",
    price: "6"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "05/24/2021 15:29:28",
    price: "6500"
  },
  {
    item: "ROLEX 116508 DAYTONA GREEN DIAL",
    date: "05/24/2021 14:49:00",
    price: "79500"
  },
  {
    item: "ROLEX 124200 OYSTER PERPETUAL 34MM BLUE",
    date: "05/24/2021 14:45:07",
    price: "5000"
  },
  {
    item: "ROLEX 228235 WHITE ROMAN",
    date: "05/24/2021 14:26:27",
    price: "41000"
  },
  {
    item: "CARTIER BALLON BLEU W69010Z4 28MM",
    date: "05/24/2021 14:23:40",
    price: "3255"
  },
  {
    item: "ROLEX WARRANTY BOOKLET AND WALLET",
    date: "05/24/2021 13:52:12",
    price: "10.5"
  },
  {
    item: "ROLEX 126331  WIMBLEDON JUBILEE",
    date: "05/21/2021 13:10:18",
    price: "14450"
  },
  {
    item: "FRANCK MULLER 1752QZACBACE LADIES CINTRE",
    date: "05/21/2021 12:29:49",
    price: "3850"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK 26331ST WHITE",
    date: "05/21/2021 11:34:45",
    price: "41000"
  },
  {
    item: "PATEK 5968A",
    date: "05/21/2021 11:30:22",
    price: "129500"
  },
  {
    item: "ROLEX 126300 WIMBLEDON JUBILEE",
    date: "05/20/2021 15:54:06",
    price: "9900"
  },
  {
    item: "TUDOR 79350",
    date: "05/20/2021 13:36:53",
    price: "0"
  },
  {
    item: "ROLEX 116710 BATMAN OYSTER",
    date: "05/20/2021 11:48:03",
    price: "16500"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "05/20/2021 11:36:15",
    price: "21400"
  },
  {
    item: "ROLEX EXPLORER 216570 POLAR WHITE",
    date: "05/19/2021 17:51:55",
    price: "12000"
  },
  {
    item: "ROLEX 228238 DAY DATE CHAMGPAGNE STICK",
    date: "05/19/2021 17:02:23",
    price: "37000"
  },
  {
    item: "ROLEX 126622 BLUE DIAL",
    date: "05/19/2021 15:52:08",
    price: "13000"
  },
  {
    item: "CARTIER W4BB0024",
    date: "05/19/2021 14:58:39",
    price: "9520"
  },
  {
    item: "PATEK 5065A",
    date: "05/19/2021 13:45:14",
    price: "29950"
  },
  {
    item: "ROLEX 126300 BLUE STICK JUBILEE",
    date: "05/19/2021 13:27:33",
    price: "10500"
  },
  {
    item: "ROLEX 124300 OYSTER PERPETUAL GREEN DIAL",
    date: "05/19/2021 13:08:40",
    price: "12000"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "05/19/2021 13:08:40",
    price: "13850"
  },
  {
    item: "PATEK NAUTILUS 7118 DIAMOND BLUE",
    date: "05/19/2021 12:33:12",
    price: "60900"
  },
  {
    item: "AUDEMARS PIGUET 26470ST OFFSHORE BROWN",
    date: "05/14/2021 13:39:41",
    price: "30450"
  },
  {
    item: "ROLEX 124300 OYSTER PERPETUAL TURQ 41MM",
    date: "05/14/2021 13:18:02",
    price: "17900"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "05/14/2021 13:08:04",
    price: "35500"
  },
  {
    item: "ROLEX DAYTONA 116503 CHAMPAGNE INDEX DIA",
    date: "05/13/2021 12:11:33",
    price: "20500"
  },
  {
    item: "PATEK PHILIPPE 5960 BLUE DIAL",
    date: "05/12/2021 14:42:29",
    price: "46000"
  },
  {
    item: "ROLEX 228348 YG DIAMOND BEZEL CHAMP DIAL",
    date: "05/12/2021 02:48:30",
    price: "51250"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "05/12/2021 02:41:54",
    price: "18100"
  },
  {
    item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
    date: "05/11/2021 17:44:17",
    price: "16650"
  },
  {
    item: "ROLEX 126710 PEPSI JUBILEE",
    date: "05/11/2021 15:58:49",
    price: "20200"
  },
  {
    item: "ROLEX YACHTMASTER 2 116680",
    date: "05/11/2021 15:35:47",
    price: "19000"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "05/11/2021 15:25:29",
    price: "17200"
  },
  {
    item: "PATEK PHILIPPE 5205R BLACK",
    date: "05/11/2021 14:31:43",
    price: "47500"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "05/11/2021 14:31:31",
    price: "28500"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "05/11/2021 14:18:59",
    price: "17300"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "05/11/2021 13:00:39",
    price: "18100"
  },
  {
    item: "ROLEX 116505 BLACK DIAL",
    date: "05/10/2021 22:12:13",
    price: "49800"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "05/07/2021 13:48:54",
    price: "19800"
  },
  {
    item: "ROLEX 116523 WHITE DIAL ARABIC NUMBERS",
    date: "05/07/2021 11:55:36",
    price: "16000"
  },
  {
    item: "ROLEX  126660 BLUE JAMES CAMERON",
    date: "05/07/2021 11:41:14",
    price: "16000"
  },
  {
    item: "ROLEX DAYDATE 128238 TURQUOISE DIAMOND",
    date: "05/06/2021 17:11:04",
    price: "45000"
  },
  {
    item: "ROLEX 218239 BLACK DIMAOND DIAL",
    date: "05/06/2021 12:33:33",
    price: "34000"
  },
  {
    item: "TUDOR BLACK BAY 58 BLUE 79030B STRAP",
    date: "05/06/2021 10:34:12",
    price: "3575"
  },
  {
    item: "ROLEX 116518 BLACK",
    date: "05/06/2021 02:29:41",
    price: "38000"
  },
  {
    item: "PATEK 7118/1R WHITE",
    date: "05/06/2021 01:58:59",
    price: "63000"
  },
  {
    item: "PATEK PHILIPPE 5146G CREAM DIAL",
    date: "05/06/2021 01:58:59",
    price: "33000"
  },
  {
    item: "PATEK PHILIPPE 5205R WHITE",
    date: "05/06/2021 01:58:59",
    price: "43000"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS 5712R",
    date: "05/06/2021 01:58:59",
    price: "95000"
  },
  {
    item: "CARTIER SANTOS ROSE GOLD SKELETON 0016",
    date: "05/05/2021 15:41:36",
    price: "54000"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "05/04/2021 17:40:37",
    price: "19300"
  },
  {
    item: "ZENITH 0331003600/69M3100 CHRONOGRAPH",
    date: "05/04/2021 17:07:08",
    price: "10000"
  },
  {
    item: "ROLEX 126334 WIMBELDON OYSTER",
    date: "05/04/2021 15:31:20",
    price: "13000"
  },
  {
    item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
    date: "05/04/2021 15:30:14",
    price: "15000"
  },
  {
    item: "ROLEX 126334 BLACK INDEX JUB",
    date: "05/04/2021 12:51:52",
    price: "11500"
  },
  {
    item: "AUDEMARS PIGUET 15500 ROYAL OAK BLK DIAL",
    date: "05/04/2021 12:03:24",
    price: "36500"
  },
  {
    item: "PATEK 5960 1A",
    date: "05/04/2021 11:26:05",
    price: "46000"
  },
  {
    item: "ROLEX 126333 CHAMPAGNE OYSTER",
    date: "05/03/2021 22:08:16",
    price: "12700"
  },
  {
    item: "PATEK  5711/1R",
    date: "05/03/2021 20:19:49",
    price: "150000"
  },
  {
    item: "PATEK 5980/1R",
    date: "05/03/2021 20:19:49",
    price: "212000"
  },
  {
    item: "PATEK 5980/1R",
    date: "05/03/2021 20:19:18",
    price: "199000"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "05/03/2021 13:05:34",
    price: "17050"
  },
  {
    item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
    date: "05/03/2021 12:05:01",
    price: "16450"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "04/30/2021 10:35:06",
    price: "6850"
  },
  {
    item: "CARTIER WSSA0018 SANTOS XL BLUE",
    date: "04/29/2021 16:49:54",
    price: "6500"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "04/29/2021 16:38:19",
    price: "3400"
  },
  {
    item: "ROLEX 126600 SEA DWELLER RED LETTERS",
    date: "04/29/2021 12:37:58",
    price: "13700"
  },
  {
    item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
    date: "04/29/2021 12:19:42",
    price: "15250"
  },
  {
    item: "ROLEX DAYTONA 116515 BLACK DIAL PINK SUB",
    date: "04/29/2021 12:04:26",
    price: "41250"
  },
  {
    item: "CARTIER SANTOS WHSA0007 SKELETON",
    date: "04/28/2021 17:45:47",
    price: "23850"
  },
  {
    item: "ROLEX 228238 DAY DATE CHAMGPAGNE STICK",
    date: "04/28/2021 17:26:09",
    price: "36000"
  },
  {
    item: "ROLEX 228238 DAY DATE SILVER DIAL",
    date: "04/28/2021 17:26:09",
    price: "36000"
  },
  {
    item: "ROLEX 326938 SKY DWELLER GOLD WHITE DIAL",
    date: "04/28/2021 17:26:09",
    price: "47000"
  },
  {
    item: "ROLEX 228239 DAY DATE GRAY DIAL",
    date: "04/28/2021 14:08:36",
    price: "37000"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "04/28/2021 14:01:25",
    price: "20000"
  },
  {
    item: "ROLEX CELLINI COIN WATCH",
    date: "04/28/2021 13:01:10",
    price: "15000"
  },
  {
    item: "CARTIER BALLON BLEU W69010Z4 28MM",
    date: "04/28/2021 12:52:37",
    price: "4647.5"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 126000 SILVER",
    date: "04/27/2021 18:34:25",
    price: "6600"
  },
  {
    item: "PANERAI PAM00774",
    date: "04/27/2021 18:24:01",
    price: "3000"
  },
  {
    item: "PATEK 7118/1R CHAMP",
    date: "04/27/2021 18:21:09",
    price: "0"
  },
  {
    item: "ROLEX 124060LN",
    date: "04/27/2021 18:07:54",
    price: "12000"
  },
  {
    item: "PATEK 5196R CALATRAVA",
    date: "04/26/2021 15:45:41",
    price: "21000"
  },
  {
    item: "ROLEX 228238 BLACK DD",
    date: "04/26/2021 14:01:06",
    price: "41000"
  },
  {
    item: "PATEK 5524G",
    date: "04/26/2021 12:47:49",
    price: "37000"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "04/26/2021 11:46:36",
    price: "6950"
  },
  {
    item: "PATEK 5930G COMPLICATIONS WORLD TIME",
    date: "04/26/2021 10:41:21",
    price: "54000"
  },
  {
    item: "TUDOR BLACK BAY 58 SILVER 925",
    date: "04/23/2021 11:21:29",
    price: "4300"
  },
  {
    item: "ROLEX YACHTMASTER 2 116680",
    date: "04/23/2021 11:19:44",
    price: "19000"
  },
  {
    item: "ROLEX DAY-DATE MOTIF DIAL 228206",
    date: "04/22/2021 17:04:25",
    price: "61000"
  },
  {
    item: "ROLEX 116505 PINK DIAMOND DIAL",
    date: "04/22/2021 16:06:57",
    price: "58500"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS LADIES 7118/1A",
    date: "04/22/2021 14:39:57",
    price: "45500"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "04/21/2021 14:09:11",
    price: "7000"
  },
  {
    item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
    date: "04/20/2021 14:30:43",
    price: "43650"
  },
  {
    item: "ROLEX 126719BLRO MEOTERITE DIAL 2",
    date: "04/20/2021 12:31:49",
    price: "59500"
  },
  {
    item: "IWC IW377719 PILOT CHRONO SPITFIRE STEEL",
    date: "04/20/2021 12:20:37",
    price: "3900"
  },
  {
    item: "PATEK BOX",
    date: "04/19/2021 22:35:18",
    price: "450"
  },
  {
    item: "PATEK PHILIPPE 5205G-013 BLUE DIAL",
    date: "04/19/2021 22:33:26",
    price: "42000"
  },
  {
    item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
    date: "04/19/2021 21:51:33",
    price: "43000"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "04/19/2021 21:51:33",
    price: "28000"
  },
  {
    item: "ROLEX BOX",
    date: "04/19/2021 19:46:17",
    price: "180"
  },
  {
    item: "ROLEX 116618LN",
    date: "04/19/2021 18:18:33",
    price: "35000"
  },
  {
    item: "ROLEX 116619LB",
    date: "04/19/2021 17:58:01",
    price: "33500"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "04/19/2021 17:42:55",
    price: "20000"
  },
  {
    item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
    date: "04/19/2021 17:42:55",
    price: "43000"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "04/19/2021 17:42:55",
    price: "28000"
  },
  {
    item: "ROLEX 126303 WIMBELDON SMOOTH BEZ OYSTER",
    date: "04/19/2021 17:30:53",
    price: "12500"
  },
  {
    item: "ROLEX 116400GV MILGUASS BLACK",
    date: "04/19/2021 17:05:34",
    price: "9300"
  },
  {
    item: "ROLEX 126334 SILVER OYSTER",
    date: "04/19/2021 14:03:41",
    price: "9500"
  },
  {
    item: "ROLEX 126618LB 41MM SUBMARINER YELLOW",
    date: "04/19/2021 14:03:06",
    price: "39200"
  },
  {
    item: "PATEK 5396R BLUE BAUGETTE DIAL",
    date: "04/19/2021 14:00:42",
    price: "50750"
  },
  {
    item: "ROLEX SUBMARINER 126618 BLACK DIAL",
    date: "04/19/2021 13:47:47",
    price: "38150"
  },
  {
    item: "ROLEX 326933  WHITE DIAL",
    date: "04/19/2021 13:45:33",
    price: "18000"
  },
  {
    item: "PATEK 5396R BLUE BAUGETTE DIAL",
    date: "04/19/2021 13:22:36",
    price: "50500"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "04/19/2021 12:32:04",
    price: "28000"
  },
  {
    item: "ROLEX 116505 CHOC DIAL",
    date: "04/16/2021 12:42:48",
    price: "52000"
  },
  {
    item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
    date: "04/16/2021 12:35:58",
    price: "16250"
  },
  {
    item: "ROLEX 228239 BLUE ROMAN DIAL",
    date: "04/16/2021 12:34:49",
    price: "37500"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "04/16/2021 11:41:21",
    price: "6850"
  },
  {
    item: "ROLEX 278271 PURPLE DIAMOND VI JUB",
    date: "04/16/2021 11:24:03",
    price: "10500"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "04/14/2021 14:39:29",
    price: "0"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "04/14/2021 14:39:29",
    price: "0"
  },
  {
    item: "ROLEX DAYTONA 116509 PAVE DIAMOND ARABIC",
    date: "04/14/2021 14:39:29",
    price: "0"
  },
  {
    item: "ROLEX 126755SARU GMT MASTER II RGLD DIAM",
    date: "04/13/2021 13:25:00",
    price: "123000"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "04/13/2021 13:11:30",
    price: "0"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "04/13/2021 11:48:42",
    price: "17000"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "04/13/2021 11:08:47",
    price: "12900"
  },
  {
    item: "ROLEX 126234 DATEJUST BLUE FLU BEZ JUBIL",
    date: "04/12/2021 15:19:03",
    price: "8800"
  },
  {
    item: "ROLEX YACHTMASTER 2 116680",
    date: "04/12/2021 15:09:13",
    price: "18900"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "04/12/2021 14:50:04",
    price: "6500"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "04/12/2021 13:49:48",
    price: "19800"
  },
  {
    item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
    date: "04/12/2021 13:44:28",
    price: "45000"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS 5712G",
    date: "04/12/2021 13:19:42",
    price: "75000"
  },
  {
    item: "ROLEX 326933 BLACK DIAL",
    date: "04/12/2021 12:45:14",
    price: "19400"
  },
  {
    item: "ROLEX 116688",
    date: "04/12/2021 10:26:02",
    price: "43700"
  },
  {
    item: "ROLEX 126755SARU GMT MASTER II RGLD DIAM",
    date: "04/09/2021 19:11:58",
    price: "120000"
  },
  {
    item: "ROLEX 326938 SKY DWELLER BLK DIAL",
    date: "04/09/2021 19:11:34",
    price: "48500"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK 26331ST WHITE",
    date: "04/08/2021 16:26:11",
    price: "43500"
  },
  {
    item: "ROLEX 124060LN",
    date: "04/08/2021 16:26:11",
    price: "12100"
  },
  {
    item: "ROLEX SKYDWELLER 326235 CHOCOLATE DIAL",
    date: "04/08/2021 16:22:43",
    price: "43250"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "04/08/2021 15:39:24",
    price: "28000"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "04/08/2021 15:27:06",
    price: "40250"
  },
  {
    item: "ROLEX 126334 WHITE ROMAN OYSTER",
    date: "04/08/2021 14:47:13",
    price: "9900"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "04/08/2021 14:18:11",
    price: "19250"
  },
  {
    item: "ROLEX 326934 SKYDWELLER WHITE DIAL",
    date: "04/08/2021 14:17:37",
    price: "18500"
  },
  {
    item: "ROLEX 126622 RHODIUM DIAL",
    date: "04/08/2021 14:17:13",
    price: "13500"
  },
  {
    item: "ROLEX YACHTMASTER 37MM 268622 SLATE",
    date: "04/08/2021 14:16:51",
    price: "10500"
  },
  {
    item: "GIRARD PERREGAUX 81010-11-635-11A",
    date: "04/08/2021 11:54:27",
    price: "11500"
  },
  {
    item: "GIRARD PERREGAUX LAUREATO CHRONOGRAPH",
    date: "04/08/2021 11:54:27",
    price: "8700"
  },
  {
    item: "OMEGA SEAMASTER JAMES BOND TITANIUM",
    date: "04/08/2021 11:17:23",
    price: "8100"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "04/07/2021 21:36:45",
    price: "41000"
  },
  {
    item: "ROLEX 228235 SUNDUST ROMAN",
    date: "04/07/2021 21:36:45",
    price: "41000"
  },
  {
    item: "ROLEX 228235 WHITE ROMAN",
    date: "04/07/2021 21:36:45",
    price: "41000"
  },
  {
    item: "CARTIER SANTOS WHSA0007 SKELETON",
    date: "04/07/2021 13:52:42",
    price: "23670"
  },
  {
    item: "PATEK PHILIPPE 5130/1R WORLD TIME",
    date: "04/07/2021 13:27:04",
    price: "48500"
  },
  {
    item: "ROLEX 116515 CHOC DIAL",
    date: "04/07/2021 02:25:12",
    price: "43500"
  },
  {
    item: "ROLEX 116519 STEEL DIAL",
    date: "04/07/2021 02:25:12",
    price: "42000"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "04/07/2021 02:25:12",
    price: "18100"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLK DIAL",
    date: "04/07/2021 02:25:12",
    price: "15700"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "04/07/2021 02:25:12",
    price: "16000"
  },
  {
    item: "ROLEX DAYTONA 116515 BLACK DIAL PINK SUB",
    date: "04/07/2021 02:25:12",
    price: "41000"
  },
  {
    item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
    date: "04/07/2021 02:25:12",
    price: "14000"
  },
  {
    item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
    date: "04/07/2021 02:25:12",
    price: "15250"
  },
  {
    item: "PATEK PHILIPPE 5270/1R BLACK DIAL ROSE",
    date: "04/06/2021 13:22:10",
    price: "150000"
  },
  {
    item: "ROLEX 126334 WHITE ROMAN OYSTER",
    date: "04/06/2021 12:20:08",
    price: "10500"
  },
  {
    item: "ROLEX 277200 OYSTER PERPETUAL ORANGE DIA",
    date: "04/06/2021 11:22:09",
    price: "6800"
  },
  {
    item: "ROLEX DATEJUST 278271 BLACK DIAL",
    date: "04/05/2021 16:59:39",
    price: "10600"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "04/05/2021 16:34:11",
    price: "20750"
  },
  {
    item: "ROLEX 126334 BLACK OYSTER",
    date: "04/05/2021 14:10:16",
    price: "6500"
  },
  {
    item: "TUDOR 79830 PEPSI ON STRAP",
    date: "04/05/2021 11:02:38",
    price: "3000"
  },
  {
    item: "ROLEX 126334 WHITE ROMAN JUB",
    date: "04/02/2021 02:08:10",
    price: "10500"
  },
  {
    item: "ROLEX 228345 GREEN ROMAN DIAMOND BEZEL",
    date: "04/02/2021 02:08:10",
    price: "59500"
  },
  {
    item: "ROLEX DATEJUS 126234 BLUE DIAMOND JUBILE",
    date: "04/02/2021 02:08:10",
    price: "11000"
  },
  {
    item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
    date: "04/01/2021 14:31:40",
    price: "16800"
  },
  {
    item: "ROLEX 126331  WIMBLEDON JUBILEE",
    date: "04/01/2021 14:22:51",
    price: "13750"
  },
  {
    item: "ROLEX 126334 RHODIUM JUBILEE",
    date: "04/01/2021 14:22:51",
    price: "11000"
  },
  {
    item: "ROLEX 116688",
    date: "04/01/2021 11:36:50",
    price: "40900"
  },
  {
    item: "ROLEX BOX",
    date: "03/31/2021 16:36:02",
    price: "150"
  },
  {
    item: "ROUND BRILLIANT DIAMOND STUD EARRINGS",
    date: "03/31/2021 11:50:51",
    price: "500"
  },
  {
    item: "ROLEX 228345 GREEN ROMAN DIAMOND BEZEL",
    date: "03/31/2021 01:22:37",
    price: "59500"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "03/31/2021 01:22:20",
    price: "13150"
  },
  {
    item: "ROLEX 126334 WHITE INDEX JUB",
    date: "03/26/2021 11:00:09",
    price: "9900"
  },
  {
    item: "AUDEMARS PIGUET 15500ST GREY DIAL",
    date: "03/25/2021 14:50:11",
    price: "36000"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "03/25/2021 14:27:04",
    price: "14250"
  },
  {
    item: "ROLEX 126300  BLACK INDEX OYSTER",
    date: "03/25/2021 13:36:19",
    price: "8000"
  },
  {
    item: "ROLEX 126300 WHITE INDEX OYSTER",
    date: "03/25/2021 13:36:19",
    price: "8000"
  },
  {
    item: "IWC INGENIEUR 380802 BLUE DIAL CHRONO",
    date: "03/25/2021 12:59:22",
    price: "3800"
  },
  {
    item: "PATEK 5968A",
    date: "03/25/2021 12:49:28",
    price: "120000"
  },
  {
    item: "ROLEX 126200 WHITE  ROMAN JUBILEE",
    date: "03/24/2021 13:23:42",
    price: "7200"
  },
  {
    item: "ROLEX 228348 YG DIAMOND BEZEL CHAMP DIAL",
    date: "03/24/2021 12:34:50",
    price: "48850"
  },
  {
    item: "ROLEX 126300 RHODIUM OYSTER",
    date: "03/23/2021 14:52:05",
    price: "7950"
  },
  {
    item: "ROLEX SKYDWELLER 326235 SLATE DIAL",
    date: "03/23/2021 14:10:04",
    price: "42500"
  },
  {
    item: "ROLEX 116610LN SUBMARINER DATE",
    date: "03/23/2021 14:05:42",
    price: "12500"
  },
  {
    item: "ROLEX 124060LN",
    date: "03/23/2021 12:11:58",
    price: "12200"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "03/23/2021 12:11:58",
    price: "17200"
  },
  {
    item: "ROLEX 126334 BLK DIAMOND DIAL JUB",
    date: "03/23/2021 01:38:12",
    price: "12000"
  },
  {
    item: "ROLEX 228235 WHITE ROMAN",
    date: "03/23/2021 01:06:58",
    price: "40000"
  },
  {
    item: "ROLEX DAYDATE 228235 CHOCOLATE MOTIF",
    date: "03/23/2021 01:06:58",
    price: "40000"
  },
  {
    item: "ROLEX SKYDWELLER 326935 CHOCOLATE INDEX",
    date: "03/23/2021 01:06:21",
    price: "55250"
  },
  {
    item: "ROLEX 228238  WHITE ROMAN",
    date: "03/22/2021 19:37:06",
    price: "35800"
  },
  {
    item: "ROLEX 228238  SILVER HONEYCOMB",
    date: "03/22/2021 19:37:05",
    price: "35800"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "03/22/2021 19:29:18",
    price: "40250"
  },
  {
    item: "ROLEX 228238 CHAMP ROMAN 2",
    date: "03/22/2021 19:29:18",
    price: "35800"
  },
  {
    item: "ROLEX 228238 DAY DATE CHAMGPAGNE STICK",
    date: "03/22/2021 19:29:18",
    price: "35800"
  },
  {
    item: "P/O PATEK 5968A",
    date: "03/22/2021 15:51:44",
    price: "116000"
  },
  {
    item: "ROLEX 126334 BLACK INDEX JUB",
    date: "03/22/2021 15:48:01",
    price: "10500"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "03/22/2021 14:15:32",
    price: "7100"
  },
  {
    item: "ROLEX DAY-DATE 228345 PINK DIAMOND DIAL",
    date: "03/19/2021 15:51:22",
    price: "53000"
  },
  {
    item: "PATEK PHILIPPE AQUANAUT 5072",
    date: "03/19/2021 14:05:03",
    price: "113000"
  },
  {
    item: "ROLEX 326935 SKYDWELLER RHODIUM ROSE",
    date: "03/19/2021 13:59:41",
    price: "54500"
  },
  {
    item: "ROLEX 116400GV MILGUASS BLACK",
    date: "03/19/2021 13:55:47",
    price: "9500"
  },
  {
    item: "ROLEX 116400GV MILGUASS BLACK",
    date: "03/19/2021 12:26:18",
    price: "9100"
  },
  {
    item: "PATEK  5711/1R",
    date: "03/19/2021 12:24:38",
    price: "134500"
  },
  {
    item: "PATEK 5524G",
    date: "03/19/2021 12:23:02",
    price: "36500"
  },
  {
    item: "PATEK PHILIPPE LADIES AQUANAUT 5062/450R",
    date: "03/18/2021 15:56:42",
    price: "221975"
  },
  {
    item: "ROLEX 179384 MOP DIA JUBILEE",
    date: "03/18/2021 14:43:53",
    price: "12000"
  },
  {
    item: "ROLEX 218206 CONCENTRIC BLUE DIAL",
    date: "03/18/2021 14:43:53",
    price: "47000"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "03/18/2021 09:58:44",
    price: "16000"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "03/17/2021 17:15:00",
    price: "18500"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "03/17/2021 14:33:19",
    price: "16150"
  },
  {
    item: "ROLEX 126334 BLACK OYSTER",
    date: "03/17/2021 14:32:34",
    price: "10000"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "03/17/2021 14:04:57",
    price: "27800"
  },
  {
    item: "116503 BLACK MOP DIAMOND DIAL",
    date: "03/17/2021 00:00:53",
    price: "24000"
  },
  {
    item: "ROLEX 126622 RHODIUM DIAL",
    date: "03/17/2021 00:00:53",
    price: "13500"
  },
  {
    item: "ROLEX 226659",
    date: "03/17/2021 00:00:53",
    price: "28300"
  },
  {
    item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
    date: "03/17/2021 00:00:53",
    price: "14000"
  },
  {
    item: "ROLEX 326933 BLACK DIAL",
    date: "03/16/2021 23:59:03",
    price: "19600"
  },
  {
    item: "PATEK 5164A",
    date: "03/15/2021 16:22:19",
    price: "70000"
  },
  {
    item: "ROLEX DATEJUST 126244 BLACK DIAMOND DIAL",
    date: "03/15/2021 15:40:48",
    price: "15900"
  },
  {
    item: "ROLEX 126334 BLUE INDEX OYSTER",
    date: "03/15/2021 15:33:45",
    price: "10300"
  },
  {
    item: "ROLEX 126300 WIMBLEDON OYSTER",
    date: "03/15/2021 15:32:13",
    price: "8550"
  },
  {
    item: "ROLEX 226659",
    date: "03/15/2021 15:31:13",
    price: "28700"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "03/15/2021 14:11:11",
    price: "6500"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "03/14/2021 17:37:11",
    price: "15800"
  },
  {
    item: "ROLEX 126710 PEPSI JUBILEE",
    date: "03/14/2021 17:37:11",
    price: "19000"
  },
  {
    item: "ROLEX 126622 BLUE DIAL",
    date: "03/12/2021 13:52:49",
    price: "13000"
  },
  {
    item: "ROLEX 116515 CHOC DIAL",
    date: "03/11/2021 01:22:12",
    price: "40000"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS 5712G",
    date: "03/10/2021 13:35:00",
    price: "70000"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "03/09/2021 15:17:05",
    price: "13000"
  },
  {
    item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
    date: "03/09/2021 14:42:49",
    price: "15000"
  },
  {
    item: "PATEK 5396R-014 BLUE DIAL STICK",
    date: "03/09/2021 14:15:09",
    price: "48500"
  },
  {
    item: "ROLEX 124300 OYSTER PERPETUAL SILVER DIA",
    date: "03/09/2021 14:13:49",
    price: "7000"
  },
  {
    item: "ROLEX 228238  WHITE ROMAN",
    date: "03/09/2021 13:10:46",
    price: "36000"
  },
  {
    item: "ROLEX 116619LB",
    date: "03/08/2021 14:55:10",
    price: "35000"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "03/08/2021 13:39:29",
    price: "26600"
  },
  {
    item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
    date: "03/08/2021 13:34:30",
    price: "14500"
  },
  {
    item: "PATEK PHILIPPE 5140G WHITE DIAL",
    date: "03/05/2021 16:54:23",
    price: "55500"
  },
  {
    item: "CARTIER SANTOS ROSE GOLD WGSA0008",
    date: "03/04/2021 17:08:27",
    price: "52900"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "03/03/2021 15:25:40",
    price: "39500"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "03/02/2021 17:26:47",
    price: "41400"
  },
  {
    item: "PO ROLEX 116500 DAYTONA WHT DIAL",
    date: "03/02/2021 12:24:59",
    price: "0"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "03/02/2021 11:47:20",
    price: "16000"
  },
  {
    item: "TUDOR BLACK BAY 58 79030 TAN STRAP",
    date: "03/01/2021 16:19:01",
    price: "3150"
  },
  {
    item: "PATEK 5270P PLATINUM SALMON DIAL",
    date: "03/01/2021 13:48:44",
    price: "162500"
  },
  {
    item: "ROLEX 126334 DATEJUST BLU DAIMOND DIAL",
    date: "03/01/2021 11:11:32",
    price: "12300"
  },
  {
    item: "CARTIER SANTOS WHSA0007 SKELETON",
    date: "03/01/2021 10:43:40",
    price: "26000"
  },
  {
    item: "PATEK PHILIPPE 5205R BLACK",
    date: "02/28/2021 16:25:14",
    price: "43000"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "02/28/2021 16:25:14",
    price: "19700"
  },
  {
    item: "ROLEX 116688",
    date: "02/28/2021 16:25:14",
    price: "41500"
  },
  {
    item: "ROLEX 126622 RHODIUM DIAL",
    date: "02/28/2021 16:25:14",
    price: "13500"
  },
  {
    item: "ROLEX 228239 BLUE ROMAN DIAL",
    date: "02/25/2021 18:22:25",
    price: "37500"
  },
  {
    item: "TUDOR BLACK BAY 58 79030 TAN STRAP",
    date: "02/25/2021 13:09:55",
    price: "3350"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "02/25/2021 03:08:37",
    price: "16500"
  },
  {
    item: "ROLEX 228238 CHAMP ROMAN 2",
    date: "02/24/2021 18:14:47",
    price: "36500"
  },
  {
    item: "ROLEX 126334 BLACK INDEX JUB",
    date: "02/24/2021 13:48:23",
    price: "10500"
  },
  {
    item: "ROLEX 126234 36MM DJUST BLK DIAL FLU JUB",
    date: "02/24/2021 13:44:21",
    price: "9500"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "02/24/2021 13:00:42",
    price: "6500"
  },
  {
    item: "ROLEX 126334 BLUE ROMAN OYSTER",
    date: "02/23/2021 16:36:09",
    price: "10150"
  },
  {
    item: "ROLEX FACTORY SERVICE BOOKLET GOLD",
    date: "02/23/2021 16:12:29",
    price: "5"
  },
  {
    item: "ROLEX WARRANTY WALLET",
    date: "02/23/2021 16:12:29",
    price: "9"
  },
  {
    item: "ROLEX  116710LN GMT MASTER",
    date: "02/23/2021 12:45:17",
    price: "13850"
  },
  {
    item: "ROLEX FACTORY SERVICE BOOKLET GOLD",
    date: "02/23/2021 12:07:18",
    price: "5"
  },
  {
    item: "ROLEX TAG",
    date: "02/23/2021 12:07:18",
    price: "5"
  },
  {
    item: "ROLEX WARRANTY WALLET",
    date: "02/23/2021 12:07:18",
    price: "6"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "02/22/2021 18:45:38",
    price: "39550"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "02/22/2021 18:39:55",
    price: "12600"
  },
  {
    item: "ROLEX 326934 SKYDWELLER WHITE DIAL",
    date: "02/22/2021 18:39:55",
    price: "17500"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "02/22/2021 14:52:50",
    price: "39500"
  },
  {
    item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
    date: "02/22/2021 14:44:31",
    price: "47100"
  },
  {
    item: "PATEK 5167A",
    date: "02/22/2021 01:25:38",
    price: "40000"
  },
  {
    item: "PATEK 5167R",
    date: "02/22/2021 01:25:38",
    price: "60000"
  },
  {
    item: "ROLEX BOX",
    date: "02/18/2021 18:02:55",
    price: "0"
  },
  {
    item: "ROLEX 228238  WHITE ROMAN",
    date: "02/18/2021 18:02:35",
    price: "35500"
  },
  {
    item: "PATEK 7018/1A-010",
    date: "02/18/2021 17:58:33",
    price: "51000"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 277200 PINK DIAL",
    date: "02/18/2021 17:56:56",
    price: "8000"
  },
  {
    item: "ROLEX 126300 BLUE INDEX OYSTER",
    date: "02/18/2021 14:06:34",
    price: "8050"
  },
  {
    item: "ROLEX 126233 DATEJUST WHITE ROMAN",
    date: "02/17/2021 19:06:14",
    price: "9950"
  },
  {
    item: "ROLEX 278240 DJUST OP PINK DIAL ROMAN",
    date: "02/17/2021 18:58:53",
    price: "5000"
  },
  {
    item: "AP_ROY OAK SS BLACK DIAL",
    date: "02/17/2021 18:53:13",
    price: "29000"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "02/17/2021 16:26:38",
    price: "12500"
  },
  {
    item: "ROLEX 116500LN BLACK",
    date: "02/17/2021 16:21:35",
    price: "26700"
  },
  {
    item: "ROLEX SKYDWELLER 326238 CHAMPAGNE DIAL",
    date: "02/17/2021 15:58:19",
    price: "40000"
  },
  {
    item: "CARL F BUCHERERE MANTA 00 10632 28 33 99",
    date: "02/17/2021 10:21:34",
    price: "3100"
  },
  {
    item: "PATEK 5980/1A WHITE",
    date: "02/17/2021 01:52:37",
    price: "98100"
  },
  {
    item: "ROLEX 126755SARU FULL DIAMOND POVET GMT",
    date: "02/16/2021 16:00:48",
    price: "190000"
  },
  {
    item: "ROLEX 228238  WHITE ROMAN",
    date: "02/16/2021 13:50:23",
    price: "35000"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "02/16/2021 13:16:10",
    price: "13000"
  },
  {
    item: "ROLEX  126660 BLUE JAMES CAMERON",
    date: "02/16/2021 12:26:37",
    price: "15000"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "02/16/2021 12:16:15",
    price: "12600"
  },
  {
    item: "ROLEX DAYTONA 116508 PAUL NEWMAN BLACK",
    date: "02/16/2021 00:20:48",
    price: "39500"
  },
  {
    item: "ROLEX DAYTONA 116515 BLACK DIAL PINK SUB",
    date: "02/16/2021 00:19:48",
    price: "37500"
  },
  {
    item: "ROLEX 126622 BLUE DIAL",
    date: "02/16/2021 00:02:00",
    price: "12700"
  },
  {
    item: "ROLEX YACHTMASTER 126655 PAVE DIAMOND",
    date: "02/16/2021 00:02:00",
    price: "40000"
  },
  {
    item: "ROLEX 126334 BLUE INDEX JUBILEE",
    date: "02/15/2021 15:42:17",
    price: "11000"
  },
  {
    item: "TUDOR 79030 BLACK BAY 58 ON STRAP",
    date: "02/15/2021 10:59:56",
    price: "2931"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 126000 PINK 36MM",
    date: "02/11/2021 16:15:17",
    price: "11000"
  },
  {
    item: "ROLEX DAYDATE 128235 PINK DIAMOND DIAL",
    date: "02/11/2021 15:49:46",
    price: "36000"
  },
  {
    item: "ROLEX BOX",
    date: "02/11/2021 04:15:08",
    price: "195"
  },
  {
    item: "ROLEX 114200  OYSTER PERPETUAL 34 GREEN",
    date: "02/11/2021 04:14:41",
    price: "5100"
  },
  {
    item: "ROLEX 126331  WIMBLEDON JUBILEE",
    date: "02/11/2021 04:12:52",
    price: "13500"
  },
  {
    item: "ROELX 326934 BLACK DIAL",
    date: "02/11/2021 03:36:41",
    price: "20000"
  },
  {
    item: "ROLEX 126334 BLACK INDEX JUB",
    date: "02/11/2021 03:33:52",
    price: "10500"
  },
  {
    item: "ROLEX 228235 SUNDUST ROMAN",
    date: "02/11/2021 03:33:52",
    price: "38500"
  },
  {
    item: "ROLEX YACHTMASTER 2 116680",
    date: "02/11/2021 03:30:09",
    price: "18000"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "02/11/2021 03:28:34",
    price: "20500"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "02/11/2021 03:28:34",
    price: "19313"
  },
  {
    item: "ROLEX DAYTONA 116503 CHAMPAGNE INDEX DIA",
    date: "02/11/2021 03:28:34",
    price: "19312"
  },
  {
    item: "PATEK BOX",
    date: "02/08/2021 18:09:46",
    price: "400"
  },
  {
    item: "ROLEX BOX",
    date: "02/08/2021 18:09:46",
    price: "185"
  },
  {
    item: "ROLEX 126334 WHITE INDEX JUB",
    date: "02/08/2021 17:40:47",
    price: "10500"
  },
  {
    item: "ROLEX 126334 WHITE ROMAN JUB",
    date: "02/08/2021 17:40:47",
    price: "10500"
  },
  {
    item: "ROLEX 126334 BLACK INDEX JUB",
    date: "02/08/2021 17:40:46",
    price: "10400"
  },
  {
    item: "ROLEX BOX",
    date: "02/08/2021 15:52:36",
    price: "195"
  },
  {
    item: "ROLEX 126622 RHODIUM DIAL",
    date: "02/08/2021 15:37:55",
    price: "13200"
  },
  {
    item: "ROLEX 326933 BLACK DIAL",
    date: "02/08/2021 15:37:55",
    price: "19350"
  },
  {
    item: "ROLEX 228235 SUNDUST ROMAN",
    date: "02/08/2021 15:11:43",
    price: "38500"
  },
  {
    item: "ROLEX 228235 SUNDUST BAUGETTES",
    date: "02/08/2021 15:00:37",
    price: "42250"
  },
  {
    item: "AP ROYAL OAK 26320BA YGOLD BLUE DIAL",
    date: "02/08/2021 14:50:53",
    price: "84000"
  },
  {
    item: "ROLEX 126618LB 41MM SUBMARINER YELLOW",
    date: "02/08/2021 14:21:17",
    price: "36800"
  },
  {
    item: "PATEK 5167A",
    date: "02/08/2021 13:58:13",
    price: "46000"
  },
  {
    item: "PATEK 5980/1R",
    date: "02/08/2021 11:54:40",
    price: "167000"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "02/08/2021 10:38:19",
    price: "6700"
  },
  {
    item: "CARTIER W69010Z4 CARTIER BALLON BLEU DE",
    date: "02/08/2021 10:38:19",
    price: "2700"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "02/08/2021 10:38:19",
    price: "6700"
  },
  {
    item: "TUDOR 79030 BLACK BAY 58 ON STRAP",
    date: "02/08/2021 10:38:19",
    price: "3375"
  },
  {
    item: "TUDOR BLACK BAY 58 BLUE 79030B STRAP",
    date: "02/08/2021 10:38:19",
    price: "3050"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "02/04/2021 13:06:52",
    price: "19700"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "02/03/2021 16:16:24",
    price: "13000"
  },
  {
    item: "ROLEX  228239 GREEN DIAL",
    date: "02/02/2021 21:43:24",
    price: "37250"
  },
  {
    item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
    date: "02/02/2021 15:24:34",
    price: "14000"
  },
  {
    item: "ROLEX 116618LB SUBMARINER",
    date: "02/02/2021 15:23:40",
    price: "30100"
  },
  {
    item: "ROLEX 326933 CHAMP DIAL",
    date: "02/02/2021 15:19:58",
    price: "18500"
  },
  {
    item: "ROLEX 116519 STEEL DIAL",
    date: "02/02/2021 15:08:22",
    price: "36500"
  },
  {
    item: "ROLEX 228235 WHITE ROMAN",
    date: "02/02/2021 15:04:17",
    price: "38900"
  },
  {
    item: "ROLEX YACHTMASTER 2 116680",
    date: "02/02/2021 15:02:03",
    price: "18570"
  },
  {
    item: "ROLEX 126755SARU GMT MASTER II RGLD DIAM",
    date: "02/02/2021 14:54:42",
    price: "115500"
  },
  {
    item: "ROLEX 126334 WIMBELDON OYSTER",
    date: "02/02/2021 14:41:21",
    price: "10350"
  },
  {
    item: "PATEK PHILIPPE LADIES AQUANAUT 5062/450R",
    date: "02/02/2021 14:37:40",
    price: "209500"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS 5712R",
    date: "02/02/2021 14:37:40",
    price: "78000"
  },
  {
    item: "P/O ROLEX 126715 CHNR",
    date: "02/02/2021 12:11:39",
    price: "36500"
  },
  {
    item: "116503 BLACK MOP DIAMOND DIAL",
    date: "02/01/2021 18:29:48",
    price: "24200"
  },
  {
    item: "ROLEX 116509 BLU DIAL",
    date: "02/01/2021 18:29:48",
    price: "41500"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "02/01/2021 18:29:48",
    price: "39000"
  },
  {
    item: "PATEK 7118/1R WHITE",
    date: "01/29/2021 10:49:31",
    price: "55000"
  },
  {
    item: "ROLEX 126300 BLUE ROMAN JUB",
    date: "01/29/2021 05:04:47",
    price: "8500"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "01/28/2021 01:11:55",
    price: "20500"
  },
  {
    item: "ROLEX 126334 WHITE INDEX OYSTER",
    date: "01/26/2021 13:57:31",
    price: "9850"
  },
  {
    item: "ROLEX 126300  BLUE INDEX OYSTER 2",
    date: "01/26/2021 08:04:13",
    price: "8100"
  },
  {
    item: "PATEK 5320G 2",
    date: "01/25/2021 23:47:28",
    price: "62500"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "01/25/2021 18:06:08",
    price: "17300"
  },
  {
    item: "ROLEX 228238 DAY DATE SILVER DIAL",
    date: "01/25/2021 18:01:27",
    price: "34500"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "01/25/2021 17:36:10",
    price: "6850"
  },
  {
    item: "ROLEX 326938 SKY DWELLER GOLD WHITE DIAL",
    date: "01/25/2021 16:30:21",
    price: "44000"
  },
  {
    item: "ROLEX 126331  WIMBLEDON OYSTER",
    date: "01/25/2021 16:18:21",
    price: "12700"
  },
  {
    item: "ROLEX 126334  BLUE ROMAN JUB",
    date: "01/25/2021 15:38:12",
    price: "10300"
  },
  {
    item: "ROLEX 124300 OYSTER PERPETUAL GREEN DIAL",
    date: "01/25/2021 14:56:54",
    price: "8600"
  },
  {
    item: "ROLEX 126300 BLUE STICK JUBILEE",
    date: "01/25/2021 14:16:07",
    price: "8500"
  },
  {
    item: "ROLEX 126334 BLACK INDEX JUB",
    date: "01/25/2021 13:32:59",
    price: "10200"
  },
  {
    item: "PATEK PHILIPPE 5205R BLACK",
    date: "01/25/2021 12:57:10",
    price: "42800"
  },
  {
    item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
    date: "01/25/2021 12:57:10",
    price: "14800"
  },
  {
    item: "ROLEX 126334 WHITE INDEX OYSTER",
    date: "01/25/2021 12:43:16",
    price: "9900"
  },
  {
    item: "ROLEX 126334 BLUE INDEX OYSTER",
    date: "01/25/2021 12:39:32",
    price: "10200"
  },
  {
    item: "TUDOR BLACK BAY 58 M79030B SMURF",
    date: "01/25/2021 11:56:29",
    price: "3790"
  },
  {
    item: "PATEK 7118/1R-010 CHAMP",
    date: "01/25/2021 11:21:55",
    price: "53500"
  },
  {
    item: "ROLEX 126755SARU GMT MASTER II RGLD DIAM",
    date: "01/25/2021 11:21:55",
    price: "112000"
  },
  {
    item: "PATEK 5990/1A",
    date: "01/25/2021 02:38:45",
    price: "96500"
  },
  {
    item: "ROLEX 126234 DATEJUST BLUE FLU BEZ JUBIL",
    date: "01/21/2021 17:27:32",
    price: "8300"
  },
  {
    item: "ROLEX SKYDWELLER 326235 WHITE DIAL",
    date: "01/21/2021 16:44:33",
    price: "39500"
  },
  {
    item: "PATEK 5167R",
    date: "01/21/2021 16:19:33",
    price: "56000"
  },
  {
    item: "ROLEX 126300 WIMBLEDON OYSTER",
    date: "01/21/2021 16:19:33",
    price: "8300"
  },
  {
    item: "PO ROLEX 116500 DAYTONA WHT DIAL",
    date: "01/21/2021 15:24:09",
    price: "26200"
  },
  {
    item: "CARTIER SANTOS ROSE GOLD WGSA0008",
    date: "01/21/2021 14:11:33",
    price: "53500"
  },
  {
    item: "ROLEX 116613LB",
    date: "01/21/2021 13:51:01",
    price: "13450"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "01/21/2021 12:18:40",
    price: "18450"
  },
  {
    item: "PATEK 7118/1R CHAMP",
    date: "01/21/2021 03:02:50",
    price: "54000"
  },
  {
    item: "PATEK 7118/1R WHITE",
    date: "01/21/2021 03:02:50",
    price: "54000"
  },
  {
    item: "ROLEX 126234 36MM DJUST BLU DIAL FLU OYS",
    date: "01/20/2021 12:00:28",
    price: "8650"
  },
  {
    item: "IWC IW500710 PORTUGIESER AUTOMATIC 42MM",
    date: "01/19/2021 16:14:16",
    price: "9398"
  },
  {
    item: "ROLEX 279173 CHAMP STICK JUBILEE",
    date: "01/19/2021 14:43:22",
    price: "8595"
  },
  {
    item: "ROLEX 228235 SUNDUST STRIPE MOTIF",
    date: "01/19/2021 10:52:22",
    price: "36650"
  },
  {
    item: "ROLEX 126334  WIMBLEDON JUBILEE",
    date: "01/18/2021 14:01:00",
    price: "10850"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "01/18/2021 13:30:42",
    price: "20000"
  },
  {
    item: "AUDEMARS PIGUET 263150R RGOLD ROYAL OAK",
    date: "01/18/2021 11:21:14",
    price: "53500"
  },
  {
    item: "ROLEX 228235 WHITE ROMAN",
    date: "01/14/2021 11:04:01",
    price: "38600"
  },
  {
    item: "OMEGA SEAMASTER 21030422004001 WHITE DIA",
    date: "01/13/2021 18:22:34",
    price: "4500"
  },
  {
    item: "ROLEX YACHTMASTER 116622 BLUE DIAL",
    date: "01/13/2021 17:34:22",
    price: "13000"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "01/13/2021 10:39:38",
    price: "3640"
  },
  {
    item: "ROLEX SKYDWELLER 326235 SLATE DIAL",
    date: "01/12/2021 12:54:26",
    price: "41900"
  },
  {
    item: "ROLEX 326933  WHITE DIAL",
    date: "01/12/2021 11:12:53",
    price: "17800"
  },
  {
    item: "ROLEX 126200 WHITE  ROMAN JUBILEE",
    date: "01/11/2021 15:41:12",
    price: "7050"
  },
  {
    item: "IWC IW377719 PILOT CHRONO SPITFIRE STEEL",
    date: "01/11/2021 15:38:41",
    price: "5500"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "01/09/2021 17:43:20",
    price: "1400"
  },
  {
    item: "ROLEX 116610LV SUBMARINER HULK",
    date: "01/08/2021 12:36:17",
    price: "18600"
  },
  {
    item: "CARTIER WSSA0029 SANTOS MIDSIZE",
    date: "01/08/2021 11:42:35",
    price: "5000"
  },
  {
    item: "ROLEX DAYTONA 116503 CHAMPAGNE INDEX DIA",
    date: "01/07/2021 13:10:37",
    price: "19000"
  },
  {
    item: "CARTIER SANTOS LARGE BLUE WSSA0030",
    date: "01/07/2021 11:41:39",
    price: "6750"
  },
  {
    item: "CARTIER WSSA0018 SANTOS LARGE WHITE",
    date: "01/07/2021 11:41:39",
    price: "6750"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "01/07/2021 02:01:37",
    price: "19500"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "01/07/2021 00:52:01",
    price: "12500"
  },
  {
    item: "ROLEX  126660 BLUE JAMES CAMERON",
    date: "01/07/2021 00:52:01",
    price: "14500"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "01/07/2021 00:52:01",
    price: "18350"
  },
  {
    item: "ROLEX EXPLORER 216570 POLAR WHITE",
    date: "01/07/2021 00:52:01",
    price: "10700"
  },
  {
    item: "ROLEX 126334 WIMBELDON OYSTER",
    date: "01/06/2021 23:02:35",
    price: "10300"
  },
  {
    item: "PATEK 5980/1R",
    date: "01/06/2021 18:33:21",
    price: "174000"
  },
  {
    item: "ROLEX SKYDWELLER 326238 CHAMPAGNE DIAL",
    date: "01/06/2021 18:27:10",
    price: "37000"
  },
  {
    item: "ROLEX SKYDWELLER 326238 WHITE DIAL",
    date: "01/06/2021 18:27:10",
    price: "37000"
  },
  {
    item: "ROLEX 116519 STEEL DIAL",
    date: "01/06/2021 14:46:36",
    price: "36000"
  },
  {
    item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
    date: "01/06/2021 14:26:40",
    price: "15850"
  },
  {
    item: "P/O PATEK 5164A",
    date: "01/06/2021 14:23:12",
    price: "51175"
  },
  {
    item: "ROLEX 126300 WHITE INDEX OYSTER",
    date: "01/06/2021 13:51:12",
    price: "7650"
  },
  {
    item: "ROLEX 126300 WHITE ROMAN OYSTER",
    date: "01/06/2021 13:51:12",
    price: "7650"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "01/06/2021 13:03:08",
    price: "17650"
  },
  {
    item: "ROLEX  228239 GREEN DIAL",
    date: "01/06/2021 12:02:41",
    price: "36500"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "01/06/2021 11:06:06",
    price: "3725"
  },
  {
    item: "TUDOR 79830 PEPSI ON STRAP",
    date: "01/06/2021 11:06:06",
    price: "3425"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS 5712R",
    date: "01/06/2021 00:30:42",
    price: "76000"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "01/06/2021 00:30:42",
    price: "19500"
  },
  {
    item: "ROLEX 116588TBR TIGER",
    date: "01/06/2021 00:30:42",
    price: "125000"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "01/06/2021 00:30:42",
    price: "26500"
  },
  {
    item: "ROLEX 226659",
    date: "01/06/2021 00:30:42",
    price: "28000"
  },
  {
    item: "ROLEX 124300 BLACK DIAL",
    date: "01/05/2021 18:24:57",
    price: "0"
  },
  {
    item: "ROLEX 126333 CHAMPAGNE JUBILEE",
    date: "01/05/2021 18:21:39",
    price: "12000"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "01/05/2021 18:21:39",
    price: "12500"
  },
  {
    item: "P/O ROLEX 126331 SUNDUST JUBILEE",
    date: "01/05/2021 18:21:38",
    price: "12500"
  },
  {
    item: "ROLEX 126331 CHOC INDEX JUBILEE",
    date: "01/05/2021 18:21:38",
    price: "12500"
  },
  {
    item: "ROLEX 228235 SUNDUST ROMAN",
    date: "01/05/2021 16:51:09",
    price: "37500"
  },
  {
    item: "ROLEX DAY-DATE MOTIF DIAL 228206",
    date: "01/05/2021 14:46:38",
    price: "52800"
  },
  {
    item: "PATEK 5980/1R",
    date: "01/05/2021 12:53:56",
    price: "158000"
  },
  {
    item: "OLD ROLEX BOX",
    date: "01/05/2021 12:39:07",
    price: "150"
  },
  {
    item: "DAVID OSCARSON TEAL KOI PEN",
    date: "01/05/2021 10:19:01",
    price: "1034"
  },
  {
    item: "ROLEX BOX",
    date: "01/05/2021 10:17:08",
    price: "175"
  },
  {
    item: "ROLEX 326934 SKYDWELLER WHITE DIAL",
    date: "01/05/2021 10:15:57",
    price: "18000"
  },
  {
    item: "ROLEX 126331 CHOC DIAL OYSTER",
    date: "01/04/2021 20:06:40",
    price: "12000"
  },
  {
    item: "ROLEX 116688",
    date: "01/04/2021 14:56:58",
    price: "40800"
  },
  {
    item: "PATEK 5980/1A BLUE",
    date: "01/04/2021 14:45:26",
    price: "93000"
  },
  {
    item: "PATEK 5990/1A",
    date: "01/04/2021 14:14:01",
    price: "99500"
  },
  {
    item: "ROLEX 228238  WHITE ROMAN",
    date: "01/04/2021 12:58:22",
    price: "33850"
  },
  {
    item: "ROLEX 116618LB SUBMARINER",
    date: "12/31/2020 15:03:25",
    price: "35750"
  },
  {
    item: "AP ROYAL OAK 26331OR CHRONO BROWN STRAP",
    date: "12/31/2020 14:05:59",
    price: "40500"
  },
  {
    item: "PATEK PHILIPPE AQUANAUT 5067A",
    date: "12/31/2020 13:39:27",
    price: "36000"
  },
  {
    item: "PATEK 5524G",
    date: "12/30/2020 18:03:03",
    price: "39500"
  },
  {
    item: "ROLEX 116619LB",
    date: "12/30/2020 15:28:54",
    price: "39000"
  },
  {
    item: "TUDOR 79830RB BLACK BAY GMT",
    date: "12/30/2020 14:45:54",
    price: "3300"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "12/30/2020 14:20:11",
    price: "26750"
  },
  {
    item: "ROLEX DAYTONA 116508 BLACK DIAMOND DIAL",
    date: "12/30/2020 14:07:40",
    price: "41800"
  },
  {
    item: "ROLEX DAYTONA 116518 PAUL NEWMAN",
    date: "12/30/2020 14:07:40",
    price: "33000"
  },
  {
    item: "PATEK 5168 GREEN STRAP",
    date: "12/29/2020 23:33:13",
    price: "450"
  },
  {
    item: "ROLEX 115234 OYSTER PERPETUAL BLK DIAL",
    date: "12/29/2020 22:38:26",
    price: "8250"
  },
  {
    item: "PATEK 5167R",
    date: "12/29/2020 22:37:56",
    price: "56500"
  },
  {
    item: "ROLEX 116695SATS YMASTER TUTTI FRUITTI",
    date: "12/29/2020 22:08:10",
    price: "90000"
  },
  {
    item: "ROLEX 228206 DAY DATE PLATINIUM BLU ROM",
    date: "12/29/2020 17:59:55",
    price: "53800"
  },
  {
    item: "ROLEX DAYTONA 116515 PINK DIAMOND DIAL",
    date: "12/29/2020 17:16:10",
    price: "42500"
  },
  {
    item: "ROLEX DAYTONA 116509 SILVER DIAL",
    date: "12/29/2020 17:05:27",
    price: "41000"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "12/29/2020 17:02:02",
    price: "18250"
  },
  {
    item: "ROLEX 126622 BLUE DIAL",
    date: "12/29/2020 15:45:38",
    price: "13000"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "12/29/2020 15:29:06",
    price: "24500"
  },
  {
    item: "TUDOR 79830RB BLACK BAY GMT",
    date: "12/29/2020 10:52:53",
    price: "3550"
  },
  {
    item: "ROLEX 116519 STEEL DIAL",
    date: "12/28/2020 20:05:35",
    price: "35800"
  },
  {
    item: "PATEK 5968A",
    date: "12/28/2020 17:59:28",
    price: "96000"
  },
  {
    item: "ROLEX 326938 SKY DWELLER BLK DIAL",
    date: "12/28/2020 17:53:27",
    price: "46000"
  },
  {
    item: "ROLEX SKYDWELLER 326235 CHOCOLATE DIAL",
    date: "12/28/2020 17:20:14",
    price: "42150"
  },
  {
    item: "ROLEX 116506 PLAIN DIAL",
    date: "12/28/2020 14:29:36",
    price: "82500"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "12/28/2020 13:55:27",
    price: "7000"
  },
  {
    item: "ROLEX 116619LB",
    date: "12/28/2020 11:52:16",
    price: "38500"
  },
  {
    item: "PATEK  5711/1R",
    date: "12/24/2020 17:07:31",
    price: "110000"
  },
  {
    item: "PATEK 5712/1A",
    date: "12/24/2020 16:59:27",
    price: "65000"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "12/23/2020 18:39:24",
    price: "15250"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "12/23/2020 18:39:24",
    price: "38200"
  },
  {
    item: "ROLEX 326933 BLACK DIAL",
    date: "12/23/2020 18:39:24",
    price: "18500"
  },
  {
    item: "ROLEX 126334 RHODIUM JUBILEE",
    date: "12/23/2020 16:29:23",
    price: "11000"
  },
  {
    item: "ROLEX 126334  WIMBLEDON JUBILEE",
    date: "12/23/2020 15:08:34",
    price: "10500"
  },
  {
    item: "ROLEX 126710 PEPSI JUBILEE",
    date: "12/23/2020 15:08:33",
    price: "18350"
  },
  {
    item: "ROLEX CELLINI DUAL 50525 BLACK DIAL",
    date: "12/23/2020 15:00:28",
    price: "12500"
  },
  {
    item: "ROLEX CELLINI TIME 50505 WHITE DIAL",
    date: "12/23/2020 15:00:28",
    price: "12000"
  },
  {
    item: "ROLEX OYSTER PERPETUAL 277200 CANDY PINK",
    date: "12/23/2020 15:00:08",
    price: "6250"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "12/23/2020 14:57:02",
    price: "15400"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS 5712R",
    date: "12/23/2020 14:22:09",
    price: "60800"
  },
  {
    item: "ROLEX 326938 SKY DWELLER BLK DIAL",
    date: "12/23/2020 12:17:13",
    price: "45650"
  },
  {
    item: "CARTIER WSSA0029 SANTOS MIDSIZE",
    date: "12/23/2020 11:47:35",
    price: "5400"
  },
  {
    item: "ROLEX 116505 BLACK DIAL",
    date: "12/23/2020 01:16:54",
    price: "41000"
  },
  {
    item: "ROLEX 116518LN CHAMP AND BLACK",
    date: "12/23/2020 01:12:19",
    price: "36700"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "12/23/2020 01:10:32",
    price: "26750"
  },
  {
    item: "ROLEX 116506 PLAIN DIAL",
    date: "12/23/2020 01:09:03",
    price: "83500"
  },
  {
    item: "ROLEX  216570  BLACK DIAL",
    date: "12/23/2020 01:09:02",
    price: "9000"
  },
  {
    item: "ROLEX 116519 STEEL DIAL",
    date: "12/23/2020 01:09:02",
    price: "34700"
  },
  {
    item: "ROLEX 126600 sea dweller",
    date: "12/23/2020 01:09:02",
    price: "13000"
  },
  {
    item: "ROLEX DAYTONA 116515 PINK ON BLACK",
    date: "12/23/2020 01:09:02",
    price: "34800"
  },
  {
    item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
    date: "12/23/2020 01:09:02",
    price: "14800"
  },
  {
    item: "ROLEX SUBMARINER 126618 BLUE",
    date: "12/22/2020 18:38:14",
    price: "37200"
  },
  {
    item: "ROLEX 228235 SUNDUST ROMAN",
    date: "12/22/2020 11:33:46",
    price: "36950"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "12/21/2020 17:52:15",
    price: "15650"
  },
  {
    item: "ROLEX 326934 SKYDWELLER WHITE DIAL",
    date: "12/21/2020 17:44:30",
    price: "18500"
  },
  {
    item: "ROLEX SKYDWELLER 326935 CHOCOLATE INDEX",
    date: "12/21/2020 16:04:44",
    price: "52800"
  },
  {
    item: "PATEK 5167R",
    date: "12/21/2020 13:39:28",
    price: "46750"
  },
  {
    item: "ROLEX 278275 CHOC DD",
    date: "12/21/2020 13:28:00",
    price: "26500"
  },
  {
    item: "ROLEX SKYDWELLER 326235 CHOCOLATE DIAL",
    date: "12/21/2020 12:39:35",
    price: "42750"
  },
  {
    item: "ROLEX DAYTONA 116515 PINK ON BLACK",
    date: "12/21/2020 12:26:54",
    price: "34600"
  },
  {
    item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
    date: "12/21/2020 12:26:54",
    price: "13000"
  },
  {
    item: "ROLEX 116509 WGLD MOP DIAL",
    date: "12/21/2020 07:34:12",
    price: "44350"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "12/18/2020 02:06:59",
    price: "26500"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "12/18/2020 02:06:59",
    price: "17700"
  },
  {
    item: "PATEK 5146G GREY DIAL",
    date: "12/18/2020 01:57:53",
    price: "32500"
  },
  {
    item: "PATEK PHILIPPE 5205R BLACK",
    date: "12/18/2020 01:57:53",
    price: "42800"
  },
  {
    item: "PATEK 5712/1A",
    date: "12/18/2020 01:42:26",
    price: "82000"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS 5712R",
    date: "12/18/2020 01:42:26",
    price: "75000"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "12/17/2020 21:19:47",
    price: "12450"
  },
  {
    item: "ROLEX 124300 OYSTER PERPETUAL RED",
    date: "12/17/2020 19:27:49",
    price: "9000"
  },
  {
    item: "ROLEX 228238 DAY DATE SILVER DIAL",
    date: "12/17/2020 16:35:00",
    price: "34200"
  },
  {
    item: "ROLEX 116518LN CHAMP AND BLACK",
    date: "12/17/2020 14:24:34",
    price: "36000"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "12/17/2020 14:20:31",
    price: "17700"
  },
  {
    item: "ROLEX 124300 OYSTER PERPETUAL RED",
    date: "12/17/2020 12:13:42",
    price: "9000"
  },
  {
    item: "ROLEX  126660 BLUE JAMES CAMERON",
    date: "12/17/2020 02:10:43",
    price: "15000"
  },
  {
    item: "ROLEX 126334  WIMBLEDON JUBILEE",
    date: "12/17/2020 02:08:51",
    price: "11250"
  },
  {
    item: "ROLEX 126334 BLUE INDEX JUBILEE",
    date: "12/17/2020 02:08:51",
    price: "11250"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "12/16/2020 21:30:29",
    price: "26000"
  },
  {
    item: "ROLEX 226659",
    date: "12/16/2020 21:30:29",
    price: "28000"
  },
  {
    item: "PATEK PHILIPPE LADIES AQUANAUT 5062/450R",
    date: "12/16/2020 21:27:03",
    price: "197000"
  },
  {
    item: "ROLEX 116509 BLU DIAL",
    date: "12/16/2020 21:25:21",
    price: "39500"
  },
  {
    item: "ROLEX 116519 STEEL DIAL",
    date: "12/16/2020 21:25:21",
    price: "34700"
  },
  {
    item: "ROLEX 126331  WIMBLEDON JUBILEE",
    date: "12/16/2020 21:22:49",
    price: "14250"
  },
  {
    item: "ROLEX 126334 BLUE INDEX OYSTER",
    date: "12/16/2020 17:26:04",
    price: "10000"
  },
  {
    item: "ROLEX 228235 GREEN ROMAN",
    date: "12/16/2020 16:00:34",
    price: "42500"
  },
  {
    item: "TUDOR 79830RB BLACK BAY GMT",
    date: "12/16/2020 15:29:55",
    price: "3650"
  },
  {
    item: "ROLEX 126710 PEPSI JUBILEE",
    date: "12/16/2020 14:06:02",
    price: "18100"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "12/16/2020 14:06:02",
    price: "37500"
  },
  {
    item: "ROLEX 116500LN BLACK",
    date: "12/16/2020 13:47:02",
    price: "25500"
  },
  {
    item: "ROLEX 116681 yacht master 2",
    date: "12/16/2020 12:56:26",
    price: "23200"
  },
  {
    item: "ROLEX 126710 PEPSI JUBILEE",
    date: "12/16/2020 11:42:56",
    price: "18700"
  },
  {
    item: "ROLEX 226659",
    date: "12/15/2020 18:38:46",
    price: "28400"
  },
  {
    item: "ROLEX 126334 BLUE ROMAN OYSTER",
    date: "12/15/2020 17:51:47",
    price: "10000"
  },
  {
    item: "ROLEX WARRANTY BOOKLET AND WALLET",
    date: "12/15/2020 13:11:25",
    price: "12.5"
  },
  {
    item: "ROLEX 126600 sea dweller",
    date: "12/15/2020 10:22:21",
    price: "12700"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "12/14/2020 23:19:58",
    price: "27000"
  },
  {
    item: "ROLEX YACHTMASTER 2 116680",
    date: "12/14/2020 22:06:22",
    price: "18400"
  },
  {
    item: "PATEK 7010/1R CHAMP",
    date: "12/14/2020 17:27:54",
    price: "53200"
  },
  {
    item: "ROLEX 126200 WHITE  ROMAN JUBILEE",
    date: "12/14/2020 14:00:52",
    price: "5000"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "12/14/2020 13:56:09",
    price: "15700"
  },
  {
    item: "ROLEX SUBMARINER 126618 BLACK DIAL",
    date: "12/14/2020 13:50:10",
    price: "37000"
  },
  {
    item: "CARTIER BALLON BLEU DE CARTIER W69012Z4",
    date: "12/14/2020 12:14:28",
    price: "4795"
  },
  {
    item: "PATEK 7010R  CHAMP",
    date: "12/14/2020 11:33:25",
    price: "30000"
  },
  {
    item: "PATEK 7010R WHITE DIAL",
    date: "12/14/2020 11:33:25",
    price: "32000"
  },
  {
    item: "PATEK 7118/1R CHAMP",
    date: "12/14/2020 11:31:03",
    price: "52800"
  },
  {
    item: "ROLEX 326935 SKYDWELLER RHODIUM ROSE",
    date: "12/11/2020 14:25:18",
    price: "51150"
  },
  {
    item: "AUDEMARS PIGUET OFFSHORE SILVER 26400IO",
    date: "12/11/2020 14:23:30",
    price: "34400"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLK DIAL",
    date: "12/11/2020 02:44:13",
    price: "15000"
  },
  {
    item: "ROLEX 126622 RHODIUM DIAL",
    date: "12/11/2020 02:44:13",
    price: "12500"
  },
  {
    item: "ROLEX 124300 BLACK DIAL",
    date: "12/10/2020 17:06:14",
    price: "7000"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "12/10/2020 16:27:16",
    price: "26500"
  },
  {
    item: "ROLEX 116500LN BLACK",
    date: "12/10/2020 16:27:16",
    price: "24500"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "12/10/2020 16:27:16",
    price: "19000"
  },
  {
    item: "ROLEX YACHTMASTER 126655 PAVE DIAMOND",
    date: "12/10/2020 16:27:16",
    price: "42000"
  },
  {
    item: "ROLEX 126619 SUBMARINER BLUE BEZEL BLACK",
    date: "12/10/2020 15:15:52",
    price: "46500"
  },
  {
    item: "ROLEX 126300 BLACK INDEX OYSTER 2",
    date: "12/10/2020 14:43:34",
    price: "7800"
  },
  {
    item: "ROLEX 228238 CHAMP ROMAN",
    date: "12/10/2020 12:23:52",
    price: "36000"
  },
  {
    item: "ROLEX 116518LN CHAMP AND BLACK",
    date: "12/08/2020 12:29:05",
    price: "36000"
  },
  {
    item: "ROLEX 126331 SUNDUST JUBILEE",
    date: "12/08/2020 01:08:50",
    price: "13500"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "12/07/2020 12:04:30",
    price: "3600"
  },
  {
    item: "TUDOR 79830RB BLACK BAY GMT",
    date: "12/07/2020 12:04:30",
    price: "3550"
  },
  {
    item: "ROLEX 124300 OYSTER PERPETUAL GREEN DIAL",
    date: "12/03/2020 14:38:06",
    price: "8450"
  },
  {
    item: "ROLEX 116610LV SUBMARINER HULK",
    date: "12/03/2020 14:21:22",
    price: "19000"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK 26331ST BLACK",
    date: "12/03/2020 13:48:22",
    price: "33250"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "12/03/2020 13:48:22",
    price: "25000"
  },
  {
    item: "ROLEX 126300 WIMBLEDON OYSTER",
    date: "12/03/2020 13:43:25",
    price: "9250"
  },
  {
    item: "PATEK 7010R WHITE DIAL",
    date: "12/03/2020 12:58:35",
    price: "33650"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS 5712R",
    date: "12/03/2020 10:08:14",
    price: "74000"
  },
  {
    item: "PATEK 5168G BLUE",
    date: "12/03/2020 02:56:47",
    price: "61000"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "12/02/2020 18:18:34",
    price: "15000"
  },
  {
    item: "GLASHUTTE SERENADE 1-39-22-12-22-34",
    date: "12/02/2020 16:41:12",
    price: "9100"
  },
  {
    item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
    date: "12/02/2020 12:26:58",
    price: "16800"
  },
  {
    item: "ROLEX 116588TBR TIGER",
    date: "12/01/2020 19:55:22",
    price: "130000"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK 15202BA YG SLV",
    date: "12/01/2020 19:53:12",
    price: "50500"
  },
  {
    item: "PATEK 5396G WHITE",
    date: "12/01/2020 19:42:24",
    price: "31000"
  },
  {
    item: "ROLEX 126333 CHAMPAGNE JUBILEE",
    date: "12/01/2020 16:15:29",
    price: "12550"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK 26331ST BLACK",
    date: "12/01/2020 16:12:32",
    price: "0"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "12/01/2020 15:56:24",
    price: "0"
  },
  {
    item: "ROLEX 326933 BLACK DIAL",
    date: "12/01/2020 15:23:38",
    price: "19300"
  },
  {
    item: "ROLEX 326933  WHITE DIAL",
    date: "12/01/2020 15:23:18",
    price: "17450"
  },
  {
    item: "JAEGER LECOULTRE GEOPHYSIC Q8102520",
    date: "12/01/2020 15:13:42",
    price: "16450"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "12/01/2020 15:13:42",
    price: "26000"
  },
  {
    item: "ROLEX 126300 BLUE STICK JUBILEE",
    date: "12/01/2020 15:10:42",
    price: "8400"
  },
  {
    item: "ROLEX 116610LV SUBMARINER HULK",
    date: "12/01/2020 14:26:02",
    price: "18750"
  },
  {
    item: "ROLEX 126331  WIMBLEDON JUBILEE",
    date: "12/01/2020 13:11:56",
    price: "13225"
  },
  {
    item: "TUDOR 79030 BLACK BAY 58 ON STRAP",
    date: "11/30/2020 15:05:07",
    price: "3300"
  },
  {
    item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
    date: "11/27/2020 14:36:40",
    price: "0"
  },
  {
    item: "P/O PATEK 5164A",
    date: "11/27/2020 14:15:25",
    price: "56000"
  },
  {
    item: "ROLEX SKYDWELLER 326235 CHOCOLATE DIAL",
    date: "11/26/2020 04:05:58",
    price: "42500"
  },
  {
    item: "PATEK 5726A-001",
    date: "11/26/2020 03:59:34",
    price: "59000"
  },
  {
    item: "TUDOR 79830 PEPSI ON STRAP",
    date: "11/25/2020 16:25:41",
    price: "3700"
  },
  {
    item: "PATEK 5712/1A",
    date: "11/25/2020 15:39:33",
    price: "70500"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "11/24/2020 20:10:21",
    price: "19000"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "11/24/2020 20:10:21",
    price: "18000"
  },
  {
    item: "ROLEX 228239 DAY DATE BLK DIAL",
    date: "11/24/2020 12:21:57",
    price: "34000"
  },
  {
    item: "TUDOR 79830RB BLACK BAY GMT",
    date: "11/23/2020 17:48:55",
    price: "3850"
  },
  {
    item: "ROLEX 116508 DAYTONA GREEN DIAL",
    date: "11/23/2020 13:51:20",
    price: "53150"
  },
  {
    item: "RICHARD MILLE RM30 WHITE RUSH",
    date: "11/23/2020 13:14:09",
    price: "206000"
  },
  {
    item: "ROLEX BOX",
    date: "11/20/2020 02:39:30",
    price: "203.39"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS 5711/1A WHITE",
    date: "11/20/2020 02:22:36",
    price: "0"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS 5711/1A WHITE",
    date: "11/19/2020 21:26:53",
    price: "62700"
  },
  {
    item: "PATEK 5396R BLUE BAUGETTE DIAL",
    date: "11/19/2020 15:09:37",
    price: "51500"
  },
  {
    item: "ROLEX 228238 CHAMP ROMAN",
    date: "11/18/2020 23:16:14",
    price: "35050"
  },
  {
    item: "ROLEX 228238 DAY DATE SILVER DIAL",
    date: "11/18/2020 23:16:14",
    price: "35050"
  },
  {
    item: "ROLEX 126300  BLUE INDEX OYSTER 2",
    date: "11/18/2020 23:14:44",
    price: "8000"
  },
  {
    item: "ROLEX 228238 DAY DATE SILVER DIAL",
    date: "11/18/2020 12:45:46",
    price: "35050"
  },
  {
    item: "ROLEX 228238 CHAMP ROMAN",
    date: "11/18/2020 12:35:09",
    price: "35050"
  },
  {
    item: "ROLEX 178273 SILVER DIAMOND DIAL",
    date: "11/18/2020 12:17:37",
    price: "10485"
  },
  {
    item: "TUDOR 79830 PEPSI ON STRAP",
    date: "11/18/2020 10:34:57",
    price: "2975"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "11/17/2020 17:29:07",
    price: "25000"
  },
  {
    item: "ROLEX 126331  WIMBLEDON JUBILEE",
    date: "11/17/2020 13:01:20",
    price: "13100"
  },
  {
    item: "ROLEX PO 16618 SUBMARINER CHAMP DIAL",
    date: "11/17/2020 12:55:46",
    price: "22500"
  },
  {
    item: "CARTIER SANTOS LARGE MODEL",
    date: "11/13/2020 13:39:01",
    price: "6900"
  },
  {
    item: "PATEK 5146J SLATE DIAL",
    date: "11/13/2020 13:08:25",
    price: "41700"
  },
  {
    item: "PATEK 5726A-001",
    date: "11/13/2020 12:46:55",
    price: "41189"
  },
  {
    item: "PATEK 5930G COMPLICATIONS WORLD TIME",
    date: "11/13/2020 12:46:55",
    price: "70000"
  },
  {
    item: "PATEK 7300/1A BLUE",
    date: "11/13/2020 12:46:55",
    price: "26080"
  },
  {
    item: "ROLEX 326934 SKYDWELLER WHITE DIAL",
    date: "11/13/2020 11:37:17",
    price: "18750"
  },
  {
    item: "ROLEX 116506 PLAIN DIAL",
    date: "11/13/2020 11:14:15",
    price: "81500"
  },
  {
    item: "PATEK 7300/1200R TWENTY 4",
    date: "11/12/2020 16:48:29",
    price: "31000"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "11/12/2020 12:24:12",
    price: "15500"
  },
  {
    item: "ROLEX DAYTONA 116515 PINK ON BLACK",
    date: "11/12/2020 12:23:48",
    price: "34500"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "11/11/2020 15:40:03",
    price: "3700"
  },
  {
    item: "ROLEX DAYTONA BLACK DIAL 116520",
    date: "11/11/2020 15:06:03",
    price: "17400"
  },
  {
    item: "ROLEX DAYTONA BLACK DIAL 116520",
    date: "11/11/2020 14:38:18",
    price: "17400"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS 7118 DIAMOND",
    date: "11/11/2020 14:24:51",
    price: "47500"
  },
  {
    item: "ROLEX DAYTONA 116503 WHITE MOP DIAMOND",
    date: "11/11/2020 14:24:51",
    price: "23600"
  },
  {
    item: "ROLEX DAYTONA 116508 PAUL NEWMAN BLACK",
    date: "11/11/2020 14:24:51",
    price: "39000"
  },
  {
    item: "ROLEX 126231 RHODIUM JUB",
    date: "11/11/2020 14:16:01",
    price: "11300"
  },
  {
    item: "ROLEX 126231 RHODIUM JUB",
    date: "11/11/2020 14:12:20",
    price: "10350"
  },
  {
    item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
    date: "11/11/2020 13:19:22",
    price: "14500"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "11/11/2020 13:17:26",
    price: "18800"
  },
  {
    item: "ROLEX 116519 STEEL DIAL",
    date: "11/11/2020 13:17:26",
    price: "34500"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "11/11/2020 13:17:26",
    price: "6800"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "11/11/2020 13:17:26",
    price: "18200"
  },
  {
    item: "ROLEX 126233 DATEJUST WHITE ROMAN",
    date: "11/06/2020 13:48:10",
    price: "11500"
  },
  {
    item: "ROLEX 126334 BLUE ROMAN OYSTER",
    date: "11/05/2020 17:55:28",
    price: "10200"
  },
  {
    item: "PANERAI PAM1313 LUMINOR MARINA",
    date: "11/05/2020 15:13:51",
    price: "5825"
  },
  {
    item: "TUDOR 79030 BLACK BAY 58 ON STRAP",
    date: "11/05/2020 15:10:46",
    price: "3275"
  },
  {
    item: "ROLEX 116500 DAYTONA WHITE DIAL",
    date: "11/05/2020 15:07:05",
    price: "26000"
  },
  {
    item: "ROLEX 116400GV MILGUASS BLACK",
    date: "11/05/2020 15:02:33",
    price: "8350"
  },
  {
    item: "ROLEX DAYTONA 116509 SILVER DIAL",
    date: "11/05/2020 14:49:57",
    price: "25500"
  },
  {
    item: "ROLEX 326939  CREAM IVORY",
    date: "11/05/2020 14:11:41",
    price: "29180"
  },
  {
    item: "ROLEX 126300 WHITE STICK JUBILEE",
    date: "11/05/2020 14:00:58",
    price: "8050"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "11/04/2020 18:01:54",
    price: "15500"
  },
  {
    item: "ROLEX 116688",
    date: "11/04/2020 17:20:30",
    price: "41000"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "11/04/2020 16:06:38",
    price: "7000"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLU DIAL",
    date: "11/04/2020 15:48:42",
    price: "15500"
  },
  {
    item: "ROLEX 126334  SILVER JUBILEE",
    date: "11/04/2020 14:09:10",
    price: "9900"
  },
  {
    item: "ROLEX 326935 SKYDWELLER RHODIUM ROSE",
    date: "11/04/2020 12:10:03",
    price: "51350"
  },
  {
    item: "ROLEX 116506 HEAD ONLY",
    date: "11/03/2020 18:26:24",
    price: "47500"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "11/03/2020 16:35:48",
    price: "0"
  },
  {
    item: "ROLEX 116621 YMASTER BLK DIAL TWO TONE",
    date: "11/03/2020 16:32:18",
    price: "12000"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK 26331ST BLUE",
    date: "11/03/2020 16:06:58",
    price: "39300"
  },
  {
    item: "P/O PATEK 5164A",
    date: "11/02/2020 14:46:24",
    price: "52000"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "10/30/2020 12:44:12",
    price: "12400"
  },
  {
    item: "ROLEX 116681 yacht master 2",
    date: "10/29/2020 17:08:30",
    price: "24000"
  },
  {
    item: "ROLEX 126603 SEADWELLER TWO TONE BLACK",
    date: "10/29/2020 16:02:22",
    price: "16000"
  },
  {
    item: "OMEGA DIVER 210-30-42-20-01-001",
    date: "10/29/2020 14:51:24",
    price: "3900"
  },
  {
    item: "ROLEX YACHTMASTER 2 116680",
    date: "10/29/2020 14:22:04",
    price: "13150"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "10/29/2020 13:06:12",
    price: "6700"
  },
  {
    item: "ROLEX 116505 CHOC DIAL",
    date: "10/29/2020 13:00:01",
    price: "41000"
  },
  {
    item: "PATEK 7010R  CHAMP",
    date: "10/29/2020 12:53:02",
    price: "31500"
  },
  {
    item: "ROLEX 126231 RHODIUM JUB",
    date: "10/28/2020 18:21:12",
    price: "11300"
  },
  {
    item: "ROLEX 178273 BLK MOP DIAMOND",
    date: "10/28/2020 17:11:36",
    price: "12000"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "10/28/2020 17:02:04",
    price: "37250"
  },
  {
    item: "ROLEX 228348 BLACK DIAMOND DIAL",
    date: "10/28/2020 16:58:15",
    price: "45000"
  },
  {
    item: "ROLEX 126300 WIMBLEDON JUBILEE",
    date: "10/28/2020 16:57:32",
    price: "8600"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "10/28/2020 16:47:44",
    price: "37250"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "10/28/2020 16:17:16",
    price: "6700"
  },
  {
    item: "ROLEX 126334 SILVER OYSTER",
    date: "10/28/2020 16:05:36",
    price: "9700"
  },
  {
    item: "PANERAI LUMINOR 8 DAYS PAM00510",
    date: "10/28/2020 13:56:17",
    price: "4752"
  },
  {
    item: "ROLEX 124060LN",
    date: "10/28/2020 13:43:55",
    price: "11800"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "10/28/2020 13:43:55",
    price: "13225"
  },
  {
    item: "PANERAI PAM00425",
    date: "10/28/2020 13:43:22",
    price: "5760"
  },
  {
    item: "ROLEX 126334  BLUE ROMAN JUB",
    date: "10/28/2020 13:38:34",
    price: "10000"
  },
  {
    item: "ROLEX 116515 CHOC DIAL",
    date: "10/27/2020 13:49:27",
    price: "34000"
  },
  {
    item: "ROLEX 116519 STEEL DIAL",
    date: "10/27/2020 13:49:27",
    price: "34000"
  },
  {
    item: "ROLEX DATEJUST 278273 SILVER DIAM JUBILE",
    date: "10/27/2020 11:19:30",
    price: "12000"
  },
  {
    item: "ROLEX 126334 BLUE INDEX OYSTER",
    date: "10/27/2020 11:07:40",
    price: "9900"
  },
  {
    item: "ROLEX 126334 WHITE INDEX JUB",
    date: "10/27/2020 11:07:40",
    price: "10000"
  },
  {
    item: "ROLEX 126334 BLACK OYSTER",
    date: "10/26/2020 16:08:20",
    price: "9650"
  },
  {
    item: "BELL AND ROSS BRV293-BLU-ST/SST",
    date: "10/26/2020 13:22:33",
    price: "2300"
  },
  {
    item: "116503 BLACK MOP DIAMOND DIAL",
    date: "10/26/2020 13:21:17",
    price: "23500"
  },
  {
    item: "ROLEX 116506 PLAIN DIAL",
    date: "10/26/2020 13:18:47",
    price: "78500"
  },
  {
    item: "PATEK 5167A",
    date: "10/26/2020 13:14:07",
    price: "45175"
  },
  {
    item: "ROLEX 116713LN GMT MASTER II TWO TONE",
    date: "10/26/2020 13:08:41",
    price: "14500"
  },
  {
    item: "ROLEX 126334 BLUE ROMAN OYSTER",
    date: "10/26/2020 13:08:41",
    price: "9650"
  },
  {
    item: "ROLEX 126618LB 41MM SUBMARINER YELLOW",
    date: "10/26/2020 13:08:41",
    price: "37500"
  },
  {
    item: "ROLEX 126622 BLUE DIAL",
    date: "10/26/2020 10:10:23",
    price: "12500"
  },
  {
    item: "PATEK 5172G COMPLICATIONS",
    date: "10/25/2020 14:21:25",
    price: "55250"
  },
  {
    item: "ROLEX 116681 yacht master 2",
    date: "10/21/2020 17:59:40",
    price: "19000"
  },
  {
    item: "ROLEX 226659",
    date: "10/21/2020 16:55:56",
    price: "28000"
  },
  {
    item: "AUDEMARS 26320 SILVER DIAL ON BRCELET",
    date: "10/20/2020 17:40:41",
    price: "27500"
  },
  {
    item: "ROLEX 228235 WHITE ROMAN",
    date: "10/20/2020 01:41:55",
    price: "36600"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "10/19/2020 22:58:08",
    price: "13600"
  },
  {
    item: "ROLEX 116618LB SUBMARINER",
    date: "10/19/2020 22:56:53",
    price: "33500"
  },
  {
    item: "CARTIER SANTOS LARGE ADLC WSSA0037",
    date: "10/19/2020 22:54:58",
    price: "6800"
  },
  {
    item: "ROLEX 126334 RHODIUM OYSTER",
    date: "10/19/2020 16:09:19",
    price: "9600.34"
  },
  {
    item: "ROLEX 279173 CHAMP ROMN JUBILEE",
    date: "10/19/2020 16:05:15",
    price: "8308.5"
  },
  {
    item: "ROLEX 126300 BLUE ROMAN OYSTER",
    date: "10/19/2020 16:00:44",
    price: "7714.23"
  },
  {
    item: "ROLEX 126334 BLUE INDEX JUBILEE",
    date: "10/19/2020 15:55:18",
    price: "10400"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "10/19/2020 14:59:03",
    price: "36000"
  },
  {
    item: "IWC IW327006",
    date: "10/19/2020 13:48:33",
    price: "3248.5"
  },
  {
    item: "IWC IW503301",
    date: "10/19/2020 13:48:33",
    price: "29181"
  },
  {
    item: "116503 BLACK MOP DIAMOND DIAL",
    date: "10/19/2020 13:24:28",
    price: "23500"
  },
  {
    item: "PATEK 5164R",
    date: "10/19/2020 13:21:33",
    price: "75000"
  },
  {
    item: "ROLEX 277200 OYSTER PERPETUAL ORANGE DIA",
    date: "10/19/2020 13:14:45",
    price: "5400"
  },
  {
    item: "ROLEX 277200 OYSTER PREPETUAL YELLOW DIA",
    date: "10/19/2020 13:14:45",
    price: "5300"
  },
  {
    item: "ROLEX 126300 RHODIUM INDEX JUBILE",
    date: "10/18/2020 20:10:11",
    price: "8300"
  },
  {
    item: "PRE OWNED ROLEX 326935 RHODIUM",
    date: "10/18/2020 20:02:25",
    price: "49000"
  },
  {
    item: "AUDEMARS PIGUET 15400OR BLACK DIAL STRAP",
    date: "10/18/2020 20:01:57",
    price: "32500"
  },
  {
    item: "ROLEX 126622 BLUE DIAL",
    date: "10/16/2020 17:01:42",
    price: "12000"
  },
  {
    item: "ROLEX 126300 BLUE ROMAN JUB",
    date: "10/16/2020 16:59:07",
    price: "8400"
  },
  {
    item: "ROLEX 228235 SUNDUST ROMAN",
    date: "10/16/2020 16:55:46",
    price: "36700"
  },
  {
    item: "ROLEX 126300 BLUE STICK JUBILEE",
    date: "10/16/2020 16:55:45",
    price: "8400"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "10/16/2020 16:55:45",
    price: "37250"
  },
  {
    item: "ROLEX 116400GV BLUE DIAL",
    date: "10/16/2020 15:20:24",
    price: "9150"
  },
  {
    item: "ROLEX 126655 BLACK DIAL",
    date: "10/16/2020 15:17:35",
    price: "25500"
  },
  {
    item: "ROLEX 126300 WHITE ROMAN JUBILE",
    date: "10/16/2020 15:13:55",
    price: "8300"
  },
  {
    item: "ROLEX 178240 OYSTER SILVER",
    date: "10/16/2020 15:09:31",
    price: "5350"
  },
  {
    item: "ROLEX 126331 CHOCOLATE DIAMOND OYSTER",
    date: "10/16/2020 15:06:18",
    price: "13300"
  },
  {
    item: "ROLEX 126331 SUNDUST DIAMOND OYSTER",
    date: "10/16/2020 15:06:18",
    price: "13350"
  },
  {
    item: "ROLEX 126334 BLACK INDEX JUB",
    date: "10/16/2020 14:33:10",
    price: "9900"
  },
  {
    item: "ROLEX 326933  WHITE DIAL",
    date: "10/15/2020 04:00:25",
    price: "17200"
  },
  {
    item: "ROLEX 124300 OYSTER PREP YELLOW DIA",
    date: "10/15/2020 03:38:15",
    price: "7900"
  },
  {
    item: "AP ROYAL OAK 26331OR CHRONO BROWN STRAP",
    date: "10/15/2020 00:15:02",
    price: "38500"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK 26320OR SILVER",
    date: "10/15/2020 00:15:02",
    price: "38500"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK SILVER STRAP",
    date: "10/15/2020 00:15:02",
    price: "32000"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "10/14/2020 15:06:13",
    price: "18500"
  },
  {
    item: "ROLEX 126710 PEPSI JUBILEE",
    date: "10/13/2020 18:02:05",
    price: "15000"
  },
  {
    item: "ROLEX 326938 SKY DWELLER BLK DIAL",
    date: "10/13/2020 16:27:45",
    price: "46400"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "10/13/2020 16:24:15",
    price: "37000"
  },
  {
    item: "ROLEX 124300 OYSTER PERP GREEN DIAL 41MM",
    date: "10/13/2020 16:20:35",
    price: "7900"
  },
  {
    item: "ROLEX 126613 SUBMARINER 2020 BLK DIAL",
    date: "10/13/2020 14:44:15",
    price: "15000"
  },
  {
    item: "ROLEX 116500LN BLACK",
    date: "10/13/2020 14:41:52",
    price: "22200"
  },
  {
    item: "ROLEX 116610LV SUBMARINER HULK",
    date: "10/13/2020 14:41:52",
    price: "17200"
  },
  {
    item: "ROLEX YACHTMASTER 126621 CHOCOLATE",
    date: "10/13/2020 14:41:52",
    price: "14250"
  },
  {
    item: "ROLEX 126334 BLACK OYSTER",
    date: "10/13/2020 14:39:45",
    price: "9600"
  },
  {
    item: "ROLEX 126334 BLUE ROMAN OYSTER",
    date: "10/13/2020 14:39:45",
    price: "9600"
  },
  {
    item: "ROLEX 126334 RHODIUM OYSTER",
    date: "10/13/2020 14:39:45",
    price: "9600"
  },
  {
    item: "ROLEX 126334 WHITE INDEX OYSTER",
    date: "10/13/2020 14:39:45",
    price: "9600"
  },
  {
    item: "ROLEX 126334 WHITE ROMAN OYSTER",
    date: "10/13/2020 14:39:45",
    price: "9600"
  },
  {
    item: "ROLEX 126610LV KERMIT",
    date: "10/13/2020 00:55:19",
    price: "19000"
  },
  {
    item: "ROLEX 116610LN SUBMARINER DATE",
    date: "10/13/2020 00:54:01",
    price: "13000"
  },
  {
    item: "ROLEX 124060LN",
    date: "10/13/2020 00:54:01",
    price: "11800"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "10/13/2020 00:53:45",
    price: "13500"
  },
  {
    item: "ROLEX 116505 BLACK DIAL",
    date: "10/13/2020 00:43:33",
    price: "40250"
  },
  {
    item: "ROLEX 116618LN",
    date: "10/13/2020 00:43:33",
    price: "33000"
  },
  {
    item: "ROLEX 126719 BLRO  BLUE DIAL",
    date: "10/13/2020 00:43:33",
    price: "38250"
  },
  {
    item: "ROLEX 228239 BLUE ROMAN DIAL",
    date: "10/13/2020 00:04:09",
    price: "32400"
  },
  {
    item: "PATEK 5980/1A BLUE",
    date: "10/12/2020 15:39:04",
    price: "95000"
  },
  {
    item: "ROLEX 326935 SUNDUST",
    date: "10/12/2020 15:20:45",
    price: "52000"
  },
  {
    item: "P/O PATEK 5164A",
    date: "10/12/2020 15:18:31",
    price: "53500"
  },
  {
    item: "CARTIER WSSA0029 SANTOS MIDSIZE",
    date: "10/12/2020 10:22:33",
    price: "5600"
  },
  {
    item: "P/O PATEK 7010/1R WHITE DIAL",
    date: "10/08/2020 23:14:48",
    price: "42500"
  },
  {
    item: "PATEK 7010R  CHAMP",
    date: "10/08/2020 23:14:18",
    price: "32500"
  },
  {
    item: "ROLEX 278271 PINK DIAL IV OYSTER",
    date: "10/08/2020 23:04:39",
    price: "10400"
  },
  {
    item: "ROLEX 326934 SKYDWELLER WHITE DIAL",
    date: "10/08/2020 22:58:31",
    price: "18250"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "10/08/2020 22:12:42",
    price: "12400"
  },
  {
    item: "ROLEX 279171 SILVER DIAMOND DIAL IX JUB",
    date: "10/08/2020 21:39:39",
    price: "11205"
  },
  {
    item: "ROLEX 228235 WHITE ROMAN",
    date: "10/08/2020 21:39:11",
    price: "38000"
  },
  {
    item: "IWC PORTOFINO IW356511 ROSE GOLD 40MM",
    date: "10/08/2020 21:38:59",
    price: "8236"
  },
  {
    item: "IWC PORTUGIESER IW503301 WHITE GOLD",
    date: "10/08/2020 21:38:59",
    price: "29181"
  },
  {
    item: "IWC SPITFIRE 39MM STAINLESS IW326803",
    date: "10/08/2020 21:38:59",
    price: "3333"
  },
  {
    item: "ROLEX 279178 CHAMP ROMAN",
    date: "10/08/2020 18:04:44",
    price: "18487.5"
  },
  {
    item: "ROLEX 126334 SILVER OYSTER",
    date: "10/08/2020 17:55:30",
    price: "0"
  },
  {
    item: "ROLEX 126300 WHITE INDEX OYSTER",
    date: "10/08/2020 17:35:51",
    price: "7500"
  },
  {
    item: "279160 WHITE ROMAN JUBILEE PRE OWNED",
    date: "10/08/2020 17:35:01",
    price: "3950"
  },
  {
    item: "ROLEX 126300 BLUE STICK JUBILEE",
    date: "10/08/2020 17:14:38",
    price: "8350"
  },
  {
    item: "ROLEX 126333 SILVER JUBILEE",
    date: "10/08/2020 17:11:24",
    price: "12400"
  },
  {
    item: "ROLEX 326938 SKY DWELLER CHAMP DIAL",
    date: "10/08/2020 17:10:41",
    price: "46500"
  },
  {
    item: "P/O ROLEX 126331 SUNDUST JUBILEE",
    date: "10/08/2020 17:08:36",
    price: "11300"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "10/08/2020 17:07:02",
    price: "12400"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "10/08/2020 17:02:36",
    price: "12400"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "10/08/2020 16:55:43",
    price: "12400"
  },
  {
    item: "CFB MANERO FLYBACK CHRONO",
    date: "10/07/2020 19:46:26",
    price: "3500"
  },
  {
    item: "GIRARD PERREGAUX LAUREATO CHRONOGRAPH",
    date: "10/07/2020 19:46:25",
    price: "9000"
  },
  {
    item: "ROLEX 226659",
    date: "10/07/2020 16:14:29",
    price: "28400"
  },
  {
    item: "ROLEX 279171 CHOC DIAMOND DIAL IX JUBILE",
    date: "10/07/2020 16:12:06",
    price: "11205"
  },
  {
    item: "ROLEX 228235 GREEN ROMAN",
    date: "10/07/2020 02:32:55",
    price: "42000"
  },
  {
    item: "ROLEX 116505 CHOC DIAL",
    date: "10/02/2020 17:07:25",
    price: "40500"
  },
  {
    item: "ROLEX 116618LB SUBMARINER",
    date: "10/02/2020 16:40:04",
    price: "33500"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "10/01/2020 13:26:20",
    price: "18200"
  },
  {
    item: "ROLEX 116515 CHOC DIAL",
    date: "10/01/2020 13:26:20",
    price: "34000"
  },
  {
    item: "ROLEX 116518LN CHAMP AND BLACK",
    date: "10/01/2020 13:26:20",
    price: "34000"
  },
  {
    item: "ROLEX 116506 PLAIN DIAL",
    date: "10/01/2020 13:25:53",
    price: "77800"
  },
  {
    item: "ROLEX 126334 WIMBELDON OYSTER",
    date: "10/01/2020 12:51:06",
    price: "10300"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "10/01/2020 12:49:26",
    price: "12400"
  },
  {
    item: "ROLEX 116400GV BLUE DIAL",
    date: "10/01/2020 12:47:23",
    price: "8900"
  },
  {
    item: "ROLEX 124300 OYSTER PERP GREEN DIAL 41MM",
    date: "10/01/2020 12:47:23",
    price: "7800"
  },
  {
    item: "ROLEX 126334 BLACK INDEX JUB",
    date: "10/01/2020 12:47:23",
    price: "10000"
  },
  {
    item: "ROLEX 126334 BLUE INDEX OYSTER",
    date: "10/01/2020 12:45:26",
    price: "10250"
  },
  {
    item: "ROLEX 116505 PINK DIAMOND DIAL",
    date: "10/01/2020 12:39:29",
    price: "46000"
  },
  {
    item: "ROLEX SUBMARINER DATE 41MM 126610 LN",
    date: "09/30/2020 21:15:30",
    price: "14100"
  },
  {
    item: "PATEK 5990/1A",
    date: "09/29/2020 15:51:02",
    price: "96000"
  },
  {
    item: "ROLEX 126300 WHITE ROMAN JUBILE",
    date: "09/29/2020 02:50:23",
    price: "8400"
  },
  {
    item: "ROLEX 126331 CHOCOLATE DIAMOND OYSTER",
    date: "09/29/2020 02:45:11",
    price: "14250"
  },
  {
    item: "PATEK 7010R  CHAMP",
    date: "09/25/2020 13:27:54",
    price: "32500"
  },
  {
    item: "ROLEX 116505 BLACK DIAL",
    date: "09/25/2020 02:45:17",
    price: "40000"
  },
  {
    item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
    date: "09/25/2020 02:45:17",
    price: "87000"
  },
  {
    item: "ROLEX 126334 WHITE ROMAN OYSTER",
    date: "09/24/2020 17:17:23",
    price: "9650"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "09/24/2020 17:16:06",
    price: "12350"
  },
  {
    item: "278271 PINK DIMOAND DIAL JUBILEE",
    date: "09/24/2020 12:33:53",
    price: "11176"
  },
  {
    item: "TUDOR 79830RB BLACK BAY GMT",
    date: "09/23/2020 17:42:36",
    price: "3500"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "09/23/2020 15:37:47",
    price: "37950"
  },
  {
    item: "ROLEX 126334 WHITE ROMAN JUB",
    date: "09/23/2020 13:31:46",
    price: "10200"
  },
  {
    item: "PATEK 5146G GREY DIAL",
    date: "09/23/2020 13:29:43",
    price: "33500"
  },
  {
    item: "ROLEX 126301  WIMBELDON JUB",
    date: "09/23/2020 13:16:28",
    price: "12900"
  },
  {
    item: "ROLEX CELLINI COIN WATCH",
    date: "09/22/2020 17:57:01",
    price: "23500"
  },
  {
    item: "ROLEX BOX",
    date: "09/22/2020 01:17:11",
    price: "200"
  },
  {
    item: "ROLEX 116505 BLACK DIAL",
    date: "09/21/2020 21:49:46",
    price: "40000"
  },
  {
    item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
    date: "09/21/2020 21:49:21",
    price: "87000"
  },
  {
    item: "ROLEX 126334 BLUE INDEX JUBILEE",
    date: "09/21/2020 18:45:07",
    price: "10550"
  },
  {
    item: "PATEK 5167R",
    date: "09/21/2020 18:10:32",
    price: "50500"
  },
  {
    item: "PATEK 5968A",
    date: "09/21/2020 15:45:50",
    price: "95000"
  },
  {
    item: "ROLEX 326933 BLACK DIAL",
    date: "09/21/2020 15:39:07",
    price: "18500"
  },
  {
    item: "ROLEX 126333 CHAMPAGNE JUBILEE",
    date: "09/18/2020 14:18:09",
    price: "12650"
  },
  {
    item: "PATEK 7118/1R-010 CHAMP",
    date: "09/18/2020 14:07:27",
    price: "48500"
  },
  {
    item: "ROLEX 126231 BLACK DIAM JUBILEE",
    date: "09/18/2020 14:04:46",
    price: "12276"
  },
  {
    item: "PATEK  5711/1R",
    date: "09/18/2020 14:03:03",
    price: "97500"
  },
  {
    item: "ROLEX 116610LV SUBMARINER HULK",
    date: "09/18/2020 13:15:27",
    price: "16600"
  },
  {
    item: "ROLEX 228238  SILVER HONEYCOMB",
    date: "09/17/2020 15:26:06",
    price: "34000"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "09/17/2020 13:43:18",
    price: "15100"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "09/17/2020 13:35:40",
    price: "23650"
  },
  {
    item: "RICHARD MILLE11-01 WHITE GOLD",
    date: "09/17/2020 12:59:59",
    price: "142000"
  },
  {
    item: "ROLEX 116506 PLAIN DIAL",
    date: "09/17/2020 12:06:55",
    price: "76800"
  },
  {
    item: "ROLEX 116509 SILVER DIAL",
    date: "09/17/2020 12:06:55",
    price: "38500"
  },
  {
    item: "ROLEX 116505 PINK DIAMOND DIAL",
    date: "09/17/2020 12:06:15",
    price: "46500"
  },
  {
    item: "ROLEX 116506 PLAIN DIAL",
    date: "09/17/2020 12:01:31",
    price: "76800"
  },
  {
    item: "ROLEX 116505 CHOC DIAL",
    date: "09/16/2020 03:06:54",
    price: "40500"
  },
  {
    item: "ROLEX 116509 WGLD MOP DIAL",
    date: "09/16/2020 02:50:21",
    price: "44000"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "09/15/2020 23:21:42",
    price: "37000"
  },
  {
    item: "ROLEX 116610LV SUBMARINER HULK",
    date: "09/15/2020 22:59:14",
    price: "19500"
  },
  {
    item: "ROLEX 124060LN",
    date: "09/15/2020 22:59:14",
    price: "13500"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "09/15/2020 22:29:36",
    price: "6900"
  },
  {
    item: "ROLEX 228235 SUNDUST BAUGETTES",
    date: "09/15/2020 22:02:31",
    price: "40500"
  },
  {
    item: "ROLEX 116506 PLAIN DIAL",
    date: "09/14/2020 15:31:14",
    price: "76800"
  },
  {
    item: "P/O ROLEX 326934 BLU",
    date: "09/14/2020 14:37:11",
    price: "22500"
  },
  {
    item: "ROLEX YACHTMASTER 2 116680",
    date: "09/13/2020 04:11:35",
    price: "17700"
  },
  {
    item: "ROLEX  116710LN GMT MASTER",
    date: "09/13/2020 04:10:47",
    price: "13000"
  },
  {
    item: "ROLEX 228235 SUNDUST BAUGETTES",
    date: "09/13/2020 04:10:47",
    price: "38700"
  },
  {
    item: "ROLEX 228238 CHAMP ROMAN 2",
    date: "09/13/2020 04:10:47",
    price: "34000"
  },
  {
    item: "ROLEX 126300 WHITE ROMAN OYSTER",
    date: "09/13/2020 04:09:13",
    price: "7850"
  },
  {
    item: "ROLEX 126334  BLUE ROMAN JUB",
    date: "09/13/2020 04:09:13",
    price: "10350"
  },
  {
    item: "ROLEX 126334 BLUE ROMAN OYSTER",
    date: "09/13/2020 04:09:13",
    price: "9800"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "09/13/2020 04:09:13",
    price: "23250"
  },
  {
    item: "ROLEX 116681 yacht master 2",
    date: "09/11/2020 15:50:14",
    price: "23200"
  },
  {
    item: "ROLEX 326933  WHITE DIAL",
    date: "09/11/2020 15:45:01",
    price: "17600"
  },
  {
    item: "ROLEX 278273 GREEN ROMN JUBILEE",
    date: "09/11/2020 15:39:52",
    price: "10516"
  },
  {
    item: "ROLEX 126334 BLK DIAMOND DIAL JUB",
    date: "09/11/2020 13:10:07",
    price: "11850"
  },
  {
    item: "ROELX 326934 BLACK DIAL",
    date: "09/10/2020 21:42:20",
    price: "18950"
  },
  {
    item: "ROLEX 279171 CHOCO DIAM JUBILEE",
    date: "09/10/2020 21:01:41",
    price: "10384"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "09/10/2020 20:55:32",
    price: "37000"
  },
  {
    item: "ROLEX 116506 PLAIN DIAL",
    date: "09/10/2020 20:54:54",
    price: "78500"
  },
  {
    item: "ROLEX 326933 BLACK DIAL",
    date: "09/10/2020 15:19:19",
    price: "18350"
  },
  {
    item: "ROLEX 126622 BLUE DIAL",
    date: "09/10/2020 03:13:58",
    price: "12000"
  },
  {
    item: "ROLEX 126300  BLACK INDEX OYSTER",
    date: "09/09/2020 23:42:47",
    price: "7650"
  },
  {
    item: "ROLEX 126300 RHODIUM OYSTER",
    date: "09/09/2020 23:40:11",
    price: "7850"
  },
  {
    item: "PATEK 5980/1R",
    date: "09/09/2020 23:29:01",
    price: "145000"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "09/09/2020 23:28:21",
    price: "13500"
  },
  {
    item: "ROLEX 126300 WIMBLEDON JUBILEE",
    date: "09/09/2020 22:44:13",
    price: "8000"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK 26331ST BLACK",
    date: "09/09/2020 19:58:49",
    price: "28800"
  },
  {
    item: "ROLEX 126331 CHOC DIAL OYSTER",
    date: "09/09/2020 19:55:30",
    price: "12650"
  },
  {
    item: "ROLEX 126300 SILVER JUBILEE",
    date: "09/09/2020 19:55:03",
    price: "8000"
  },
  {
    item: "ROLEX 126300 SILVER OYSTER",
    date: "09/09/2020 19:55:03",
    price: "7400"
  },
  {
    item: "ROLEX 218235 CONCENTRIC DIAL",
    date: "09/09/2020 19:50:35",
    price: "41500"
  },
  {
    item: "ROLEX 126300  BLACK INDEX OYSTER",
    date: "09/09/2020 17:58:41",
    price: "7800"
  },
  {
    item: "ROLEX 126300 BLUE ROMAN OYSTER",
    date: "09/09/2020 17:58:41",
    price: "7800"
  },
  {
    item: "ROLEX  216570  BLACK DIAL",
    date: "09/09/2020 17:57:10",
    price: "8900"
  },
  {
    item: "ROLEX 126334 BLACK OYSTER",
    date: "09/09/2020 17:56:57",
    price: "9900"
  },
  {
    item: "ROLEX 126334 BLUE INDEX OYSTER",
    date: "09/09/2020 17:56:57",
    price: "9900"
  },
  {
    item: "ROLEX 126334 RHODIUM OYSTER",
    date: "09/09/2020 17:56:57",
    price: "9900"
  },
  {
    item: "ROLEX 126334 WHITE INDEX OYSTER",
    date: "09/09/2020 17:56:57",
    price: "9900"
  },
  {
    item: "ROLEX 126334 WHITE ROMAN JUB",
    date: "09/09/2020 17:56:57",
    price: "10100"
  },
  {
    item: "ROLEX 116613LN 2",
    date: "09/09/2020 16:11:34",
    price: "14500"
  },
  {
    item: "ROLEX 126710 PEPSI JUBILEE",
    date: "09/09/2020 14:45:25",
    price: "18150"
  },
  {
    item: "PATEK 5164R",
    date: "09/09/2020 13:21:01",
    price: "68000"
  },
  {
    item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
    date: "09/09/2020 13:12:53",
    price: "82500"
  },
  {
    item: "ROLEX 116505 CHOC DIAL",
    date: "09/09/2020 12:23:28",
    price: "39500"
  },
  {
    item: "ROLEX 126334 BLACK INDEX JUB",
    date: "09/09/2020 12:22:18",
    price: "10000"
  },
  {
    item: "ROLEX 126334 BLACK OYSTER",
    date: "09/09/2020 12:22:18",
    price: "9650"
  },
  {
    item: "ROLEX 126334 BLUE INDEX JUBILEE",
    date: "09/09/2020 12:22:18",
    price: "10300"
  },
  {
    item: "ROLEX 126334 RHODIUM JUBILEE",
    date: "09/09/2020 12:22:18",
    price: "10150"
  },
  {
    item: "ROLEX 116509 SILVER DIAL",
    date: "09/09/2020 12:21:31",
    price: "39350"
  },
  {
    item: "ROLEX 126300 WHITE INDEX OYSTER",
    date: "09/09/2020 12:21:07",
    price: "7250"
  },
  {
    item: "ROLEX 226659",
    date: "09/09/2020 12:17:37",
    price: "28250"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "09/08/2020 22:22:36",
    price: "12800"
  },
  {
    item: "ROLEX 126600 sea dweller",
    date: "09/08/2020 22:08:34",
    price: "0"
  },
  {
    item: "ROLEX 126331  WIMBLEDON JUBILEE",
    date: "09/08/2020 22:06:39",
    price: "12800"
  },
  {
    item: "ROLEX 116619LB",
    date: "09/08/2020 22:04:50",
    price: "32000"
  },
  {
    item: "ROLEX 116505 PINK DIAL",
    date: "09/08/2020 22:03:29",
    price: "36000"
  },
  {
    item: "ROLEX 116518 BLACK",
    date: "09/08/2020 22:02:01",
    price: "29500"
  },
  {
    item: "ROLEX 116610LV SUBMARINER HULK",
    date: "09/08/2020 22:01:04",
    price: "16000"
  },
  {
    item: "ROLEX 116509 BLU DIAL",
    date: "09/08/2020 21:54:29",
    price: "36000"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "09/08/2020 21:52:50",
    price: "23200"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "09/08/2020 21:02:23",
    price: "17500"
  },
  {
    item: "ROLEX 116515 CHOC DIAL",
    date: "09/08/2020 21:00:19",
    price: "31500"
  },
  {
    item: "ROLEX 116613LB",
    date: "09/08/2020 20:58:03",
    price: "14100"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "09/08/2020 20:53:46",
    price: "6500"
  },
  {
    item: "ROLEX 116618LN",
    date: "09/08/2020 20:51:21",
    price: "28300"
  },
  {
    item: "ROLEX 177200 GREY DIAL",
    date: "09/08/2020 17:45:15",
    price: "4350"
  },
  {
    item: "P/O PATEK 5968A",
    date: "09/08/2020 17:07:16",
    price: "82500"
  },
  {
    item: "ROLEX 116610LV SUBMARINER HULK",
    date: "09/08/2020 17:06:30",
    price: "19700"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "09/08/2020 16:36:16",
    price: "12700"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK 26331ST WHITE",
    date: "09/08/2020 14:31:54",
    price: "27300"
  },
  {
    item: "PATEK PHILIPPE 5205R BLACK",
    date: "09/08/2020 14:29:50",
    price: "38500"
  },
  {
    item: "116503 BLACK MOP DIAMOND DIAL",
    date: "09/07/2020 02:48:50",
    price: "23000"
  },
  {
    item: "ROLEX 116519 STEEL DIAL",
    date: "09/07/2020 02:48:50",
    price: "33900"
  },
  {
    item: "ROLEX 116519 MOP DIA",
    date: "09/07/2020 02:45:44",
    price: "35400"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "09/07/2020 02:45:16",
    price: "6700"
  },
  {
    item: "ROLEX YACHTMASTER 126621  BLACK DIAL",
    date: "09/07/2020 02:44:35",
    price: "14000"
  },
  {
    item: "PATEK 5167R",
    date: "09/06/2020 03:11:18",
    price: "40000"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "09/04/2020 14:14:24",
    price: "18100"
  },
  {
    item: "ROLEX 126331  WIMBLEDON JUBILEE",
    date: "09/03/2020 15:17:24",
    price: "0"
  },
  {
    item: "ROLEX  126660 BLUE JAMES CAMERON",
    date: "09/03/2020 13:27:35",
    price: "14800"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "09/02/2020 14:56:05",
    price: "18240"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "09/02/2020 14:23:48",
    price: "0"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "09/01/2020 17:15:07",
    price: "37250"
  },
  {
    item: "ROLEX 126300 RHODIUM INDEX JUBILE",
    date: "09/01/2020 16:26:11",
    price: "8550"
  },
  {
    item: "P/O ROLEX 179159 MOP DIAMOND DIAL",
    date: "09/01/2020 16:20:40",
    price: "13700"
  },
  {
    item: "ROLEX  228239 GREEN DIAL",
    date: "09/01/2020 15:50:26",
    price: "36000"
  },
  {
    item: "ROLEX 126333 WIMBLEDON JUB",
    date: "09/01/2020 15:37:25",
    price: "12900"
  },
  {
    item: "ROLEX 326933 BLACK DIAL",
    date: "09/01/2020 15:37:25",
    price: "18150"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "09/01/2020 15:32:56",
    price: "0"
  },
  {
    item: "ROLEX 126334 BLUE INDEX JUBILEE",
    date: "09/01/2020 15:21:29",
    price: "10100"
  },
  {
    item: "ROLEX 126334 WHITE INDEX JUB",
    date: "09/01/2020 15:21:29",
    price: "10000"
  },
  {
    item: "PATEK 5167/1A",
    date: "09/01/2020 15:10:53",
    price: "34250"
  },
  {
    item: "AUDEMARS PIGUET 15450ST SILVER BRACELET",
    date: "09/01/2020 15:08:42",
    price: "21500"
  },
  {
    item: "ROLEX 126719BLRO MEOTERITE DIAL",
    date: "09/01/2020 10:42:41",
    price: "49175"
  },
  {
    item: "ROLEX 126334 BLUE ROMAN OYSTER",
    date: "09/01/2020 10:39:36",
    price: "10200"
  },
  {
    item: "RICHARD MILLE RM11-01 ROSE GOLD",
    date: "08/31/2020 21:39:12",
    price: "148000"
  },
  {
    item: "PATEK 5980/1R",
    date: "08/31/2020 21:35:14",
    price: "128000"
  },
  {
    item: "PATEK 5168G BLUE",
    date: "08/31/2020 17:02:19",
    price: "59000"
  },
  {
    item: "ROLEX 228235 SUNDUST STRIPE MOTIF",
    date: "08/31/2020 15:55:33",
    price: "36300"
  },
  {
    item: "AP ROYAL OAK 26331OR CHRONO BROWN STRAP",
    date: "08/31/2020 01:29:07",
    price: "39500"
  },
  {
    item: "ROLEX 116505 CHOC DIAL",
    date: "08/31/2020 01:28:54",
    price: "39800"
  },
  {
    item: "ROLEX 126333 WIMBEL OYSTER",
    date: "08/28/2020 14:51:36",
    price: "12250"
  },
  {
    item: "ROLEX 126300 WHITE ROMAN JUBILE",
    date: "08/28/2020 14:07:51",
    price: "8000"
  },
  {
    item: "ROLEX 116619LB",
    date: "08/28/2020 12:09:23",
    price: "34000"
  },
  {
    item: "ROLEX 228348 BLACK DIAMOND DIAL",
    date: "08/28/2020 00:14:13",
    price: "42600"
  },
  {
    item: "ROLEX 126233 CHAMP OYSTER",
    date: "08/27/2020 23:11:30",
    price: "9725"
  },
  {
    item: "ROLEX 126622 BLUE DIAL",
    date: "08/27/2020 22:07:03",
    price: "12000"
  },
  {
    item: "ROELX 326934 BLACK DIAL",
    date: "08/27/2020 18:05:54",
    price: "18950"
  },
  {
    item: "ROLEX 126300  BLUE INDEX OYSTER 2",
    date: "08/27/2020 18:03:28",
    price: "8050"
  },
  {
    item: "RICHARD MILLE RM11-01 TITANIUM",
    date: "08/27/2020 17:35:58",
    price: "122500"
  },
  {
    item: "ROLEX 126334 WIMBELDON OYSTER",
    date: "08/27/2020 16:58:13",
    price: "10200"
  },
  {
    item: "ROLEX 126331  WIMBLEDON JUBILEE",
    date: "08/27/2020 16:55:20",
    price: "13500"
  },
  {
    item: "ROLEX 126334 BLACK OYSTER",
    date: "08/27/2020 16:41:03",
    price: "9400"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "08/27/2020 16:39:20",
    price: "12250"
  },
  {
    item: "ROLEX 126300 WIMBLEDON OYSTER",
    date: "08/27/2020 16:23:37",
    price: "8200"
  },
  {
    item: "ROLEX 126334  BLUE ROMAN JUB",
    date: "08/27/2020 16:23:37",
    price: "10350"
  },
  {
    item: "ROLEX 116500LN BLACK",
    date: "08/27/2020 16:21:48",
    price: "23200"
  },
  {
    item: "ROLEX 116400GV MILGUASS BLACK",
    date: "08/27/2020 16:14:49",
    price: "8200"
  },
  {
    item: "ROLEX 126334 BLUE INDEX OYSTER",
    date: "08/27/2020 16:14:49",
    price: "9950"
  },
  {
    item: "ROLEX 126334 WHITE ROMAN OYSTER",
    date: "08/27/2020 16:14:49",
    price: "9500"
  },
  {
    item: "ROLEX 126600 sea dweller",
    date: "08/27/2020 16:14:49",
    price: "13500"
  },
  {
    item: "PATEK 5980/1R",
    date: "08/27/2020 15:38:49",
    price: "149000"
  },
  {
    item: "ROLEX 116528 RACE BLU DIAL",
    date: "08/27/2020 03:03:38",
    price: "0"
  },
  {
    item: "PATEK 7118/1R WHITE",
    date: "08/27/2020 02:31:01",
    price: "47600"
  },
  {
    item: "ROLEX 126300 BLUE ROMAN JUB",
    date: "08/26/2020 15:17:39",
    price: "8200"
  },
  {
    item: "ROLEX 279173 SLVR ROMAN JUBILEE",
    date: "08/26/2020 14:36:41",
    price: "8795"
  },
  {
    item: "ROLEX 116505 CHOC DIAL",
    date: "08/26/2020 13:21:00",
    price: "39500"
  },
  {
    item: "ROLEX 126334 BLUE INDEX OYSTER",
    date: "08/26/2020 13:21:00",
    price: "10100"
  },
  {
    item: "ROLEX 126300 BLUE ROMAN OYSTER",
    date: "08/25/2020 17:36:50",
    price: "7850"
  },
  {
    item: "ROLEX 126334 WHITE ROMAN OYSTER",
    date: "08/25/2020 17:29:46",
    price: "9450"
  },
  {
    item: "ROLEX 126333 CHAMP DIAMOND JUBILEE",
    date: "08/25/2020 17:14:34",
    price: "13500"
  },
  {
    item: "ROLEX 126334 BLUE INDEX JUBILEE",
    date: "08/25/2020 16:46:17",
    price: "10400"
  },
  {
    item: "TUDOR 79030N BLACK BAY 58",
    date: "08/25/2020 16:33:47",
    price: "4000"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK OFFSHORE 26400",
    date: "08/25/2020 16:22:10",
    price: "21600"
  },
  {
    item: "ROLEX  216570  BLACK DIAL",
    date: "08/25/2020 15:44:38",
    price: "8500"
  },
  {
    item: "ROLEX 116613LB",
    date: "08/25/2020 14:00:22",
    price: "14000"
  },
  {
    item: "AUDEMARS PIGUET 15500ST GREY DIAL",
    date: "08/24/2020 17:24:15",
    price: "29000"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK 26331ST BLUE",
    date: "08/24/2020 17:20:27",
    price: "33500"
  },
  {
    item: "PATEK PHILIPPE NAUTILUS 5712R",
    date: "08/24/2020 17:16:15",
    price: "59500"
  },
  {
    item: "ROLEX 126331  WIMBLEDON JUBILEE",
    date: "08/24/2020 15:48:17",
    price: "13700"
  },
  {
    item: "ROLEX 126331 CHOCOLATE DIAMOND JUB",
    date: "08/24/2020 14:37:31",
    price: "14250"
  },
  {
    item: "ROLEX 116528 RACE BLU DIAL",
    date: "08/24/2020 11:57:41",
    price: "30600"
  },
  {
    item: "ROLEX 116528 RACE BLU DIAL",
    date: "08/24/2020 11:53:43",
    price: "31200"
  },
  {
    item: "ROLEX 126710 BLNR JUBILEE",
    date: "08/24/2020 11:33:04",
    price: "14500"
  },
  {
    item: "ROLEX 126300  RHODIUM OYSTER 2",
    date: "08/21/2020 15:26:44",
    price: "8200"
  },
  {
    item: "ROLEX 326938 SKY DWELLER CHAMP DIAL",
    date: "08/21/2020 14:34:33",
    price: "44500"
  },
  {
    item: "AUDEMARS PIGUET 26320OR ROYAL OAK BLACK",
    date: "08/21/2020 03:50:27",
    price: "36000"
  },
  {
    item: "AUDEMARS PIGUET 26320OR ROYAL OAK BLACK",
    date: "08/21/2020 03:47:13",
    price: "0"
  },
  {
    item: "ROLEX 116503  BLACK DIAL",
    date: "08/21/2020 03:06:59",
    price: "17800"
  },
  {
    item: "ROLEX  126660 BLACK sea dweller",
    date: "08/21/2020 03:02:47",
    price: "11800"
  },
  {
    item: "ROLEX 1675 GMT VINTAGE",
    date: "08/21/2020 03:01:21",
    price: "7000"
  },
  {
    item: "ROLEX 126300 WHITE ROMAN OYSTER",
    date: "08/21/2020 02:57:29",
    price: "7900"
  },
  {
    item: "CARTIER SANTOS ROSE GOLD WGSA0008",
    date: "08/21/2020 02:54:05",
    price: "27250"
  },
  {
    item: "ROLEX 116519 MOP DIA",
    date: "08/21/2020 02:44:36",
    price: "35000"
  },
  {
    item: "ROLEX 126334 RHODIUM JUBILEE",
    date: "08/20/2020 17:53:41",
    price: "0"
  },
  {
    item: "ROLEX 126300 SILVER OYSTER",
    date: "08/20/2020 17:15:59",
    price: "7550"
  },
  {
    item: "ROLEX 126334 BLUE INDEX JUBILEE",
    date: "08/20/2020 17:05:40",
    price: "10250"
  },
  {
    item: "ROLEX 116613LN",
    date: "08/20/2020 17:02:36",
    price: "13900"
  },
  {
    item: "ROLEX 228235 WHITE ROMAN",
    date: "08/20/2020 15:09:54",
    price: "35800"
  },
  {
    item: "ROLEX 126333 BLACK OYSTER",
    date: "08/20/2020 14:59:42",
    price: "11340"
  },
  {
    item: "ROLEX 116505 BLACK DIAL",
    date: "08/20/2020 14:53:57",
    price: "38500"
  },
  {
    item: "PATEK 5320G",
    date: "08/20/2020 00:04:43",
    price: "52300"
  },
  {
    item: "ROLEX 126334 BLUE ROMAN OYSTER",
    date: "08/19/2020 23:47:05",
    price: "10500"
  },
  {
    item: "ROLEX 178273 BLK MOP DIAMOND",
    date: "08/19/2020 15:49:22",
    price: "12000"
  },
  {
    item: "ROLEX 278271 CHOCO DIAMOND JUBI",
    date: "08/19/2020 15:49:22",
    price: "11000"
  },
  {
    item: "ROLEX 278273  DRK GRY ROMAN JUB",
    date: "08/19/2020 15:49:22",
    price: "10000"
  },
  {
    item: "ROLEX 279171 CHOCO ROMAN JUBILE",
    date: "08/19/2020 15:49:22",
    price: "8500"
  },
  {
    item: "ROLEX 279171 WHITE ROMAN JUBILE",
    date: "08/19/2020 15:49:22",
    price: "8500"
  },
  {
    item: "ROLEX 126334 WIMBELDON OYSTER",
    date: "08/19/2020 15:33:14",
    price: "9150"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "08/19/2020 15:13:10",
    price: "36500"
  },
  {
    item: "ROLEX 326935 SKYDWELLER RHODIUM ROSE",
    date: "08/19/2020 15:05:12",
    price: "47500"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "08/19/2020 15:04:52",
    price: "36000"
  },
  {
    item: "ROLEX 116618LB SUBMARINER",
    date: "08/19/2020 14:01:06",
    price: "32000"
  },
  {
    item: "ROLEX 326933  WHITE DIAL",
    date: "08/19/2020 13:53:34",
    price: "18000"
  },
  {
    item: "ROLEX 126300 RHODIUM INDEX JUBILE",
    date: "08/19/2020 13:32:24",
    price: "8100"
  },
  {
    item: "ROLEX 126334  SILVER JUBILEE",
    date: "08/19/2020 13:29:49",
    price: "10000"
  },
  {
    item: "ROLEX 126334 BLUE INDEX JUBILEE",
    date: "08/19/2020 13:29:49",
    price: "10250"
  },
  {
    item: "ROLEX 126334 RHODIUM JUBILEE",
    date: "08/19/2020 13:29:49",
    price: "10100"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "08/19/2020 13:06:03",
    price: "36500"
  },
  {
    item: "PATEK 5168 GREEN STRAP",
    date: "08/19/2020 13:00:37",
    price: "0"
  },
  {
    item: "ROLEX 126334 BLUE INDEX JUBILEE",
    date: "08/18/2020 13:11:57",
    price: "10250"
  },
  {
    item: "ROLEX 126334 BLUE INDEX OYSTER",
    date: "08/18/2020 13:11:57",
    price: "10000"
  },
  {
    item: "ROLEX  126660 BLUE JAMES CAMERON",
    date: "08/17/2020 16:34:40",
    price: "14500"
  },
  {
    item: "ROLEX 116518LN CHAMP AND BLACK",
    date: "08/17/2020 15:24:26",
    price: "33500"
  },
  {
    item: "ROLEX YACHTMASTER 2 116680",
    date: "08/17/2020 15:24:26",
    price: "17000"
  },
  {
    item: "ROLEX 116613LN 2",
    date: "08/17/2020 15:21:47",
    price: "13800"
  },
  {
    item: "ROLEX 126331 SUNDUST DIAMOND JUBILEE",
    date: "08/17/2020 15:12:37",
    price: "14100"
  },
  {
    item: "ROELX 326934 BLACK DIAL",
    date: "08/17/2020 15:10:25",
    price: "19000"
  },
  {
    item: "ROLEX 228238 BLACK DD",
    date: "08/17/2020 15:09:57",
    price: "36000"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK 26331ST WHITE",
    date: "08/14/2020 14:45:56",
    price: "27500"
  },
  {
    item: "ROLEX 126331  WIMBLEDON OYSTER",
    date: "08/14/2020 14:45:56",
    price: "12500"
  },
  {
    item: "PATEK 5712/1A",
    date: "08/14/2020 13:27:59",
    price: "67000"
  },
  {
    item: "ROLEX 126334 WIMBELDON OYSTER",
    date: "08/14/2020 13:15:25",
    price: "10200"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "08/14/2020 13:14:26",
    price: "36000"
  },
  {
    item: "ROLEX 116613LB",
    date: "08/14/2020 13:05:05",
    price: "14100"
  },
  {
    item: "PATEK  5711/1R",
    date: "08/13/2020 18:19:21",
    price: "93000"
  },
  {
    item: "ROLEX  228239 BLACK DIAMOND DIAL",
    date: "08/13/2020 18:12:12",
    price: "37500"
  },
  {
    item: "ROLEX 228238  WHITE ROMAN",
    date: "08/13/2020 18:00:37",
    price: "33500"
  },
  {
    item: "ROLEX 278271 MOP DIA JUBILEE",
    date: "08/13/2020 17:57:50",
    price: "13072"
  },
  {
    item: "ROLEX 126333 WIMBEL OYSTER",
    date: "08/13/2020 15:44:45",
    price: "12900"
  },
  {
    item: "ROLEX 228238 CHAMP ROMAN",
    date: "08/12/2020 12:24:54",
    price: "33500"
  },
  {
    item: "ROLEX 114300 GRAPE",
    date: "08/12/2020 12:24:33",
    price: "5700"
  },
  {
    item: "ROLEX 116508 WHITE DIAL 2",
    date: "08/12/2020 02:23:21",
    price: "35250"
  },
  {
    item: "ROLEX 226659",
    date: "08/12/2020 02:14:33",
    price: "28000"
  },
  {
    item: "ROLEX 126300 BLUE INDEX OYSTER",
    date: "08/12/2020 02:10:40",
    price: "7800"
  },
  {
    item: "ROLEX 126300 BLACK INDEX OYSTER 2",
    date: "08/12/2020 01:59:03",
    price: "7700"
  },
  {
    item: "ROLEX 126300 BLUE ROMAN OYSTER",
    date: "08/12/2020 01:59:03",
    price: "7700"
  },
  {
    item: "ROLEX 126300 SILVER OYSTER",
    date: "08/12/2020 01:59:03",
    price: "7700"
  },
  {
    item: "ROLEX 126300 WHITE INDEX OYSTER",
    date: "08/12/2020 01:59:03",
    price: "7700"
  },
  {
    item: "ROLEX 126300 WHITE ROMAN OYSTER",
    date: "08/12/2020 01:59:03",
    price: "7700"
  },
  {
    item: "ROLEX 126300 WIMBLEDON OYSTER",
    date: "08/12/2020 01:59:03",
    price: "7800"
  },
  {
    item: "ROLEX 116595 PLAIN DIAL",
    date: "08/11/2020 23:54:16",
    price: "0"
  },
  {
    item: "ROLEX 116595 PLAIN DIAL",
    date: "08/11/2020 23:54:13",
    price: "0"
  },
  {
    item: "ROLEX 116595 PLAIN DIAL",
    date: "08/11/2020 14:26:29",
    price: "266000"
  },
  {
    item: "ROLEX 228238 CHAMP ROMAN",
    date: "08/11/2020 14:12:32",
    price: "0"
  },
  {
    item: "ROLEX 226659",
    date: "08/11/2020 11:31:06",
    price: "28500"
  },
  {
    item: "ROLEX 126334 BLUE ROMAN OYSTER",
    date: "08/11/2020 03:32:36",
    price: "0"
  },
  {
    item: "AP_ROY OAK SS BLACK DIAL",
    date: "08/10/2020 14:55:53",
    price: "27000"
  },
  {
    item: "ROLEX 228235 SUNDUST ROMAN",
    date: "08/10/2020 14:32:24",
    price: "35500"
  },
  {
    item: "ROLEX 126334  BLUE ROMAN JUB",
    date: "08/10/2020 14:19:42",
    price: "10100"
  },
  {
    item: "ROLEX 126600 sea dweller",
    date: "08/10/2020 14:10:05",
    price: "13500"
  },
  {
    item: "ROLEX 126334 WHITE ROMAN JUB",
    date: "08/10/2020 14:09:44",
    price: "10000"
  },
  {
    item: "ROLEX 126715CHNR",
    date: "08/10/2020 14:09:44",
    price: "36000"
  },
  {
    item: "ROLEX 126333 BLACK DD JUBILEE",
    date: "08/10/2020 13:44:34",
    price: "13832"
  },
  {
    item: "ROLEX 116503 WHITE DIAL",
    date: "08/10/2020 13:27:16",
    price: "17800"
  },
  {
    item: "ROLEX 116505 CHOC DIAL",
    date: "08/10/2020 13:27:16",
    price: "38500"
  },
  {
    item: "ROLEX 116688",
    date: "08/10/2020 13:27:16",
    price: "39000"
  },
  {
    item: "ROLEX 116900 AIRKING",
    date: "08/10/2020 13:27:16",
    price: "6700"
  },
  {
    item: "ROLEX 126711CHNR",
    date: "08/10/2020 13:27:16",
    price: "17700"
  },
  {
    item: "ROLEX 228235 GREEN ROMAN",
    date: "08/10/2020 13:27:16",
    price: "39500"
  },
  {
    item: "ROLEX 278273 GREEN DIAMOND VI JUB",
    date: "08/10/2020 13:27:16",
    price: "10635"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "08/10/2020 13:27:16",
    price: "23500"
  },
  {
    item: "ROLEX 126334  SILVER JUBILEE",
    date: "08/07/2020 15:08:00",
    price: "10000"
  },
  {
    item: "ROLEX 126719BLRO MEOTERITE DIAL 2",
    date: "08/07/2020 12:59:07",
    price: "49000"
  },
  {
    item: "ROLEX 126334  WIMBLEDON JUBILEE",
    date: "08/07/2020 12:03:45",
    price: "11000"
  },
  {
    item: "ROLEX 126331 CHOC INDEX JUBILEE",
    date: "08/07/2020 12:00:00",
    price: "12400"
  },
  {
    item: "ROLEX 126333 CHAMP DIAMOND JUBILEE",
    date: "08/07/2020 11:58:09",
    price: "13877.5"
  },
  {
    item: "ROLEX 126231 RHODIUM JUB",
    date: "08/06/2020 17:18:44",
    price: "11200"
  },
  {
    item: "ROLEX 126710 PEPSI JUBILEE",
    date: "08/06/2020 17:00:22",
    price: "16700"
  },
  {
    item: "ROLEX 126331  WIMBLEDON JUBILEE",
    date: "08/06/2020 15:53:44",
    price: "14000"
  },
  {
    item: "PATEK 7010/1R CHAMP",
    date: "08/06/2020 15:01:43",
    price: "46000"
  },
  {
    item: "ROLEX 116505 CHOC DIAL",
    date: "08/06/2020 14:57:48",
    price: "38500"
  },
  {
    item: "ROLEX 116613LB",
    date: "08/06/2020 13:58:56",
    price: "14100"
  },
  {
    item: "ROLEX 326933 CHAMP DIAL",
    date: "08/06/2020 13:58:56",
    price: "17500"
  },
  {
    item: "ROLEX 228235 CHOC ROMAN",
    date: "08/05/2020 10:46:43",
    price: "35000"
  },
  {
    item: "ROLEX 126331 SUNDUST DIAMOND JUBILEE",
    date: "08/05/2020 10:37:12",
    price: "14105"
  },
  {
    item: "ROLEX 278273 CHAMP DD JUB",
    date: "08/05/2020 10:37:12",
    price: "10868"
  },
  {
    item: "ROLEX 326934 BLUE DIAL OYSTER",
    date: "08/05/2020 10:37:12",
    price: "23300"
  },
  {
    item: "AP_BLACK LEATHER WATCH STRAP",
    date: "08/04/2020 18:19:01",
    price: "0"
  },
  {
    item: "ROLEX 116588TBR TIGER",
    date: "08/04/2020 18:15:58",
    price: "111000"
  },
  {
    item: "ROLEX 126300  BLACK INDEX OYSTER",
    date: "08/04/2020 16:01:12",
    price: "7750"
  },
  {
    item: "ROLEX 228235 SUNDUST BAUGETTES",
    date: "08/04/2020 13:36:37",
    price: "38200"
  },
  {
    item: "AUDEMARS PIGUET 26320OR ROYAL OAK BROWN",
    date: "08/03/2020 19:22:59",
    price: "33500"
  },
  {
    item: "ROLEX 126334  WIMBLEDON JUBILEE",
    date: "08/03/2020 19:20:58",
    price: "10250"
  },
  {
    item: "ROLEX 126300  RHODIUM OYSTER 2",
    date: "08/03/2020 19:17:36",
    price: "7750"
  },
  {
    item: "ROLEX 126234 PINK JUBILEE DD JUB",
    date: "08/03/2020 19:15:43",
    price: "9300"
  },
  {
    item: "ROLEX 126331 SUNDUST JUBILEE",
    date: "08/03/2020 19:12:52",
    price: "12060"
  },
  {
    item: "ROLEX 126331 CHOCOLATE DIAMOND JUB",
    date: "08/03/2020 19:12:27",
    price: "14000"
  },
  {
    item: "AUDEMARS PIGUET ROYAL OAK CHRONOGRAPH WA",
    date: "08/03/2020 19:10:56",
    price: "29300"
  },
  {
    item: "ROLEX 326933 BLACK DIAL",
    date: "07/31/2020 15:21:48",
    price: "17800"
  },
  {
    item: "ROLEX 116610LN SUBMARINER DATE",
    date: "07/31/2020 15:19:46",
    price: "11600"
  },
  {
    item: "ROLEX 326933 BLACK DIAL",
    date: "07/31/2020 14:46:11",
    price: "17800"
  },
  {
    item: "PATEK  5711/1R",
    date: "07/31/2020 14:28:17",
    price: "88000"
  },
  {
    item: "ROLEX 116506 ICE BLU DIAMOND DIAL",
    date: "07/31/2020 14:28:17",
    price: "83500"
  },
  {
    item: "ROLEX 126719BLRO MEOTERITE DIAL",
    date: "07/31/2020",
    price: "48900"
  },
  {
    item: "ROLEX 116518LN CHAMP AND BLACK",
    date: "07/28/2020 16:49:39",
    price: "30750"
  },
  {
    item: "ROLEX 116400GV BLUE DIAL",
    date: "07/28/2020 16:35:14",
    price: "8400"
  },
  {
    item: "ROLEX 116518 BLACK",
    date: "07/28/2020 16:24:09",
    price: "29150"
  },
  {
    item: "ROLEX 126622 BLUE DIAL",
    date: "07/28/2020 16:21:11",
    price: "11500"
  },
  {
    item: "ROLEX 116508 WHITE DIAL 2",
    date: "07/28/2020 16:17:42",
    price: "35000"
  },
  {
    item: "ROLEX 116613LN",
    date: "07/28/2020 16:01:32",
    price: "13800"
  },
  {
    item: "ROLEX 126600 sea dweller",
    date: "07/28/2020 16:01:32",
    price: "13000"
  }
]   
   
   array.each do |x|
    date = (x[:date].split)[0]
    Market.create!(name: x[:item] ,price: x[:price],date: date) 
   end