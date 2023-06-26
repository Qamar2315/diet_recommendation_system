import http.server
import socketserver
import utility
import json

PORT = 8000
Handler = http.server.SimpleHTTPRequestHandler

class MyHandler(http.server.BaseHTTPRequestHandler):
    def do_OPTIONS(self):
        self.send_response(200)
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'POST')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type')
        self.end_headers()
    
    def do_GET(self):
        if self.path == '/data':
            data = {'message': 'Hello, world!'}
            # json_data = json.dumps(data).encode('utf-8')
            self.send_response(200)
            self.send_header('Content-type', 'application/json')
            # self.send_header('Content-length', len(json_data))
            self.end_headers()
            # self.wfile.write(json_data)
        else:
            super().do_GET()
    
    def do_POST(self):
        if self.path == '/generateDietPlan':
            content_length = int(self.headers['Content-Length'])
            post_data = self.rfile.read(content_length)
            data = json.loads(post_data.decode('utf-8'))
            print(data)
            self.send_response(200)
            self.send_header('Access-Control-Allow-Origin', '*')
            self.send_header('Content-type', 'application/json')
            self.end_headers()
            response = utility.generateDietPlan(data['body'])
            print(response)
        self.wfile.write(bytes(json.dumps({'message': response}), 'utf-8'))

Handler = MyHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print("Server running at port", PORT)
    httpd.serve_forever()
