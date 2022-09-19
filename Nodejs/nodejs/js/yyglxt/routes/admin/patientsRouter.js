var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  res.send('患者管理');
});

module.exports = router;
