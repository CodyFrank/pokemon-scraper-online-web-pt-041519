class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id

  def initialize(id: nil, name:, type:, db:)
    @id, @name, @type, @database = id, name, type, db
  end

  def self.save
    sql = <<-SQL
    INSERT INTO pokemon (name, type)
    VALUES (?, ?)
    SQL
    @db.execute(sql, self.name, self.type)
    @id = @db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
end
