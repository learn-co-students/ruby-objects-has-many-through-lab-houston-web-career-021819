require 'appointment'

class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |each_appointment|
      each_appointment.doctor == self
    end
  end

  def patients
    self.appointments.collect do |each_appointment|
      each_appointment.patient
    end
  end

  def self.all
    @@all
  end

end
