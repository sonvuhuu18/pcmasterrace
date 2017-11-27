class BuildpcController < ApplicationController
  def index
    @cpus = Cpu.all
    @gpus = Gpu.all
    @hard_drives = HardDrive.all
    
    @cpu = Cpu.find_by(id: params[:cpu_id]) if params[:cpu_id] 
    @gpu = Gpu.find_by(id: params[:gpu_id]) if params[:gpu_id] 
    @hard_drive = HardDrive.find_by(id: params[:hard_drive_id]) if params[:hard_drive_id] 
  end
end
