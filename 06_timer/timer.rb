class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours, seconds = @seconds.divmod(3600)
    minutes, seconds = seconds.divmod(60)
    result = [hours, minutes, seconds].map { |el| padded(el) }
    result.join(':')
  end

  def padded(sec)
    sec.to_s.rjust(2, '0')
  end
end
