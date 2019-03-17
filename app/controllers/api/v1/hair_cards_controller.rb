class Api::V1::HairCardsController < ApplicationController
  def index
    @hair_cards = HairCard.all
    render json: @hair_cards
  end

  def create 
    hair_card = HairCard.create(hair_card_params)
    if hair_card.save
      render json: hair_card
    else
      render json: {errors: hair_card.errors.full_messages}
    end
  end

  def show
    hair_card = HairCard.find(params[:id])
    render json: hair_card
  end

  def update
    hair_card = HairCard.find(params[:id])
    if hair_card.update(hair_card_params)
    render json: hair_card
    end
  end

  def destroy
    hair_card = HairCard.find(params[:id])
    hair_card.destroy
    render json: 204
  end

  private
  def hair_card_params
    params.require(:hair_card).permit( :suffered_from_hair_loss, :been_diagnosed_with_alopecia, :take_any_medication, :suffer_from_psoriasis_to_the_scalp, :suffer_from_ezcema_to_the_scalp,:have_a_sensitive_scalp, :any_known_allergies, :which_ones, :frequently_swim_or_go_to_the_gym,:currently_have_colour_in_your_hair, :last_time_colored,:used_hair_extensions_before, :which_type_did_you_use, :have_a_perm_or_relaxer,:last_time_you_had_a_relaxer, :wash_frequency, :hair_type, :hair_is, :length, :been_pregnant_in_the_last_6_months,:which_method, :user_id, :stylist_id, :hair_personaility_id)
  end
end
