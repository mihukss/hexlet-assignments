class ExecutionTimer
    def initialize(app)
      @app = app
    end
  
    def call(env)
        start_time = Time.now.to_f
        status, headers, response = @app.call(env)
        end_time = Time.now.to_f
        duration = ((end_time - start_time) * 1000000).to_i

        new_response = [response, duration]
    
        headers['X-Time'] = duration.to_s + ' msec'
    
        [status, headers, new_response]
      end
  end