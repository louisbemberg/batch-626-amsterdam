class Task # CRUD
  attr_reader :title, :id
  attr_accessor :done

  def initialize(attributes)
    @id = attributes[:id]
    @title = attributes[:title]
    @description = attributes[:description]
    @done = attributes[:done] || false
  end

  # READ - Find one specific Task
  def self.find(id)
    query = "SELECT * FROM tasks WHERE id = ?"
    p data_hash = DB.execute(query, id).first

    if data_hash != nil
      new_task(data_hash)
    end
  end

  # READ - Give me all the tasks from the DB
  def self.all
    query = "SELECT * FROM tasks"
    array = DB.execute(query)
    array.map do |data_hash|
      new_task(data_hash)
    end
  end

  # CREATE & UPDATE
  def save
    if @id # SAVE
      # UPDATE
      DB.execute("UPDATE tasks SET title = ?, description = ?, done = ? WHERE id = ?", @title, @description, @done ? 1 : 0, @id)
    else # SAVE AS
      # INSERT
      DB.execute("INSERT INTO tasks (title, description, done) VALUES (?, ?, ?)", @title, @description, @done ? 1 : 0)
      @id = DB.last_insert_row_id # <==
    end
  end

  def destroy
    DB.execute("DELETE FROM tasks WHERE id = ?", @id)
  end

  def self.destroy_of_choice(id_to_destroy)
    DB.execute("DELETE FROM tasks WHERE id = ?", id_to_destroy)
  end

  private

  def convert_boolean_to_number(boolean)
    if boolean == true
      boolean = 1
    else
      boolean = 0
    end
    return boolean
  end
  def self.new_task(data_hash)
    Task.new(
      id: data_hash['id'],
      title: data_hash['title'],
      description: data_hash['description'],
      done: data_hash['done'] == 1
    )
  end
end
