class SignInPage
  include Capybara::DSL

  # Useful_Locators
  FIRST_NAME_INSERT = 'first_name'
  LAST_NAME_INSERT = 'last_name'
  EMAIL_INSERT = 'email'
  PHONE_NUMBER_INSERT = 'phone_number'
  PASSWORD_INSERT = 'password'
  SIGN_IN_SUBMIT_BUTTON = 'submit-field__button'
  NAVIGATE_TO_SIGN_UP_BUTTON = 'Sign Up'

  # Userful_Methods
  def navigateToSignInPage
    visit '/'
  end

  def doSignIn(firstName, lastName, email, phone, password, option)
    fill_in FIRST_NAME_INSERT, with: firstName
    fill_in LAST_NAME_INSERT, with: lastName
    fill_in EMAIL_INSERT, with: email
    fill_in PHONE_NUMBER_INSERT, with: phone
    fill_in PASSWORD_INSERT, with: password
    selectDropDown(option)
    click_button SIGN_IN_SUBMIT_BUTTON
  end

  def selectDropDown(option)
    find('.Select-placeholder').click
    find('#exploring_healthie_reason').send_keys(option, :enter)
  end

  def signInAsProvider
    click_link NAVIGATE_TO_SIGN_UP_BUTTON
    within('#provider-signup-option') do
      click_button 'Start Now'
    end
  end
end
