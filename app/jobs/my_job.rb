class MyJob < ApplicationJob
  queue_as :default
  sidekiq_options retry: 3

  def perform
    Rails.logger.info 'Something start'
    MyService.new
  rescue StandardError => e
    Rails.logger.error "Opps! Something was worng, error in: #{e.message}"
    raise e
  end
end
