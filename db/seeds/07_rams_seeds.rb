p "Seeding RAMs..."
ram = Ram.create(
  ram_type: "DDR3",
  memory_size: 16,
  bus: 1866,
  tdp: 8
  )
Item.create(
  name: "Kingston HyperX Fury Black 16GB (2 x 8GB)",
  price: 150,
  release_date: "2016-01-01",
  category: Category.find(4),
  manufacturer: Manufacturer.find(13),
  ram: ram
  )

ram = Ram.create(
  ram_type: "DDR3",
  memory_size: 8,
  bus: 1600,
  tdp: 8
  )
Item.create(
  name: "G.Skill Ripjaws Series 8GB (2 x 4GB) DDR3-1600 ",
  price: 75,
  release_date: "2016-01-01",
  category: Category.find(4),
  manufacturer: Manufacturer.find(14),
  ram: ram
  )

ram = Ram.create(
  ram_type: "DDR4",
  memory_size: 16,
  bus: 3000,
  tdp: 8
  )
Item.create(
  name: "Corsair Vengeance LPX 16GB (2 x 8GB) DDR4-3000",
  price: 200,
  release_date: "2016-01-01",
  category: Category.find(4),
  manufacturer: Manufacturer.find(15),
  ram: ram
  )
