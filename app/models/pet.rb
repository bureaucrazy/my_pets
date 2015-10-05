class Pet < ActiveRecord::Base
  belongs_to :user

  has_many :locations, dependent: :destroy
  has_many :destinations, dependent: :destroy

  validates :first_name, presence: true
  validates :tracking_uid, presence: true

  after_initialize :set_defaults

  private

  def set_defaults
    # self.birth_date ||= Time.now
  end
end
