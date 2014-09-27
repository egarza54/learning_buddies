class TeachersController < ApplicationController

  def index
  end

  def show
    current_teacher
  end

  def new
    @teacher = Teacher.new
  end

  def edit
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      flash.notice = "User was successfully created."
      redirect_to root_path
    else
      flash.notice = "Try again."
      render :new
    end
  end

  def update
    if current_teacher.update(teacher_params)
      flash.notice = 'User was successfully updated.'
      redirect_to teacher_path(@teacher)
    else
      flash.notice = "Try again."
      render :edit
    end
  end

  # def destroy
  #   @user.destroy
  #   flash.notice = 'User was successfully destroyed.'
  #   redirect_to root_path
  # end

private

  def teacher_params
    params.require(:teacher).permit(:email, :password)
  end

end
