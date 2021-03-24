class Comment < ActiveRecord::Base
  belongs_to :client
  belongs_to :target, polymorphic: true


end
