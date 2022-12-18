class WelcomeWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    sleep(30)
    p "Welcome to my worker"
  end

end
