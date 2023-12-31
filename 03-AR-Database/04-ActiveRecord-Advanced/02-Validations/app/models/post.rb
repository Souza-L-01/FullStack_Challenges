class Post < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }, uniqueness: { case_sensitive: false }
  validates :url, presence: true, format: { with: /\Ahttps?:\/\/.*\z/ }
  validates :user, presence: true
end
