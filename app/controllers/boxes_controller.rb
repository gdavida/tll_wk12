# class CreateBoxes < ActiveRecord::Migration
#   def change
#     create_table :boxes do |t|
#       t.string :name, null: false
#       t.integer :age_group_id
#       t.integer :status_id, null: false
#       t.integer :user_id
#       t.integer :location_id, null: false

#       t.timestamps null: false
#     end
#   end
# end


class BoxesController < ApplicationController
  def index
    @boxes = Box.all
  end

  def create
    @box = Box.new(box_params)
    @boxes = Box.all
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])
    @statuses = Status.all
    @status = Status.find_by_id(params[:id])
    @locations = Location.all
    @location = Location.find_by_id(params[:id])
    @toys = Toy.all
    @toy = Toy.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])

    if@box.save
      redirect_to :boxes, notice: "Success created"
    else
      flash.now[:alert] = "Couldn't create"
      render :new
    end
  end

  def new
    @box = Box.new
    @boxes = Box.all
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])
    @statuses = Status.all
    @status = Status.find_by_id(params[:id])
    @locations = Location.all
    @location = Location.find_by_id(params[:id])
    @toys = Toy.all
    @toy = Toy.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])

  end

  def edit
    @box = Box.find_by_id(params[:id])
    @boxes = Box.all
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])
    @statuses = Status.all
    @status = Status.find_by_id(params[:id])
    @locations = Location.all
    @location = Location.find_by_id(params[:id])
    @toys = Toy.all
    @toy = Toy.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])
  end

  def labels
    @box = Box.find_by_id(params[:id])
    @boxes = Box.all
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])
    @statuses = Status.all
    @status = Status.find_by_id(params[:id])
    @locations = Location.all
    @location = Location.find_by_id(params[:id])
    @toys = Toy.all
    @toy = Toy.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])
  end


  def show
    @box = Box.find_by_id(params[:id])
    @boxes = Box.all
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])
    @statuses = Status.all
    @status = Status.find_by_id(params[:id])
    @locations = Location.all
    @location = Location.find_by_id(params[:id])
    @toys = Toy.all
    @toy = Toy.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])
  end

  def small_label
    @box = Box.find_by_id(params[:id])
    @boxes = Box.all
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])
    @statuses = Status.all
    @status = Status.find_by_id(params[:id])
    @locations = Location.all
    @location = Location.find_by_id(params[:id])
    @toys = Toy.all
    @toy = Toy.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])
  end

  def medium_label
    @box = Box.find_by_id(params[:id])
    @boxes = Box.all
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])
    @statuses = Status.all
    @status = Status.find_by_id(params[:id])
    @locations = Location.all
    @location = Location.find_by_id(params[:id])
    @toys = Toy.all
    @toy = Toy.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])
  end

  def large_label
    @box = Box.find_by_id(params[:id])
    @boxes = Box.all
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])
    @statuses = Status.all
    @status = Status.find_by_id(params[:id])
    @locations = Location.all
    @location = Location.find_by_id(params[:id])
    @toys = Toy.all
    @toy = Toy.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])
  end

  def update
    @box = Box.find_by_id(params[:id])
    @boxes = Box.all
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])
    @statuses = Status.all
    @status = Status.find_by_id(params[:id])
    @locations = Location.all
    @location = Location.find_by_id(params[:id])
    @toys = Toy.all
    @toy = Toy.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])

    if@box.update_attributes(box_params)
      redirect_to box_path(@box), notice: "Successfully updated"
    else
      flash.now[:alert] = "Couldn't Update"
      render :new
    end
  end

  def destroy
    @box = Box.find_by_id(params[:id])
    @box.destroy
    redirect_to :boxes, notice: "Successfully destroyed!"
  end

  private
  def box_params
    params.require(:box).permit(:name, :age_group_id, :status_id, :user_id, :location_id)
  end
end
