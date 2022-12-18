class HelloWordsController < ApplicationController
  def index

  end

  def create
    WelcomeWorker.perform_async
  end

  def delete_queue
    queue = Sidekiq::Queue.new
    queue.each do |job|
      job.delete
    end
  end
end
