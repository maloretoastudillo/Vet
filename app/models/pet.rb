class Pet < ApplicationRecord
    belongs_to :client
    has_many :pethistories, dependent: :destroy

    def visits
        self.pethistories.size
    end

    def weight_max
        self.pethistories.maximum(:weight)
    end

    def height_max
        self.pethistories.maximum(:height)
    end

    def average_weight
        self.pethistories.average(:weight).round(1)
    end

    def average_height
        self.pethistories.average(:height).round(1)
    end
end
