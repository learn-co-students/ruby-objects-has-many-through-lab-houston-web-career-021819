class Doctor
    attr_accessor :name
    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(current_patient, date)
        new_apt = Appointment.new(date, self, current_patient)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        self.appointments.map {|appointment| appointment.patient}
    end


end
    