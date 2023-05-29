# frozen_string_literal: true

require 'rack'

class Router
  def call(env)
    path = env['PATH_INFO']

    case path
    when '/'
      [200, {}, ['Home Page']]
    when '/about'
      [200, {}, ['About Page']]
    else 
      [404, {}, []]
    end
  end
end
