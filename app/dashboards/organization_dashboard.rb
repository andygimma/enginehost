require "administrate/base_dashboard"

class Donatable::Engine::OrganizationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    taggings: Field::HasMany.with_options(class_name: "::ActsAsTaggableOn::Tagging"),
    base_tags: Field::HasMany.with_options(class_name: "::ActsAsTaggableOn::Tag"),
    tag_taggings: Field::HasMany.with_options(class_name: "ActsAsTaggableOn::Tagging"),
    tags: Field::HasMany.with_options(class_name: "ActsAsTaggableOn::Tag"),
    id: Field::Number,
    name: Field::String,
    email: Field::String,
    youtube_url: Field::String,
    website: Field::String,
    twitter: Field::String,
    facebook: Field::String,
    phone: Field::String,
    city: Field::String,
    state_or_district: Field::String,
    country: Field::String,
    short_description: Field::String,
    long_description: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    slug: Field::String,
    main_image_file_name: Field::String,
    main_image_content_type: Field::String,
    main_image_file_size: Field::Number,
    main_image_updated_at: Field::DateTime,
    logo_image_file_name: Field::String,
    logo_image_content_type: Field::String,
    logo_image_file_size: Field::Number,
    logo_image_updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :taggings,
    :base_tags,
    :tag_taggings,
    :tags,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :taggings,
    :base_tags,
    :tag_taggings,
    :tags,
    :id,
    :name,
    :email,
    :youtube_url,
    :website,
    :twitter,
    :facebook,
    :phone,
    :city,
    :state_or_district,
    :country,
    :short_description,
    :long_description,
    :created_at,
    :updated_at,
    :slug,
    :main_image_file_name,
    :main_image_content_type,
    :main_image_file_size,
    :main_image_updated_at,
    :logo_image_file_name,
    :logo_image_content_type,
    :logo_image_file_size,
    :logo_image_updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :taggings,
    :base_tags,
    :tag_taggings,
    :tags,
    :name,
    :email,
    :youtube_url,
    :website,
    :twitter,
    :facebook,
    :phone,
    :city,
    :state_or_district,
    :country,
    :short_description,
    :long_description,
    :slug,
    :main_image_file_name,
    :main_image_content_type,
    :main_image_file_size,
    :main_image_updated_at,
    :logo_image_file_name,
    :logo_image_content_type,
    :logo_image_file_size,
    :logo_image_updated_at,
  ].freeze

  # Overwrite this method to customize how organizations are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(organization)
  #   "Donatable::Engine::Organization ##{organization.id}"
  # end
end
