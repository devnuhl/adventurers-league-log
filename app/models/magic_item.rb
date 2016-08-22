class MagicItem < ActiveRecord::Base
  belongs_to :log_entry
  has_one :character, through: :log_entry

  enum rarity: [:common, :uncommon, :rare, :very_rare, :legendary]
end