# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create nested items
roots = MenuItem.create([
                            {name: 'Level 1.1'},
                            {name: 'Level 1.2'},
                            {name: 'Level 1.3'}
                        ])

roots.each do |root_1|
  root_1.children.create([
                                     {name: "Level 2.#{root_1.id}.1"},
                                     {name: "Level 2.#{root_1.id}.3"}
                                 ])

  root_1.children.each do |root_2|
    root_2.children.create([
                                       {name: "Level 3.#{root_2.id}.1"},
                                   ])

    root_2.children.each do |root_3|
      root_3.children.create([
                                         {name: "Level 4.#{root_3.id}.1"},
                                     ])
    end
  end
end

# Create active state
item = MenuItem.new(name: 'Test State')
item.activation
item.save

# Create blocked state
item = MenuItem.new(name: 'Test State')
item.blockade
item.save
