require "sqlite3"

dir = File.dirname(__FILE__)
db = SQLite3::Database.new(File.join(dir, "db/posts.db"))

db.execute('DROP TABLE IF EXISTS `posts`;')
create_statement = "
CREATE TABLE `posts` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `title` TEXT,
  `url` TEXT,
  `votes`  INTEGER
);"
db.execute(create_statement)

cp /path/to/dir1/*.txt /path/to/dir2/*.txt /path/to/dir3/*.txt /path/to/destination/
