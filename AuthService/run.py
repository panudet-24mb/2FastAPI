from app import app
app.env = "development"
app.run(host='0.0.0.0', port=5001, threaded=True,  debug=False,
        ssl_context=("/home/ubuntu/cert.pem", "/home/ubuntu/key.pem")
        )
