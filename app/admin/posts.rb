ActiveAdmin.register Post do  
    index do  
	    column :title  
        column :description
        column :state do |post|
        	div :class => "aasm_state" do 
        	post.state = 'No status' if post.state.nil?
        	post.state
        	end
        end
        actions        	            
    end
end  