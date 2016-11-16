class Carekeeper < ApplicationRecord
  enum gender: [ :male, :female, :other ]
end
