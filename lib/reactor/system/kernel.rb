module Kernel
  def sleep(duration)
    EM::Synchrony.sleep duration
  end
end