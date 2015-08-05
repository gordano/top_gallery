ActiveAdmin.register Post do
    #permit_params :title, :description, :image, :state 


    index do 
        column :id  
	    column :title  
        column :description
        column :state do |post|
        	div :class => "aasm_state" do 
        	post.may_approve? if post.state.nil?
        	#post.state     
        	end
        end
        column "actions" do |post|
                if post.aasm_state == "moderating"
                    div :class => "aasm_state_action-approve" do             
                        link_to("Approve", approve_admin_post_path(post))
                    end
                else
                    div :class => "aasm_state_action-moderate" do
                        link_to("Moderate", moderate_admin_post_path(post))  
                    end
                end           
            end
        actions        	            
    end

  

    member_action :approve, :method=>:get do       
    end
    member_action :moderate, :method=>:get do       
    end

    controller do
        def approve
          p "++++++++++++++++++++++++++++++++++++++++++++++++++++++"
          @post = Post.find params[:id]
          @post.approve!
          redirect_to admin_posts_path, notice: "Approved!"          
        end
        def moderate
          p "======================================================"
          @post = Post.find params[:id]
          @post.run!
          redirect_to admin_posts_path, notice: "Moderate!"          
        end
        

        def update
        if @post.update(post_params)
            redirect_to @post, notice: "Successfully updated post"        
        end      
    end
    end
end 

#=link_to 'Delete', post_path, method: :delete, data: {confirm: "Are you sure?"}, class: "btn btn-default"
#admin_shops_approve(shop.id), method: :put