class Pokemon::
  
  attr_accessor :id, :name, :type, :db

  def initialize(keywords)
    keywords.each {|key, value| self.send(("#{key}="), value)}
  end
    # @id = id
    # @name = name
    # @type = type
    # @db = db
  
  def self.save(name, type, db)
    sql = <<-SQL
    INSERT INTO pokemons(name, type, db) VALUES(?,?)
    SQL
    DB[:conn].execute(sql, self.name, )
    @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
end
