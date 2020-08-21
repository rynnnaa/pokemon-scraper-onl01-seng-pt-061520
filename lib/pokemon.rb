class Pokemon
  
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
    INSERT INTO pokemon(name, type) VALUES(?,?)
    SQL
    db.execute(sql, name, type)
    @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
end
