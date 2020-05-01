class BuildingsController < ApplicationController


    def index 
        @buildings = Building.all
    end

    def show 
        @building = Building.find(params[:id])
    end

    def new 
        @building = Building.new
    end

    def edit 
        @building = Building.find(params[:id])
    end

    def update 
        @building = Building.find(params[:id])
        @building.update(building_params)
        redirect_to building_path(@building)
    end

    def create
        @building = Building.create(building_params)
        redirect_to building_path(@building) 
    end

    def destroy
        @building = Building.find(params[:id])
        @building.destroy
        redirect_to buildings_path(@building) 
    end 

    private 

    def building_params 
        params.require(:building).permit(:name, :country, :adress, :rent_per_floor, :number_of_floors)
    end

end

# FORM DROPDOWN Y CHECKBOXES
# <%= f.collection_select :power_id, :super_power_id Power.all, :id, :name%>
 #                      (table name),(foreign_key),(method),(foreign_id),(:name)
 #how to use collection select in a view
#  <%= form_tag do %>
#     <%= collection_select @dog, :employee_id, @employees, :id, :first_name %>
#     <%= submit_tag %>
# <% end %>
 # <%= f.collection_check_boxes :power_id, Power.all, :id, :name%>

# METHODS EN EL MODELO
# def fullname
# 	self.first_name + ‘ ‘ + self.last_name
# end

#VALIDATIONS (in model files)

#length
# validates :name, length: { minimum: 2 }
# validates :bio, length: { maximum: 500 }
# validates :password, length: { in: 6..20 }
# validates :registration_number, length: { is: 6 }

#uniqueness
#validates :email, uniqueness: true

#CUSTOM MESSAGES
#validates :not_a_robot, acceptance: true, message: "Humans only!"
