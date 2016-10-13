class ClientPaymentsController < ApplicationController
protect_from_forgery with: :null_session
def success
	client_data =  Welcome.find_by_id(params[:txnid])
	 ContactUs.payment_confirmation_mail_to_client(client_data, params).deliver_now
	 ContactUs.payment_confirmation_mail(client_data, params).deliver_now
end

def failure
	
end

end
