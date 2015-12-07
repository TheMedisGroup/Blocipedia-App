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

require 'rails_helper'

RSpec.describe Wiki, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
