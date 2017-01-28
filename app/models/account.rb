class Account < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :invitations
  has_many :memberships
  has_many :users, through: :memberships
  accepts_nested_attributes_for :owner

  validates :subdomain, presence: true, uniqueness: true
end
