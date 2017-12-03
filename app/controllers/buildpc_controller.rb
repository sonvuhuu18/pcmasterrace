class BuildpcController < ApplicationController
  def index
    @cpus = Cpu.all
    @gpus = Gpu.all
    @hard_drives = HardDrive.all
    @rams = Ram.all
    
    @cpu = Cpu.find_by(id: params[:cpu_id]) if params[:cpu_id] 
    @gpu = Gpu.find_by(id: params[:gpu_id]) if params[:gpu_id] 
    @hard_drive = HardDrive.find_by(id: params[:hard_drive_id]) if params[:hard_drive_id] 
    @ram = Ram.find_by(id: params[:ram_id]) if params[:ram_id] 
    
    @price = 0
    @price += @cpu.item.price if @cpu
    @price += @gpu.item.price if @gpu
    @price += @hard_drive.item.price if @hard_drive
    @price += @ram.item.price if @ram
    
  end
end
