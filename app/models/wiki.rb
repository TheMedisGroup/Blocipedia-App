# == Schema Information
#
# Table name: wikis
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  public     :boolean          default(TRUE)
#

class Wiki < ActiveRecord::Base
  belongs_to :user
  has_many :collaborators
  has_many :users, through: :collaborators
  scope :visible_to, ->(user) { user ? all : where(public: true ) }
end
