import http from 'k6/http';

export default function () {
  var url = 'https://www.2fast.online/login';
  var payload = JSON.stringify({
    username: "test2fastonline01",
    password : "1234"
  });

  var params = {
    headers: {
      'Content-Type': 'application/json',
    },
  };

  http.post(url, payload, params);
}