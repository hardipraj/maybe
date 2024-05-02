class Transaction::Merchant < ApplicationRecord
  has_many :transactions, dependent: :nullify
  belongs_to :family

  validates :name, :color, :family, presence: true

  scope :alphabetically, -> { order(:name) }

  COLORS = %w[#e99537 #4da568 #6471eb #db5a54 #df4e92 #c44fe9 #eb5429 #61c9ea #805dee #6ad28a]

  def self.ransackable_attributes(auth_object = nil)
    %w[name id]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[]
  end
end
