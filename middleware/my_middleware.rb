module MyMiddleware
  class Hello
    
    def initialize(app)
      @app = app
    end
    
    def call(env)
      if env['PATH_INFO'] == '/'
        #forward the request
        @app.call(env)
      else
        [404, {"Content-Type" => "text/plain"}, ["Not OK!"]]
      end
    end
  end
end