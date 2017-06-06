Group.destroy_all

Group.create!([{
                   name: "Axis"
               },
               {
                   name: "Allies"
               },
              ])

p "Created #{Group.count} groups"


Place.destroy_all

Place.create!([{
                   name: "Maadi",
                   longitude: 254.2,
                   latitude: 542.3
               },
               {
                   name: "Zamalek",
                   longitude: 543.2,
                   latitude: 555.3
               },
               {
                   name: "Smart Village",
                   longitude: 665.2,
                   latitude: 33.3
               },
               {
                   name: "New Cairo",
                   longitude: 10.2,
                   latitude: 444.3
               }
              ])

p "Created #{Place.count} places"