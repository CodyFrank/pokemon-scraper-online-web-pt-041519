require'pry'
class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id

  def initialize(id: nil, name:, type:, db:)
    @id, @name, @type, @database = id, name, type, db
  end

  def self.save(name, type, db)
    sql = <<-SQL
    INSERT INTO pokemon (name, type)
    VALUES (?, ?)
    SQL
    db.execute(sql, name, type)
    @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end

  def self.find (id, db)
    sql = <<-SQL
    SELECT * FROM pokemon WHERE id = ?
    SQL
     attri = db.execute(sql, id)[0]
     pokemon = Pokemon.new(attri)
     binding.pry
  end
end
