class Appointment
  @@all = []
  attr_accessor :date, :patient, :doctor

  def initialize (patient, date, doctor)
    self.patient = patient
    self.date = date
    self.doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end
end
