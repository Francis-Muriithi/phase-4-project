class Adventure < ApplicationRecord
    has_many :birds

    before_create :slugify
    def slugify
        self.slug = title.parameterize
    end
end
