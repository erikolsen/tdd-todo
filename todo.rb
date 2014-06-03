class Task
  def initialize(title, description, status)
    @title = title
    @description = description
    @status = status
  end
end

puts Task.attributes
