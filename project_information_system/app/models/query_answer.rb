class QueryAnswer < ActiveRecord::Base
belongs_to :query_question
validates_presence_of :answer 
end
