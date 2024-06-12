class ChildrenController < ApplicationController
  def index
    @children = Child.all
  end

  def create
    @user = current_user
    @child = Child.new(child_params)
    @child.user = @user
    if @child.save
      redirect_to new_child_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @user = current_user
    @child = Child.new
  end

  def edit
    @child = Child.find(params[:id])
  end

  def update
    @child = Child.find(params[:id])
    if @child.update(child_params)
      redirect_to new_user_intake_personal_information_path
    else
      render :edit
    end
  end

  def destroy
    @child = Child.find(params[:id])
    @child.destroy
    redirect_to new_child_path, status: :see_other
  end

  private

  def child_params
    params.require(:child).permit(:first_name, :last_name, :gender, :age_range)
  end
end
