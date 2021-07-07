class Doctor
  @@all = []
  attr_accessor :name

  def initialize (name)
    self.name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment (patient, date)
    Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    doctors_appointments = self.appointments
    doctors_appointments.map do |appt|
      appt.patient
    end
  end
end
