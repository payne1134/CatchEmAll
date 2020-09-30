class Pokemon < ApplicationRecord
  #======================
  # Pokemon
  #
  # Represents Pokemon table in database.
  #
  # Feilds
  # --------------------------
  # Name:           | String  | Required
  # Pokedex_Number  | Integer | Required, Numeric, Whole Number
  # Img             | Text    | Required
  # Thumb:          | Text    | Required
  # Color           | String  |
  #
  # Assocations
  # --------------------
  # Has one `Stat`
  #
  #======================

  has_one :stat

  validates :name, :pokedex_number, :img, :thumb, presence: true
  validates :pokedex_number, numericality: { only_integer: true }
end
