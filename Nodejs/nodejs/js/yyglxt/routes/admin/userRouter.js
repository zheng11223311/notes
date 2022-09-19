var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  res.send('用户管理模块');
});

module.exports = router;