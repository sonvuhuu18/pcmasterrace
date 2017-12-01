p "Seeding GPUs..."
gpu = Gpu.create(
  gpu_brand: "NVIDIA",
  gpu_name: "GP107",
  clock_speed: 1291,
  turbo_clock_speed: 1392,
  is_dual_gpu: "No",
  memory_clock_speed: 1752,
  effective_memory_clock_speed: 7008,
  memory_bus: 128,
  memory: 4096,
  memory_type: "GDDR5",
  memory_bandwidth: 112.1,
  tdp: 75,
  shading_units: 768,
  texture_mapping_units: 48,
  render_output_precessors: 32,
  pixel_rate: 41.3,
  texture_rate: 62,
  floating_point_performance: 1983
  )
Item.create(
  name: "MSI GTX 1050 Ti 4GB GAMING X 4G ",
  price: 180,
  release_date: "2016-10-01",
  category: Category.first,
  manufacturer: Manufacturer.find(8),
  gpu: gpu
  )

gpu = Gpu.create(
  gpu_brand: "NVIDIA",
  gpu_name: "GP107",
  clock_speed: 1340,
  turbo_clock_speed: 1460,
  is_dual_gpu: "No",
  memory_clock_speed: 1752,
  effective_memory_clock_speed: 7008,
  memory_bus: 128,
  memory: 4096,
  memory_type: "GDDR5",
  memory_bandwidth: 112.1,
  tdp: 75,
  shading_units: 768,
  texture_mapping_units: 48,
  render_output_precessors: 32,
  pixel_rate: 41.3,
  texture_rate: 62,
  floating_point_performance: 1983
  )
Item.create(
  name: "Gigabyte GV-N105TOC-4GD",
  price: 170,
  release_date: "2016-10-01",
  category: Category.first,
  manufacturer: Manufacturer.find(4),
  gpu: gpu
  )

gpu = Gpu.create(
  gpu_brand: "NVIDIA",
  gpu_name: "GP107",
  clock_speed: 1380,
  turbo_clock_speed: 1500,
  is_dual_gpu: "No",
  memory_clock_speed: 1752,
  effective_memory_clock_speed: 7008,
  memory_bus: 128,
  memory: 4096,
  memory_type: "GDDR5",
  memory_bandwidth: 112.1,
  tdp: 75,
  shading_units: 768,
  texture_mapping_units: 48,
  render_output_precessors: 32,
  pixel_rate: 41.3,
  texture_rate: 62,
  floating_point_performance: 1983
  )
Item.create(
  name: "Asus GeForce GTX 1050 Ti 4GB STRIX",
  price: 180,
  release_date: "2016-10-01",
  category: Category.first,
  manufacturer: Manufacturer.find(9),
  gpu: gpu
  )

gpu = Gpu.create(
  gpu_brand: "NVIDIA",
  gpu_name: "GP106",
  clock_speed: 1510,
  turbo_clock_speed: 1710,
  is_dual_gpu: "No",
  memory_clock_speed: 2002,
  effective_memory_clock_speed: 8008,
  memory_bus: 192,
  memory: 6144,
  memory_type: "GDDR5",
  memory_bandwidth: 192.2,
  tdp: 120,
  shading_units: 1280,
  texture_mapping_units: 80,
  render_output_precessors: 48,
  pixel_rate: 74.1,
  texture_rate: 123.5,
  floating_point_performance: 3953
  )
Item.create(
  name: "Zotac GeForce GTX 1060 6GB Mini",
  price: 240,
  release_date: "2016-07-01",
  category: Category.first,
  manufacturer: Manufacturer.find(5),
  gpu: gpu
  )

gpu = Gpu.create(
  gpu_brand: "NVIDIA",
  gpu_name: "GP106",
  clock_speed: 1510,
  turbo_clock_speed: 1810,
  is_dual_gpu: "No",
  memory_clock_speed: 2002,
  effective_memory_clock_speed: 8008,
  memory_bus: 192,
  memory: 6144,
  memory_type: "GDDR5",
  memory_bandwidth: 192.2,
  tdp: 120,
  shading_units: 1280,
  texture_mapping_units: 80,
  render_output_precessors: 48,
  pixel_rate: 74.1,
  texture_rate: 123.5,
  floating_point_performance: 3953
  )
Item.create(
  name: "MSI GEFORCE GTX 1060 GAMING X 6G",
  price: 300,
  release_date: "2016-07-01",
  category: Category.first,
  manufacturer: Manufacturer.find(8),
  gpu: gpu
  )
