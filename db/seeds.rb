# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

seed = HashWithIndifferentAccess.new(YAML.load(File.read(File.expand_path('../seeds.yml', __FILE__))))
seed.each do |key, value|
	acc = 0
	value.each do |el|
		el.each do |key, value|
			if key == "title"
				@project = Project.create({title: value})
			else
				value.each do |el|
					todo = Todo.create(text: el['text'])
					@project.todos << todo
				end
			end
		end
	end
end