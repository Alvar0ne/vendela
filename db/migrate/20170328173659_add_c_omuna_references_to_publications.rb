class AddCOmunaReferencesToPublications < ActiveRecord::Migration[5.0]
  def change
    add_reference :publications, :comuna, foreign_key: true
  end
end
