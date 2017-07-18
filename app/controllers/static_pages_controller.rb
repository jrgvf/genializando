class StaticPagesController < ApplicationController
  def home
  end

  def contact_message
    respond_to do |format|
      format.json do
        if contact_message_params.values_at(:name, :email).any?(&:blank?)
          render json: "É necessário preencher nome e email.", status: :unprocessable_entity
        else

        end
      end
    end
  end

  private

    def contact_message_params
      params.permit(:name, :email, :childrens, :fone, :message)
    end
end
