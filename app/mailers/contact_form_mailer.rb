class ContactFormMailer < ActionMailer::Base
  default from: "karin@vowsevents.com"

  def contact_form(form_info)
  	@form_info = form_info
  	email1 = "avery@vowsevents.com"
		email2 = "karin@vowsevents.com"
		email3 = "karin@vowsevents.com"

		recipients = email1, email2
		subject = "testing rails mailer"

		mail(:to => recipients.join(','), :from => email3, :subject => subject)
  end
end
