require "rails_helper"

RSpec.describe InvitationMailer, type: :mailer do
  it 'generates a unique token' do
    invitation = Invitation.create(email: 'test@example.com')
    expect(invitation.token).to be_present
  end
end
