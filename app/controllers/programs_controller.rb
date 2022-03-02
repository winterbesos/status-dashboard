class ProgramsController < ApplicationController
  def index
    programs = Program.all
    render :json => programs
  end

  def create
    program = Program.create!(program_params)
    render :json => program
  end

  def destroy
    program = Program.find(params[:id])
    program.destroy
  end

  private
  def program_params
    params.require(:program).permit(:identifier, :name, :sction_name)
  end
end
