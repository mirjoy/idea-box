class Seeds
	def self.create
		Idea.create(title: "get a kitten", body: "pet the kitten")	
		Idea.create(title: "get a puppy", body: "pet the puppy")
		Idea.create(title: "get a duckling", body: "pet the duckling")
		puts "ideas created"
	end
end

Seeds.create