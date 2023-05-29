# frozen_string_literal: true

class AdminPolicy
  def initialize(app)
    @app = app
  end

  def call(env)
    if env['PATH_INFO'].start_with?('/admin')
      return [403, {}, []]
    end

    @app.call(env)
  end
end
