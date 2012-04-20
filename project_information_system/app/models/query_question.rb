class QueryQuestion < ActiveRecord::Base
has_many :query_answers, :dependent=>:destroy 
validates_presence_of :question
end
