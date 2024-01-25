require 'spec_helper'
require_relative '../pages/SignInPage'
require_relative '../pages/LoginPage'

RSpec.describe 'SignIn', type: :feature do
  let(:signInPage) { SignInPage.new }
  
  it 'signin with success', :test1 do
    email = 'daVinci25@healthie.com'
    signInPage.navigateToSignInPage
    signInPage.signInAsProvider
    expect(page).to have_content 'Provider Sign Up'
    signInPage.doSignIn('Leonardo', 'daVinci', email, '971 052 3030', 'daVinci123',
                        'Healthcare Clinic')
    expect(page).to have_content 'Leonardo'
  end
end
