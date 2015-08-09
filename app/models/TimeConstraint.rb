class TimeConstraint
  def matches?(request)
    current = Time.now
    2 <= current.hour && current.hour < 4
  end
end

