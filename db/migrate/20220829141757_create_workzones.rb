class CreateWorkzones < ActiveRecord::Migration[6.1]
  def change
    create_table :workzones do |t|
      t.string :name
    end
  end
end
