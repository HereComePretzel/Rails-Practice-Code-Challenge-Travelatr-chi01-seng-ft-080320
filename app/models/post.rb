class Post < ApplicationRecord
belongs_to :blogger
belongs_to :destination

validates :title, presence: true
validates :content, numericality: {greater_than: 100}

end
