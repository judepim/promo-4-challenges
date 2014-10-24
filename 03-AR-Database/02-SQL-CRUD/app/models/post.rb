# You can use a global variable, DB, built as is:
# DB = SQLite3::Database.new(file)

class Post
  # TODO: implement some reader and/or writers
  attr_reader :id, :date
  attr_accessor :votes, :title, :url

  def initialize(options = {})
    # TODO: initialize instance variables from the hash options.
    @id = options[:id]
    @title = options[:title]
    @date = options[:date]
    @url = options[:url]
    @votes = options[:votes]

    if options[:date] == nil
      @date = Time.now
    end

    if options[:votes] == nil
      @votes = 0
    end
  end

  def upvote
    @votes = @votes +1
  end

  def save
    DB.execute("INSERT INTO posts(title, url, date, votes)
      VALUES('#{@title}','#{@url}','#{@date}','#{votes}');")
    @id = DB.last_insert_row_id
      if @id == nil
        DB.excute("INSERT INTO post (title, votes, url)")
      else
        DB.execute("UPDATE post SET title ='#{title}', url='#{url}', date = '#{date}', vote = '#{vote}'")
  end

  def destroy(post)
    DB.execute("DELETE FROM posts WHERE  id = #{@id}")
  end

  def self.find (id_numb)
    columns = DB.execute("SELECT * FROM posts WHERE id = #{id_numb};").first
    if columns == nil
     post = nil
      else
    post = Post.new({ id: columns[0], title: columns[1], url: columns[2], date: Time.at(columns[3]), votes: columns[4] })
    end
  end

  def self.all
    rows = DB.execute("SELECT * FROM posts ;")
    posts = []
    rows.each do |columns|
    posts << Post.new({ id: columns[0], title: columns[1], url: columns[2], date: Time.at(columns[3]), votes: columns[4] })
   end
   return posts
  end

end