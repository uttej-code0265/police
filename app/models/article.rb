class Article < ApplicationRecord 
    validates :cr_no, presence: true, length: {minimum:2, maximum:10}
    validates :sec_law,presence:true, length: {minimum:2,maximun: 50}
    validates :acc_name,presence:true, length: {minimum:2,maximun: 50}
end
  