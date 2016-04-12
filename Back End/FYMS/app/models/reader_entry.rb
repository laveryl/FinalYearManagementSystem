class ReaderEntry < ActiveRecord::Base
    validates :Staff_ID, :name, :school, :office_location, :email, :availability, :NumberProjectsSupervised, :secondReading, :thirdReading, :presence => true
    validates :Staff_ID, :NumberProjectsSupervised, :secondReading, :thirdReading, :numericality => {:only_integer => true}
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
