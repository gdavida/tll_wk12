# class CreateStatuses < ActiveRecord::Migration
#   def change
#     create_table :statuses do |t|
#       t.string :category, null: false
#       t.string :color

#       t.timestamps null: false
#     end
#   end
# end


class StatusesController < ApplicationController
  def index
    @statuses = Status.all
  end

  def create
    @status = Status.new(status_params)

    if@status.save
      redirect_to :statuses, notice: "Success created"
    else
      flash.now[:alert] = "Couldn't create"
      render :new
    end
  end

  def new
    @status = Status.new
    @boxes = Box.all
    @box = Box.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])
  end

  def edit
    @status = Status.find_by_id(params[:id])
    @boxes = Box.all
    @box = Box.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])
  end

  def show
    @status = Status.find_by_id(params[:id])
    @boxes = Box.all
    @box = Box.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])
  end

  def update
    @status = Status.find_by_id(params[:id])
    @boxes = Box.all
    @box = Box.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])
    if@status.update_attributes(status_params)
      redirect_to status_path(@status), notice: "Successfully updated"
    else
      flash.now[:alert] = "Couldn't Update"
      render :new
    end
  end

  def destroy
    @status = Status.find_by_id(params[:id])
    @status.destroy
    redirect_to :statuses, notice: "Successfully destroyed!"
  end

  private
  def status_params
    params.require(:status).permit(:category, :color)
  end
end
