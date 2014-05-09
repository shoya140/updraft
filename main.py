import tornado.web
import tornado.httpserver
import tornado.ioloop
import os.path
import socket
from tornado.options import define, options

define("port", default=8000, help="run on the given port", type=int)
define("debug", default=0, help="1:watch in real time (debug mode)", type=bool)

class Application(tornado.web.Application):
    def __init__(self):
        handlers = [
                (r"/", IndexHandler),
                ]
        settings = dict(
                template_path=os.path.join(os.path.dirname(__file__), "templates"),
                static_path=os.path.join(os.path.dirname(__file__), "assets"),
                debug=options.debug,
                )
        tornado.web.Application.__init__(self, handlers, **settings)

class IndexHandler(tornado.web.RequestHandler):
    def get(self):
        self.render('index.html', text="Hello World")

if __name__ == "__main__":
    tornado.options.parse_command_line()
    print ">> Application is running. Please access to http://" + socket.gethostbyname(socket.gethostname()) + ":" + str(options.port)
    http_server = tornado.httpserver.HTTPServer(Application())
    http_server.listen(options.port)
    tornado.ioloop.IOLoop.instance().start()
