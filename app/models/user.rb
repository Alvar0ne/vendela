class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :publications 
  validates :nombre , :presence => {:message => "es requerido"}
  validates :region , :presence => {:message => "es requerido"}
  validates :comuna , :presence => {:message => "es requerido"}
  validates :fono , :presence => {:message => "es requerido"}
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  include PermissionsConcern
end
