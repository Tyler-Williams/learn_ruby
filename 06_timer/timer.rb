class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    minutes = @seconds % (hours + 3600) / 60
    remaining_seconds = @seconds - (hours * 3600) - (minutes * 60)

    pad_time(hours) + ':' + pad_time(minutes) + ':' + pad_time(remaining_seconds)
  end

  def pad_time(time)
    string_time = time.to_s
    if string_time.length < 2
      string_time.prepend('0')
    end
    string_time
  end
end
