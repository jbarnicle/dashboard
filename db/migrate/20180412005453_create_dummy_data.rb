class CreateDummyData < ActiveRecord::Migration
  def change
    create_table :dummy_data do |t|
      t.string      :student_number
      t.integer     :school_year
      t.string      :school
      t.string      :grade
      t.string      :gender
      t.string      :race
      t.string      :frl
      t.decimal     :attendance, precision: 4, scale: 3, :default => 0.00
      t.integer     :reading
      t.integer     :math
    end
  end
end
