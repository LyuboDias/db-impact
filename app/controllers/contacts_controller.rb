class ContactsController < ApplicationController
  def index
    @contacts = Contact.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @contacts.geocoded.map do |flat|
      {
        lat: contact.latitude,
        lng: contact.longitude
      }
    end
  end
end
