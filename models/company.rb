class Company < Client
  validates :name, presence: true, length: {minimum: 2}

  def to_s
    "#{name}"
  end
end
