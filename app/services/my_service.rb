class MyService
  def perform
    20.times do
      MyWorker.perform_async("Hello Worker")
    end
  end
end
