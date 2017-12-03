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

gpu = Gpu.create(
  gpu_brand: "NVIDIA",
  gpu_name: "GP104",
  clock_speed: 1590,
  turbo_clock_speed: 1780,
  is_dual_gpu: "No",
  memory_clock_speed: 2002,
  effective_memory_clock_speed: 8008,
  memory_bus: 256,
  memory: 8192,
  memory_type: "GDDR5",
  memory_bandwidth: 256.3,
  tdp: 170,
  shading_units: 1920,
  texture_mapping_units: 120,
  render_output_precessors: 64,
  pixel_rate: 96.4,
  texture_rate: 180.7,
  floating_point_performance: 5783
  )
Item.create(
  name: "EVGA GeForce GTX 1070 8GB SSC GAMING ACX 3.0 Black Edition",
  price: 430,
  release_date: "2016-07-01",
  category: Category.first,
  manufacturer: Manufacturer.find(10),
  gpu: gpu
  )

gpu = Gpu.create(
  gpu_brand: "NVIDIA",
  gpu_name: "GP104",
  clock_speed: 1610,
  turbo_clock_speed: 1690,
  is_dual_gpu: "No",
  memory_clock_speed: 2002,
  effective_memory_clock_speed: 8008,
  memory_bus: 256,
  memory: 8192,
  memory_type: "GDDR5",
  memory_bandwidth: 256.3,
  tdp: 180,
  shading_units: 1920,
  texture_mapping_units: 120,
  render_output_precessors: 64,
  pixel_rate: 96.4,
  texture_rate: 180.7,
  floating_point_performance: 5783
  )
Item.create(
  name: "EVGA GeForce GTX 1070 8GB SSC GAMING ACX 3.0 Black Edition",
  price: 470,
  release_date: "2016-07-01",
  category: Category.first,
  manufacturer: Manufacturer.find(10),
  gpu: gpu
  )

gpu = Gpu.create(
  gpu_brand: "NVIDIA",
  gpu_name: "GP104",
  clock_speed: 1610,
  turbo_clock_speed: 1690,
  is_dual_gpu: "No",
  memory_clock_speed: 2002,
  effective_memory_clock_speed: 8008,
  memory_bus: 256,
  memory: 8192,
  memory_type: "GDDR5",
  memory_bandwidth: 256.3,
  tdp: 180,
  shading_units: 1920,
  texture_mapping_units: 120,
  render_output_precessors: 64,
  pixel_rate: 96.4,
  texture_rate: 180.7,
  floating_point_performance: 5783
  )
Item.create(
  name: "Zotac GeForce GTX 1070 8GB Mini",
  price: 410,
  release_date: "2016-07-01",
  category: Category.first,
  manufacturer: Manufacturer.find(4),
  gpu: gpu
  )

gpu = Gpu.create(
  gpu_brand: "NVIDIA",
  gpu_name: "GP104",
  clock_speed: 1670,
  turbo_clock_speed: 1830,
  is_dual_gpu: "No",
  memory_clock_speed: 1251,
  effective_memory_clock_speed: 10008,
  memory_bus: 256,
  memory: 8192,
  memory_type: "GDDR5",
  memory_bandwidth: 224.4,
  tdp: 180,
  shading_units: 2560,
  texture_mapping_units: 160,
  render_output_precessors: 64,
  pixel_rate: 102.8,
  texture_rate: 257.1,
  floating_point_performance: 8228
  )
Item.create(
  name: "Asus GeForce GTX 1080 8GB ROG STRIX",
  price: 550,
  release_date: "2016-07-01",
  category: Category.first,
  manufacturer: Manufacturer.find(9),
  gpu: gpu
  )

gpu = Gpu.create(
  gpu_brand: "NVIDIA",
  gpu_name: "GP104",
  clock_speed: 1710,
  turbo_clock_speed: 1850,
  is_dual_gpu: "No",
  memory_clock_speed: 1251,
  effective_memory_clock_speed: 10008,
  memory_bus: 256,
  memory: 8192,
  memory_type: "GDDR5",
  memory_bandwidth: 224.4,
  tdp: 180,
  shading_units: 2560,
  texture_mapping_units: 160,
  render_output_precessors: 64,
  pixel_rate: 102.8,
  texture_rate: 257.1,
  floating_point_performance: 8228
  )
Item.create(
  name: "MSI GeForce GTX 1080 8GB DUKE OC ",
  price: 514,
  release_date: "2016-07-01",
  category: Category.first,
  manufacturer: Manufacturer.find(8),
  gpu: gpu
  )

gpu = Gpu.create(
  gpu_brand: "NVIDIA",
  gpu_name: "GP102",
  clock_speed: 1570,
  turbo_clock_speed: 1710,
  is_dual_gpu: "No",
  memory_clock_speed: 1376,
  effective_memory_clock_speed: 11008,
  memory_bus: 352,
  memory: 11264,
  memory_type: "GDDR5",
  memory_bandwidth: 484.4,
  tdp: 250,
  shading_units: 3584,
  texture_mapping_units: 224,
  render_output_precessors: 88,
  pixel_rate: 139.2,
  texture_rate: 354.4,
  floating_point_performance: 11340
  )
Item.create(
  name: "Asus GeForce GTX 1080 Ti 11GB STRIX GAMING",
  price: 800,
  release_date: "2017-03-01",
  category: Category.first,
  manufacturer: Manufacturer.find(9),
  gpu: gpu
  )

gpu = Gpu.create(
  gpu_brand: "NVIDIA",
  gpu_name: "GP102",
  clock_speed: 1570,
  turbo_clock_speed: 1680,
  is_dual_gpu: "No",
  memory_clock_speed: 1376,
  effective_memory_clock_speed: 11008,
  memory_bus: 352,
  memory: 11264,
  memory_type: "GDDR5",
  memory_bandwidth: 484.4,
  tdp: 250,
  shading_units: 3584,
  texture_mapping_units: 224,
  render_output_precessors: 88,
  pixel_rate: 139.2,
  texture_rate: 354.4,
  floating_point_performance: 11340
  )
Item.create(
  name: "MSI GeForce GTX 1080 Ti 11GB GAMING X",
  price: 770,
  release_date: "2017-03-01",
  category: Category.first,
  manufacturer: Manufacturer.find(8),
  gpu: gpu
  )
