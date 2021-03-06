class Post < ActiveRecord::Base  

  acts_as_votable
  belongs_to :user
  has_attached_file :image, styles:{ medium: "300x300>", }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/    
  has_many :comments, dependent: :destroy    
  scope :search_post, ->(keyword){where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present?}
  before_save :set_keywords

  include AASM
    

  aasm column: 'state' do
    state :moderating, :initial => true      
    state :approved

    event :approve do
      transitions from: [:moderating], :to => :approved
    end

    event :moderate do
      transitions from: [:approved], :to => :moderating
    end

  end
    protected
      def set_keywords
        self.keywords = title.downcase
      end 
    #aasm_column :state
    #assm_initial_state :new

    #assm_state :new    
    #assm_state :approved
    #assm_state :moderating
    #assm_state :banned
    
    #assm_event :moderate do
    #  transitions :to => :moderating, from => [:new]      
    #end
    #assm_event :approve do 
    #  transitions :to => :approved, from => [:moderating, :banned]      
    #end

    #assm_event :ban do 
    #  transitions :to => :banned, from => [:moderating]      
    #end
end
