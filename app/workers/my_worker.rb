class MyWorker
  include Sidekiq::Worker

  def perform(params)
      Rails.logger.info params
  rescue StandardError => e
    Rails.logger.error "Opps! Something was worng, error in: #{e.message}"
    raise e
  end
end
