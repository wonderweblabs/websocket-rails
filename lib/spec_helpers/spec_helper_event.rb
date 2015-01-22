module WebsocketRails

  class SpecHelperEvent < Event

    attr_reader :dispatcher, :triggered

    alias :triggered? :triggered

    def initialize(event_name, data = nil, options = {})
      super
      @triggered = false
      @dispatcher =  Dispatcher.new(nil)
      @processor = MessageProcessors::EventProcessor.new
      @processor.dispatcher = @dispatcher
    end

    def trigger
      @triggered = true
    end

    def dispatch
      @processor.process_message(self)
      self
    end

    def connection
      OpenStruct.new(:id => 1)
    end

  end

end

def create_event(name, data = nil, options = {})
  WebsocketRails::SpecHelperEvent.new(name, data, options)
end
