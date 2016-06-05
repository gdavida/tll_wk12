# class CreateLocations < ActiveRecord::Migration
#   def change
#     create_table :locations do |t|
#       t.string :branch_name, null: false
#       t.string :address
#       t.string :contact_name

#       t.timestamps null: false
#     end
#   end
# end


class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def create
    @location = Location.new(location_params)

    if@location.save
      redirect_to :locations, notice: "Success created"
    else
      flash.now[:alert] = "Couldn't create"
      render :new
    end
  end

  def new
    @location = Location.new
  end

  def edit
    @location = Location.find_by_id(params[:id])
  end

  def show
    @location = Location.find_by_id(params[:id])
  end

  def update
    @location = Location.find_by_id(params[:id])
    if@location.update_attributes(location_params)
      redirect_to location_path(@location), notice: "Successfully updated"
    else
      flash.now[:alert] = "Couldn't Update"
      render :new
    end
  end

  def destroy
    @location = Location.find_by_id(params[:id])
    @location.destroy
    redirect_to :locations, notice: "Successfully destroyed!"
  end

  private
  def location_params
    params.require(:location).permit(:branch_name, :address, :contact_name, :iframe)
  end
end
