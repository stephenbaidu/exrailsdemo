# http://www.databaseanswers.org/data_models/apartment_rentals/index.htm
rails g model apartment_building name short_name description address manager phone
rails g model apartment_type name
rails g model apartment_facility name
rails g model availability_status name
rails g model apartment name apartment_building:references apartment_type:references apartment_number no_of_bathrooms:integer no_of_bedrooms:integer  no_of_rooms:integer availability_status:references apartment_facility_ids
rails g model gender name
rails g model guest name gender:references date_of_birth:date first_language
rails g model booking_status name
rails g model apartment_booking apartment:references guest:references booking_start_date:date booking_end_date:date booking_status:references comments

rake exrails:ng apartment_building apartment guest apartment_booking