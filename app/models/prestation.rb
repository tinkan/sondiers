class Prestation < ActiveRecord::Base
  attr_accessible :category_id, :commentaire, :date, :production, :projet
  
  belongs_to :category
end
