class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    teacher = Teacher.create(teacher_params)
    if teacher.persisted?
      flash[:notice] = "El profesor ha sido creado exitosamente"
      redirect_to root_path()
    else
      flash[:alert] = "El profesor no ha podido ser creado. #{teacher.errors.full_messages}"
      redirect_to new_teacher_path()
    end
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :lastname, :code)
  end
end
