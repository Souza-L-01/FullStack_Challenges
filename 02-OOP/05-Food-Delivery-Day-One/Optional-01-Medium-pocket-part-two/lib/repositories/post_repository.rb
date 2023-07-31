require "csv"
require_relative "../models/post"

class PostRepository
  def initialize(csv_file, author_repo)
    @posts = []
    @csv_file = csv_file
    @author_repo = author_repo
    @next_id = 1
    load_csv
  end
end
