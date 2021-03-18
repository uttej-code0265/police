class User < ApplicationRecord 
    validates :id_no, presence: true
    validates :name, presence: true
end