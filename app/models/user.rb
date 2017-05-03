class User < ActiveRecord::Base
  has_many :question_results, through: :results, source: :question
  has_secure_password
end
