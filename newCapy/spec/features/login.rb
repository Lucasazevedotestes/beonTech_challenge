require 'spec_helper'
require_relative '../pages/loginPage'

RSpec.describe 'Login', type: :feature do
  let(:loginPage) { LoginPage.new }

  it 'login with success', :test2 do
    loginPage.navigateToLoginPage
    expect(page).to have_content 'Portal Login'
    loginPage.doLogin('daVinci@healthie.com', 'daVinci123')
    expect(page).to have_content 'Leonardo'
  end
end
