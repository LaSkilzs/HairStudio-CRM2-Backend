class CreateHairCards < ActiveRecord::Migration[5.2]
  def change
    create_table :hair_cards do |t|
      t.boolean :suffered_from_hair_loss, default: false
      t.boolean :been_diagnosed_with_alopecia, default: false
      t.boolean :take_any_medication, default: false
      t.boolean :suffer_from_psoriasis_to_the_scalp, default: false
      t.boolean :suffer_from_ezcema_to_the_scalp, default: false
      t.boolean :have_a_sensitive_scalp, default: false
      t.boolean :any_known_allergies, default: false
      t.text :which_ones, default: "unanswered"
      t.boolean :frequently_swim_or_go_to_the_gym, default: false
      t.boolean :currently_have_colour_in_your_hair, default: false
      t.text :last_time_colored, default: "unanswered"
      t.boolean :used_hair_extensions_before, default: false
      t.text :which_type_did_you_use, default: "unanswered"
      t.boolean :have_a_perm_or_relaxer, default: false
      t.text :last_time_you_had_a_relaxer, default: "unanswered"
      t.text :wash_frequency, default: "unanswered"
      t.string :hair_type, default: "regular"
      t.string :hair_is, default: "normal"
      t.string :length, default: "unknown"
      t.boolean :been_pregnant_in_the_last_6_months, default: false
      t.text :which_method, default: "unanswered"
      t.references :user, foreign_key: true		
      t.references :hair_personality, foreign_key: true
      
      t.timestamps
    end
  end
end
