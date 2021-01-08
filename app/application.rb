class Application

    def call( env )
        response = Rack::Response.new
        response.write Time.now.hour < 13 ? "<h1>Good Morning!</h1>" : "<h1>Good Afternoon!</h1>"
        response.finish
    end

end