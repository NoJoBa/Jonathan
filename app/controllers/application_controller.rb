class ApplicationController < ActionController::Base
  before_action :set_contacts
  protect_from_forgery with: :exception

  protected

  def set_contacts
    @contact = Contact.new
  end

end
