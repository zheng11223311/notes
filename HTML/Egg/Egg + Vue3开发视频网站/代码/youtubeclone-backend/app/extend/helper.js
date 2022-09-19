const crypto = require('crypto');
const _ = require('lodash');

exports.md5 = str => {
  // createHash 加密方式
  // update 需要加密的文字
  //  digest 十进制
  return crypto.createHash('md5').update(str).digest('hex');
};

exports._ = _;
