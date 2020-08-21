class Pokemon
  
  attr_accessor :id, :name, :type, :db

  def initialize(keywords)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    sql = <<-SQL
    INSERT INTO pokemon(name, type) VALUES(?,?)
    SQL
    db.execute(sql, name, type)
    @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
  
   def self.find(id_num, db)
     sql = SELECT * FROM pokemon WHERE id=?", id_num).flatten
      Pokemon.new(id: pokemon_info[0], name: pokemon_info[1], type: pokemon_info[2], hp: pokemon_info[3], db: db)
    end
end
