class EmailsController < ApplicationController
    def new
        @email = Email.new
    end

    def list
        @emails = Email.all
    end

    def create
        @email = Email.new(email_params)
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_email
      @email = Email.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def email_params
      params.require(:email).permit(:email)
    end
end
