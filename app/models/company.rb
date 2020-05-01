class Company < ApplicationRecord
    has_many :employees
    has_many :offices 
    has_many :buildings, through: :offices


    def list_of_employees 
        self.employees.each do |c|
            c.name
            
        end
    end
    

end 


#Collection checkbox for new.html.erb(doesnt work yet)
# <p>Choose buildings: <% f.label :company %> </p>
# <%= f.collection_check_boxes :building, :company_ids, Building.all, :id, :name %>