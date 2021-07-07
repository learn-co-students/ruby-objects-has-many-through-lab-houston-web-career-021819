require 'pry'
class Patient
  @@all = []
  attr_accessor :name

  def initialize (name)
    self.name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment (date, doctor)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    my_appointments = self.appointments
    my_appointments.map do |appointment|
      appointment.date
    end
  end
end
