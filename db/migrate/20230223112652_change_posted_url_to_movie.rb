class ChangePostedUrlToMovie < ActiveRecord::Migration[7.0]
  def change
    change_table :movies do |t|
      t.rename :posted_url, :poster_url
    end
  end
end
