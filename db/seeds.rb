
AdminUser.destroy_all
Product.destroy_all
Dreamtype.destroy_all
Province.destroy_all

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
		description: "An absurd-type product. Generally absurd.")
	absurd_product.save!
end

15.times do |i|
	comfort_product = Product.create(
		dreamtype: Dreamtype.where(dreamtype: "ComfortingDream").first,
		name: "ComfortingProduct_#{i}",
		stock: i + 2,
		price_per_unit: 30,
		description: "A comforting-type product. Feelings of fuzziness are a definite. We hope you're hungry.")
	comfort_product.save!
end

mb = Province.create(code: "MB",
	pst: 0.07,
	gst: 0.07,
	hst: 0)
mb.save!

bc = Province.create(code: "BC",
	pst: 0.07,
	gst: 0.07,
	hst: 0)
bc.save!

sk = Province.create(code: "SK",
	pst: 0.07,
	gst: 0.07,
	hst: 0)
sk.save!

pei = Province.create(code: "PEI",
	pst: 0.07,
	gst: 0.07,
	hst: 0)
pei.save!

nv = Province.create(code: "NV",
	pst: 0.07,
	gst: 0.07,
	hst: 0)
nv.save!

nb = Province.create(code: "NB",
	pst: 0.07,
	gst: 0.07,
	hst: 0)
nb.save!

qc = Province.create(code: "QC",
	pst: 0.0,
	gst: 0.0,
	hst: 0.12)
qc.save!

ns = Province.create(code: "NS",
	pst: 0.0,
	gst: 0.0,
	hst: 0.12)
ns.save!

on = Province.create(code: "ON",
	pst: 0.07,
	gst: 0.07,
	hst: 0)
on.save!

ab = Province.create(code: "AB",
	pst: 0.07,
	gst: 0.07,
	hst: 0)
ab.save!