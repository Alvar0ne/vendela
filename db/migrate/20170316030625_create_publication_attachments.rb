class CreatePublicationAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :publication_attachments do |t|
      t.integer :publication_id
      t.string :avatar

      t.timestamps
    end
  end
end
