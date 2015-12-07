# == Schema Information
#
# Table name: collaborators
#
#  id         :integer          not null, primary key
#  wiki_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Collaborator < ActiveRecord::Base
  belongs_to :wiki
  belongs_to :user
end
