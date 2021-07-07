require 'appointment'

class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = :name
    @@all << self
  end

  def self.all
    @@all
  end

def new_appointment(doctor, date)
  appointment = Appointment.new(self, doctor, date)
end

  def appointments
    Appointment.all.select do |each_appointment|
      each_appointment.patient == self
    end
  end

  def doctors
    self.appointments.collect do |each_appointment|
      each_appointment.doctor
    end
  end

end