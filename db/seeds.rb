
AdminUser.destroy_all
Product.destroy_all
Dreamtype.destroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


   absurd = Dreamtype.create(
      dreamtype: "AbsurdDream",
      horror_rating: 7,
      description: "You don't know who you are. You don't know what a dream is. Tis ABSURD.",
      notes: "May increase suicidal behaviour.")
   absurd.save!

      comfort = Dreamtype.create(
      dreamtype: "ComfortingDream",
      horror_rating: 2,
      description: "Yum, a warm piece of pie. You're fine with doing ANYTHING. Extra cozy.",
      notes: "Could cause weight gain.")
   comfort.save!


   20.times do |i|
   	absurd_product = Product.create(
   		dreamtype: Dreamtype.where(dreamtype: "AbsurdDream").first,
   		name: "AbsurdProduct_#{i}",
   		stock: i,
   		price_per_unit: 50,
   		description: "Ab absurd-type product. Generally absurd.")
   	absurd_product.save!
   end