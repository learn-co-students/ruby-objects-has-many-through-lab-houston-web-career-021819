class Appointment
    attr_accessor :doctor, :patient
    @@all = []

    def initialize(date, doctor, patient)
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    def self.all
        @@all
    end
end