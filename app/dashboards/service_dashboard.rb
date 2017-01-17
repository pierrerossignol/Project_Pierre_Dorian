require "administrate/base_dashboard"

class ServiceDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    service_type: Field::BelongsTo,
    id: Field::Number,
    user: Field::BelongsTo,
    participants_name: Field::String,
    participants_number: Field::Number,
    place: Field::String,
    name: Field::String,
    time_spent: Field::Number,
    hour_beginning_service: Field::Number,
    description: Field::Text,
    confirmation: Field::Boolean,
    event_at: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    date_service: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :service_type,
    :user,
    :name,
    :confirmation,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :user,
    :service_type,
    :confirmation,
    :participants_name,
    :participants_number,
    :place,
    :name,
    :hour_beginning_service,
    :time_spent,
    :description,
    :event_at,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :service_type,
    :confirmation,
    :participants_name,
    :participants_number,
    :name,
    :time_spent,
    :description,
    :date_service,
    :hour_beginning_service,
  ].freeze

  # Overwrite this method to customize how services are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(service)
  #   "Service ##{service.id}"
  # end
end
