from flask import Flask, jsonify, request, send_from_directory ,send_file
from flask_cors import CORS
import datetime, pytz
app = Flask(__name__)
CORS(app)
tz = pytz.timezone('Asia/Bangkok')
def now():
    now1 = datetime.datetime.now(tz)
    month_name = 'x มกราคม กุมภาพันธ์ มีนาคม เมษายน พฤษภาคม มิถุนายน กรกฎาคม สิงหาคม กันยายน ตุลาคม พฤศจิกายน ธันวาคม'.split()[now1.month]
    thai_year = now1.year + 543
    time_str = now1.strftime('%H')
    return int(13
               )

@app.route('/wallpaper' , methods=['GET'])
def GetWallPaper():
    if now() >= 6 and now() <= 11:
        filename = 'static/morning.jpg'
        return send_file(filename, mimetype='image/png')
    elif now()>=12 and now() <= 18 :
        filename = 'static/noon.jpg'
        return send_file(filename, mimetype='image/png')
    else:
        filename = 'static/night.jpg'
        return send_file(filename, mimetype='image/png')

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=1002, threaded=True,  debug=True,
        ssl_context=("/home/ubuntu/cert.pem", "/home/ubuntu/key.pem")
        )
