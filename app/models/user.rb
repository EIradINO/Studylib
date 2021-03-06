class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[google_oauth2]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

  def arliked_by?(article_id)
    arlikes.where(article_id: article_id).exists?
  end

  def liketipd_by?(tip_id)
    liketips.where(tip_id: tip_id).exists?
  end

  has_many :articles, dependent: :destroy
  has_many :tiplikes, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :arlikes, dependent: :destroy
  has_many :tips,  dependent: :destroy
  has_many :liketips, dependent: :destroy
  has_many :liked_tips, through: :liketips, source: :tip
  has_many :liked_articles, through: :arlikes, source: :article
end
