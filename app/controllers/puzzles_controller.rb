class PuzzlesController < ApplicationController

  def index
    @puzzles = Puzzle.order("created_at").all
  end
  
  def show
    @puzzle = Puzzle.find(params[:id])
  end
  
  def attachments
    path = File.join(Rails.root, "public", "attachments", params[:id], 
                     params[:file] + '.' + params[:format])
    
    send_file(path)
  end
end
