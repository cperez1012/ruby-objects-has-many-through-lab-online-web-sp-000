class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    # @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    Appointment.all.collect do |appointment|
      appointment.patient
    end
  end
end
