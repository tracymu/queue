class AddReviewAndStars < ActiveRecord::Migration
  def change
  	    add_column :visits, :review, :text
        add_column :visits, :rating, :integer

  end
end
