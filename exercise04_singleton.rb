class Sky

  private_class_method :new

  @@instance_count = 0
  @@instance = nil

  def self.get_instance
    if @@instance.nil?
      @@instance = self.new
    end
    return @@instance
  end

  def initialize
    @@instance_count += 1
    @id = @@instance_count
  end

  def to_s
    "I am sky object #{@id} of #{@@instance_count} total instances."
  end
end


sky = Sky.get_instance
puts sky

another_sky = Sky.get_instance
puts another_sky

blood_red_sky = Sky.get_instance
puts blood_red_sky

pink_sky = Sky.get_instance
puts pink_sky
