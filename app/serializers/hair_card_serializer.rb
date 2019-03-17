class HairCardSerializer < ActiveModel::Serializer
  attributes :id, :suffered_from_hair_loss, :been_diagnosed_with_alopecia, :take_any_medication, :suffer_from_psoriasis_to_the_scalp, :suffer_from_ezcema_to_the_scalp,:have_a_sensitive_scalp, :any_known_allergies, :which_ones, :frequently_swim_or_go_to_the_gym,:currently_have_colour_in_your_hair, :last_time_colored,:used_hair_extensions_before, :which_type_did_you_use, :have_a_perm_or_relaxer,:last_time_you_had_a_relaxer, :wash_frequency, :hair_type, :hair_is, :length, :been_pregnant_in_the_last_6_months,:which_method

  
  belongs_to :hair_personality
end
