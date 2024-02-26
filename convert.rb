require 'csv'
require 'json'

csv_string = CSV.generate do |csv|
    csv << ["id", "email", "tags", "profiles", "facebook.picture", "profiles.twitter.id", "profiles.twitter.picture"]
    JSON.parse(File.open("input_json_files/users.json").read).each do |hash|
        csv << hash.values
    end
end

puts csv_string