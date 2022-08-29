puts "🌱 Seeding spices..."

# Seed your database here
outbound = Workzone.create(name: "Outbound")
inbound = Workzone.create(name: "Inbound")
icqa = Workzone.create(name: "ICQA")
removals = Workzone.create(name: "Removals")

Employee.create(name: "mwarrn", workzone_id: outbound.id)
Employee.create(name: "antgarz", workzone_id: inbound.id)
Employee.create(name: "petnorm", workzone_id: icqa.id)
Employee.create(name: "dahylton", workzone_id: removals.id)
Employee.create(name: "phonesad", workzone_id: outbound.id)

puts "✅ Done seeding!"
