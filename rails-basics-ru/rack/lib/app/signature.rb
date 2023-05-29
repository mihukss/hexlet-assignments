# frozen_string_literal: true

require 'digest'

class Signature
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    body = response.join('')

    new_hash = Digest::SHA256.hexdigest(body)

    new_response = [body + "\n", new_hash]

    [status, headers, new_response]
  end
end
