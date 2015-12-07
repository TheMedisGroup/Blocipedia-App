# == Schema Information
#
# Table name: wikis
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  private    :boolean
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  public     :boolean          default(TRUE)
#

class Wiki < ActiveRecord::Base
  belongs_to :user
  has_many :collaborators
  scope :visible_to, ->(user, viewable = true) { user ? all : where(public: viewable) }
end
