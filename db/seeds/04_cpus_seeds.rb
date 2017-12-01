p "Seeding cpus..."
cpu = Cpu.create(
  clock_speed: 3.5,
  turbo_clock_speed: 3.7,
  cores: 4,
  is_unlocked: "No",
  architechture: "Ryzen™",
  threads: 8,
  l2_cache: 2,
  l3_cache: 16,
  manufacturer_process: 14,
  gpu_label: nil,
  tdp: nil
  )
Item.create(
  name: "Ryzen™ 5 PRO 1500",
  price: 164,
  release_date: "2017-08-01",
  category: Category.second,
  manufacturer: Manufacturer.second,
  cpu: cpu
  )

cpu = Cpu.create(
  clock_speed: 3.7,
  turbo_clock_speed: 4,
  cores: 4,
  is_unlocked: "Yes",
  architechture: "x86-64",
  threads: 4,
  l2_cache: 4,
  l3_cache: 16,
  manufacturer_process: 28,
  gpu_label: "Radeon™ R7 Series",
  tdp: 65
  )
Item.create(
  name: "A10 7850K",
  price: 140,
  release_date: "2014-01-01",
  category: Category.second,
  manufacturer: Manufacturer.second,
  cpu: cpu
  )

cpu = Cpu.create(
  clock_speed: 3.7,
  turbo_clock_speed: 4.7,
  cores: 6,
  is_unlocked: "No",
  architechture: "Coffee Lake",
  threads: 12,
  l2_cache: 4,
  l3_cache: 12,
  manufacturer_process: 14,
  gpu_label: "Intel® UHD Graphics 630",
  tdp: 95
  )
Item.create(
  name: "Intel® Core™ i7-8700K",
  price: 410,
  release_date: "2017-10-01",
  category: Category.second,
  manufacturer: Manufacturer.find(7),
  cpu: cpu
  )

cpu = Cpu.create(
  clock_speed: 3.4,
  turbo_clock_speed: 3.8,
  cores: 8,
  is_unlocked: "Yes",
  architechture: "Ryzen™",
  threads: 16,
  l2_cache: 4,
  l3_cache: 16,
  manufacturer_process: 14,
  gpu_label: nil,
  tdp: 95
  )
Item.create(
  name: "Ryzen™ 7 1700X",
  price: 300,
  release_date: "2017-06-01",
  category: Category.second,
  manufacturer: Manufacturer.second,
  cpu: cpu
  )

cpu = Cpu.create(
  clock_speed: 4.2,
  turbo_clock_speed: 4.5,
  cores: 4,
  is_unlocked: "No",
  architechture: "Kaby Lake",
  threads: 8,
  l2_cache: 2,
  l3_cache: 8,
  manufacturer_process: 14,
  gpu_label: "Intel® HD Graphics 630",
  tdp: 91
  )
Item.create(
  name: "Intel® Core™ i7-7700K",
  price: 300,
  release_date: "2017-01-01",
  category: Category.second,
  manufacturer: Manufacturer.find(7),
  cpu: cpu
  )

