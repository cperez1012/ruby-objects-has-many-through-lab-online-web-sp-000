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
    Doctor.new(date, patient, self)
  end
end
