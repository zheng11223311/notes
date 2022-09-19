var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('download', { title: '下载图片' });
});


router.get('/dl', function(req, res, next) {
  //以根路径:D:\\下
  res.download('./public/images/332390641.jpg')
});


module.exports = router;
