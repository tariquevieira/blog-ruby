class FixPublishAtNameColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :publsh_at, :publish_at
  end
end
