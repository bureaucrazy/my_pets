class Pet < ActiveRecord::Base
  belongs_to :user
  belongs_to :status

  has_many :locations, dependent: :destroy
  has_many :destinations, dependent: :destroy

  validates :first_name, presence: true
  validates :tracking_uid, presence: true

  after_initialize :set_defaults

  def full_name
    "#{first_name} #{last_name}".strip
  end

  delegate :name, to: :status, prefix: true

  private

  def set_defaults
    # self.birth_date ||= Time.now
  end
end
