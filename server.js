'use strict';

const express = require('express');
const bodyParser = require('body-parser');
const OS = require('os');

// Constants
const PORT = 8088;
const HOST = '0.0.0.0';
const ENV = 'UNITY-XCITE';

// Initialize Express
const app = express();

// Middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static('public'));

// Variables
let userGoal = 'We Know Technology!';

// Routes
app.get('/', (req, res) => {
  res.statusCode = 200;
  const msg = userGoal;
  res.send(getPage(msg));
});

app.post('/store-goal', (req, res) => {
  const enteredGoal = req.body.goal;
  console.log(enteredGoal);
  userGoal = enteredGoal;
  res.redirect('/');
});

app.get('/test', (req, res) => {
  res.statusCode = 200;
  const msg = 'Hello from /test Node!';
  res.send(getPage(msg));
});

// Start the server
app.listen(PORT, HOST, () => {
  console.log(`Running on http://${HOST}:${PORT}`);
});

// Function to generate HTML page
function getPage(message) {
  return `
    <!DOCTYPE html>
    <html>
    <style>
      body, html {
        height: 100%;
        margin: 0;
      }
      .bgimg {
        background-image: url('https://www.w3schools.com/w3images/lights.jpg');
        height: 100%;
        background-position: center;
        background-size: cover;
        position: relative;
        color: white;
        font-family: "Courier New", Courier, monospace;
        font-size: 25px;
      }
      .topleft {
        position: absolute;
        top: 0;
        left: 16px;
      }
      .bottomleft {
        position: absolute;
        bottom: 0;
        left: 16px;
      }
      .middle {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
      }
      hr {
        margin: auto;
        width: 40%;
      }
    </style>
    <body>
      <div class="bgimg">
        <div class="topleft">
          <p>ENVIRONMENT: ${ENV}</p>
        </div>
        <div class="middle">
          <h1>Host/container name</h1>
          <hr>
          <p>${OS.hostname()}</p>
        </div>
        <div class="bottomleft">
          <p>${message}</p>
        </div>
      </div>
    </body>
    </html>
  `;
}
