# class CreateAgeGroups < ActiveRecord::Migration
#   def change
#     create_table :age_groups do |t|
#       t.string :age,  null: false
#       t.string :color,  null: false

#       t.timestamps null: false
#     end
#   end
# end


class AgeGroupsController < ApplicationController
  def index
    @age_groups = AgeGroup.all
  end

  def create
    @age_group = AgeGroup.new(age_group_params)

    if@age_group.save
      redirect_to :age_groups, notice: "Success created"
    else
      flash.now[:alert] = "Couldn't create"
      render :new
    end
  end

  def new
    @age_group = AgeGroup.new
  end

  def edit
    @age_group = AgeGroup.find_by_id(params[:id])
  end

  def show
    @age_group = AgeGroup.find_by_id(params[:id])
  end

  def update
    @age_group = AgeGroup.find_by_id(params[:id])
    if@age_group.update_attributes(age_group_params)
      redirect_to age_group_path(@age_group), notice: "Successfully updated"
    else
      flash.now[:alert] = "Couldn't Update"
      render :new
    end
  end

  def destroy
    @age_group = AgeGroup.find_by_id(params[:id])
    @age_group.destroy
    redirect_to :age_groups, notice: "Successfully destroyed!"
  end


  def import
    AgeGroup.import(params[:file])
    redirect_to age_groups_path
  end


  private
  def age_group_params
    params.require(:age_group).permit(:age, :color)
  end
end
