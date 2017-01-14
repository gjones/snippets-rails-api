class CreateSnippets < ActiveRecord::Migration[5.0]
  def change
    create_table :snippets do |t|
      t.string :title
      t.string :codeblock
      t.string :language

      t.timestamps
    end
  end
end
