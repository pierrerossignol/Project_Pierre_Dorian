require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    first_name: Field::String,
    last_name: Field::String,
    adress: Field::String,
    age: Field::Number,
    job: Field::String,
    skills: Field::String,
    rating: Field::String,
    email: Field::String,
    role: Field::Boolean,
    remember_created_at: Field::DateTime,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    confirmation_sent_at: Field::DateTime,
    unconfirmed_email: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :email,
    :role,
    :last_sign_in_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :first_name,
    :last_name,
    :adress,
    :age,
    :job,
    :skills,
    :rating,
    :email,
    :role,
    :remember_created_at,
    :current_sign_in_at,
    :last_sign_in_at,
    :confirmation_sent_at,
    :unconfirmed_email,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :first_name,
    :last_name,
    :adress,
    :age,
    :job,
    :skills,
    :rating,
    :email,
    :role,
    :remember_created_at,
    :current_sign_in_at,
    :last_sign_in_at,
    :confirmation_sent_at,
    :unconfirmed_email,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
