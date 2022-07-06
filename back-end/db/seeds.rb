# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Order.destroy_all

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
order = Order.create!({
    brand_name: "Rolex", 
    model_number: 01010020202, 
    reference_number: 01020202, 
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
puts user
puts order