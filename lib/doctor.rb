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

  # def appointments
  #   # appointments.all.select do |appointment|
  #   #   appointment.doctor == self
  #   end
  # end

end
