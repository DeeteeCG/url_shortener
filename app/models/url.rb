class Url < ApplicationRecord
  validates :long_url, presence: true
  validates :long_url, uniqueness: {case_sensitive: false, message: "was shortened before"}

  validates :long_url, format: {with: (URI::regexp(['http', 'https'])), message: "format is not good"}

  def shorten
    range = [*'0'..'9',*'A'..'Z',*'a'..'z']
    self.short_url = Array.new(10){range.sample}.join
    self.save
  end
end
