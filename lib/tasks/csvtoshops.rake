desc "importing data from csv"
task :csvtoshops => :environment do
	puts "starting the import"
	CSV.foreach(File.expand_path("../shops_shopmium.csv", __FILE__), headers: true) do |row|
		shop = Shop.new(chain: row.to_hash['chain'],
						name: row.to_hash['name'],
						latitude: row.to_hash['latitude'],
						longitude: row.to_hash['longitude'],
						address: row.to_hash['address'],
						city: row.to_hash['city'],
						zip: row.to_hash['zip'],
						phone: row.to_hash['phone'],
						country_code: row.to_hash['country_code']
						 )
		shop.save
	end
	puts "imporint ended"
end