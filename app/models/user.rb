class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
       after_create :sample_email

       def sample_email    
       		WelcomeMailer.sample_email(self).deliver
       end
end
