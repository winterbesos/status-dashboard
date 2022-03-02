class ProgressesController < ApplicationController
  def index
    progresses = Progress.all

    render :json => progresses
  end

  def create
    program_identifier = params[:program_identifier]
    program = Program.find_by(:identifier => program_identifier)
    progress = program.progresses.create!(progress_params)
		ActionCable.server.broadcast("sd", progress.as_json(include: :program))
    render :json => progress, include: [:program]
  end

  def update
    progress = Progress.find(params[:id])
    progress.update!(update_progress_params)
    ActionCable.server.broadcast("sd", progress.as_json(include: :program))
    render :json => progress, include: [:program]
  end

  def update_by_identifier
    identifier = params[:program_identifier]
    program = Program.find_by(:identifier => identifier)
    program = Program.create!(:identifier => identifier, :name => identifier) if program.nil?

    progress = program.progresses.last
    progress = program.progresses.create!(progress_params) if progress.nil?

    progress.update!(progress_params)
    ActionCable.server.broadcast("sd", progress.as_json(include: :program))
  end

  private
  def progress_params
    params.require(:progress).permit(:begun_at, :ended_at, :status, :creator, :rate)
  end

  def update_progress_params
    params.require(:progress).permit(:status, :rate)
  end
end
