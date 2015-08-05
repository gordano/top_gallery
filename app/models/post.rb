class Post < ActiveRecord::Base
	#attr_accessible :title, :description
	

	acts_as_votable
	belongs_to :user
	has_attached_file :image, styles:{ medium: "300x300>", }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    has_many :comments

    include AASM
    def aasm_state
  		self[:state] || "moderating"
	end


    aasm do
    	state :moderating, :initial => true
    	#state :banned
    	state :approved

    	event :approve do
    	  transitions :from => [:moderating], :to => :approved
    	end

    	event :moderate do
    	  transitions :from => [:approved], :to => :moderating
    	end

  	end

    #aasm_column :state
    #assm_initial_state :new

    #assm_state :new    
    #assm_state :approved
    #assm_state :moderating
    #assm_state :banned
    
    #assm_event :moderate do
    #	transitions :to => :moderating, from => [:new]    	
    #end
    #assm_event :approve do 
    #	transitions :to => :approved, from => [:moderating, :banned]    	
    #end

    #assm_event :ban do 
    #	transitions :to => :banned, from => [:moderating]    	
    #end
end
