class Pokemon
  attr_accessor :name, :type, :database
  attr_reader :id
  def initialize(id: = nil, name:, type:, database:)
    @id, @name, @type, @database = :id, :name, :type, :database
  end
end
