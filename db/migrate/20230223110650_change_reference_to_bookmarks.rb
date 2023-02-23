class ChangeReferenceToBookmarks < ActiveRecord::Migration[7.0]

  def change
    remove_reference :bookmarks, :bookmark, index: true, foreign_key: true
    add_reference :bookmarks, :list, index: true, foreign_key: true
  end
end
