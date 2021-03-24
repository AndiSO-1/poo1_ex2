class Individual < Client
  validates :firstname, :lastname, presence: true, length: {minimum: 2}

  def to_s
    "#{firstname} #{lastname}"
  end
end
