class AddColumnStateToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :publications, :state, :string, default: "in_draft"
  end
end
