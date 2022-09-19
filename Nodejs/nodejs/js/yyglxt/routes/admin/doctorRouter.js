var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  res.send('医生管理模块');
});

module.exports = router;