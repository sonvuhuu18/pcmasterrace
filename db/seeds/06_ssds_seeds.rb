p "Seeding SSDs..."
ssd = HardDrive.create(
  capacity: 1000,
  cache: 1000,
  interface: "SATA III",
  interface_speed: 6,
  controller: "Samsung MEX",
  memory_type: "TLC",
  process_size: 19,
  max_shock_force: 1500
  )
Item.create(
  name: "Samsung 840 EVO 1TB 2.5\" Solid State Drive",
  price: 400,
  release_date: "2013-08-01",
  category: Category.find(3),
  manufacturer: Manufacturer.find(3),
  hard_drive: ssd
  )

ssd = HardDrive.create(
  capacity: 480,
  cache: 512,
  interface: "SATA III",
  interface_speed: 6,
  controller: "Marvell SS889175",
  memory_type: "MLC",
  process_size: 19,
  max_shock_force: 1500
  )
Item.create(
  name: "SanDisk SSD PLUS 480GB 2.5\" Solid State Drive",
  price: 130,
  release_date: "2015-01-01",
  category: Category.find(3),
  manufacturer: Manufacturer.find(11),
  hard_drive: ssd
  )

ssd = HardDrive.create(
  capacity: 512,
  cache: 512,
  interface: "SATA III",
  interface_speed: 6,
  controller: "Marvell 88SS9189",
  memory_type: "MLC",
  process_size: 19,
  max_shock_force: 1500
  )
Item.create(
  name: "Crucial MX100 512GB 2.5\" Solid State Drive",
  price: 340,
  release_date: "2014-06-01",
  category: Category.find(3),
  manufacturer: Manufacturer.find(12),
  hard_drive: ssd
  )
