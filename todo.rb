class Task
  attr_reader :title, :description, :status
  # attr_accessor :created_at
  def initialize(title, description, status)
    @title = title
    @description = description
    @status = status
    # @created_at = Time.now
  end

end

