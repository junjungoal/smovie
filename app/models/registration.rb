class Registration
  include ActiveModel::Model

  attr_accessor(
    :first_name,
    :last_name,
    :email,
    :password
  )

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, email: true
  validates :password, presence: true, length: {minimum: 8}

  def register
    if valid?
      User.create(first_name: first_name, last_name: last_namem, email: email, password: password)
    end
  end
end

