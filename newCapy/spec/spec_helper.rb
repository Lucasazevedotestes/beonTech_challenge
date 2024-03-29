require 'capybara'
require 'capybara/rspec'
require 'rspec'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL

  Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 15
    config.app_host = 'https://securestaging.gethealthie.com'
  end

  config.expose_dsl_globally = true

  config.disable_monkey_patching!

  config.warnings = true

  config.default_formatter = 'doc' if config.files_to_run.one?

  config.profile_examples = 10

  config.order = :random

  Kernel.srand config.seed
end
