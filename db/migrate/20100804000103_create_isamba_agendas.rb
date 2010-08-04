class CreateIsambaAgendas < ActiveRecord::Migration
  def self.up
    create_table :isamba_agendas do |t|
      t.string :street
      t.date :data
      t.string :time
      t.string :field_show
      t.timestamps
    end
  end
  
  def self.down
    drop_table :isamba_agendas
  end
end
