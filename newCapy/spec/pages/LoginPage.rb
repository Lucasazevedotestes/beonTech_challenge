class LoginPage
  include Capybara::DSL

  # Useful_Locators
  EMAIL_INSERT = 'email'
  PASSWORD_INSERT = 'password'
  LOGIN_SUBMIT_BUTTON = 'submit-field__button'

  # Userful_Methods
  def navigateToLoginPage
    visit '/'
  end

  def doLogin(email, password)
    fill_in EMAIL_INSERT, with: email
    fill_in PASSWORD_INSERT, with: password
    click_button LOGIN_SUBMIT_BUTTON
  end
end
