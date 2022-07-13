class Pet < ApplicationRecord
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
        self.pethistories.average(:weight)
    end

    def average_height
        self.pethistories.average(:height)
    end
end
