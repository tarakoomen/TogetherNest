class Group < ApplicationRecord
  has_many :messages
  has_many :users, through: :group_users

  validates :name, presence: true
  validates :type, presence: true
  validate :valid_group_type

  private

  def valid_group_type
    allowed_types = ['parent community group', 'private messaging group', 'mentor group']
    unless allowed_types.include?(self.type)
      errors.add(:type, "must be one of: #{allowed_types.join(', ')}")
    end
  end
end
