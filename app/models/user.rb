# == Schema Information
#
# Table name: users
#
#  id                     :uuid             not null, primary key
#  avatar                 :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  family_name            :string
#  given_name             :string
#  google_refresh_token   :string
#  google_token           :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]
  has_many :courses
  has_many :tests, through: :courses

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first
    # Uncomment the section below if you want users to be created if they don't exist
    unless user
        user = User.create(
           given_name: data['first_name'],
           family_name: data['last_name'],
           email: data['email'],
           password: Devise.friendly_token[0,20],
           avatar: data['image']
        )
    end
    user
end
end
