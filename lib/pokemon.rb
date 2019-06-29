class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id
  def initialize(id: nil, name:, type:, db:)
    @id, @name, @type, @database = id, name, type, db
  end
end
