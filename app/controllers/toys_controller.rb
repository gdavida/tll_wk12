# class CreateToys < ActiveRecord::Migration
#   def change
#     create_table :toys do |t|
#       t.string :name, null:false
#       t.integer :box_id
#       t.string :brand
#       t.integer :age_group_id
#       t.string :upc
#       t.string :manufacturer_suggested_age, null:false
#       t.integer :pieces, null:false
#       t.string :website
#       t.string :purchased_from
#       t.string :price
#       t.string :toy_image

#       t.timestamps null: false
#     end
#   end
# end


class ToysController < ApplicationController
  def index
    @toys = Toy.all
  end

  def create
    @toy = Toy.new(toy_params)
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])

    if@toy.save
      redirect_to :toys, notice: "Success created"
    else
      flash.now[:alert] = "Couldn't create"
      render :new
    end
  end

  def new
    @toy = Toy.new
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])
    @boxes = Box.all
    @box = Box.find_by_id(params[:id])
  end

  def edit
    @toy = Toy.find_by_id(params[:id])
  end

  def show
    @toy = Toy.find_by_id(params[:id])
    @age_groups = AgeGroup.all
    @age_group = @toy.age_group
    @boxes = Box.all
    @box = @toy.box
  end

  def update
    @toy = Toy.find_by_id(params[:id])
    @age_groups = AgeGroup.all
    @age_group = AgeGroup.find_by_id(params[:id])
    @boxes = Box.all
    @box = Box.find_by_id(params[:id])
    if@toy.update_attributes(toy_params)
      redirect_to toy_path(@toy), notice: "Successfully updated"
    else
      flash.now[:alert] = "Couldn't Update"
      render :new
    end
  end

  def destroy
    @toy = Toy.find_by_id(params[:id])
    @toy.destroy
    redirect_to :toys, notice: "Successfully destroyed!"
  end

  private
  def toy_params
    params.require(:toy).permit(:name, :box_id, :brand, :age_group_id, :upc, :manufacturer_suggested_age, :pieces, :website, :purchased_from, :price, :toy_image)
  end
end
