class UpcaseMiddleware

  def initialize(app)
    @app = app
  end

  def call(env)
    status,headers,body = @app.call(env)
    body.each {|h| h.gsub!(/ruby/i, "RUBY")}
    [status, headers, body]
  end
end