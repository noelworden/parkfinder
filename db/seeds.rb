#PARKS
  # create_table :parks do |t|
  #     t.string :parktype
  #     t.string :parkname
  #     t.string :address
  #     t.float :latitude -autofill via gem
  #     t.float :longitude -autofill via gem

  #     t.timestamps null: false
Park.create(
  parktype: Park::PARK_TYPE[0],
  parkname: "Rocky Mountain National Park",
  address: "1000 US Hwy 36, Estes Park, CO 80517",
  )

Park.create(
  parktype: Park::PARK_TYPE[0],
  parkname: "Black Canyon of the Gunnison",
  address: "102 Elk Creek, Gunnison, CO 81230",
  )

Park.create(
  parktype: Park::PARK_TYPE[0],
  parkname: "Mesa Verde National Park",
  address: "35853 Rd H.5, Mancos, CO 81328",
  )

Park.create(
  parktype: Park::PARK_TYPE[0],
  parkname: "Acadia Nation Park",
  address: "25 Visitor Center Rd, Bar Harbor, ME 04609",
  )

puts "***#{Park.count} park database items created!***"