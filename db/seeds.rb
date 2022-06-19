# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roots = MenuItem.create([
                            {name: 'Level 1.1', active: true},
                            {name: 'Level 1.2', active: true},
                            {name: 'Level 1.3', active: false}
                        ])

roots.each do |root_1|
  root_1.child_menu_items.create([
                                     {name: "Level 2.#{root_1.id}.1", active: true},
                                     {name: "Level 2.#{root_1.id}.2", active: true},
                                     {name: "Level 2.#{root_1.id}.3", active: false}
                                 ])

  root_1.child_menu_items.each do |root_2|
    root_2.child_menu_items.create([
                                       {name: "Level 3.#{root_2.id}.1", active: true},
                                       {name: "Level 3.#{root_2.id}.2", active: true},
                                       {name: "Level 3.#{root_2.id}.3", active: false}
                                   ])

    root_2.child_menu_items.each do |root_3|
      root_3.child_menu_items.create([
                                         {name: "Level 4.#{root_3.id}.1", active: true},
                                         {name: "Level 4.#{root_3.id}.2", active: true},
                                         {name: "Level 4.#{root_3.id}.3", active: false}
                                     ])
    end
  end
end
