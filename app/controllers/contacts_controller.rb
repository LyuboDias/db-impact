class ContactsController < ApplicationController
  def index
    @contacts = Contact.geocoded

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @contacts.geocoded.map do |flat|
      {
        lat: contact.latitude,
        lng: contact.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { contact: contact }),
        image_url: helpers.asset_url('logo-real.png')
      }
    end
  end
end
