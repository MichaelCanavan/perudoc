class CreateTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonials do |t|
      t.string "name", null: false
      t.string "body", null: false

      t.timestamps 
    end
  end
end
