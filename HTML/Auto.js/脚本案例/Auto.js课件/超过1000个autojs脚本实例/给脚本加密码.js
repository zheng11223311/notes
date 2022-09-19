
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";


/*
CryptoJS v3.0.2
code.google.com/p/crypto-js
(c) 2009-2012 by Jeff Mott. All rights reserved.
code.google.com/p/crypto-js/wiki/License
*/
var CryptoJS = CryptoJS || function(p, h) {
  var i = {},
    l = i.lib = {},
    r = l.Base = function() {
      function a() {}
      return {
        extend: function(e) {
          a.prototype = this;
          var c = new a;
          e && c.mixIn(e);
          c.$super = this;
          return c
        },
        create: function() {
          var a = this.extend();
          a.init.apply(a, arguments);
          return a
        },
        init: function() {},
        mixIn: function(a) {
          for (var c in a) a.hasOwnProperty(c) && (this[c] = a[c]);
          a.hasOwnProperty("toString") && (this.toString = a.toString)
        },
        clone: function() {
          return this.$super.extend(this)
        }
      }
    }(),
    o = l.WordArray = r.extend({
      init: function(a, e) {
        a =
          this.words = a || [];
        this.sigBytes = e != h ? e : 4 * a.length
      },
      toString: function(a) {
        return (a || s).stringify(this)
      },
      concat: function(a) {
        var e = this.words,
          c = a.words,
          b = this.sigBytes,
          a = a.sigBytes;
        this.clamp();
        if (b % 4)
          for (var d = 0; d < a; d++) e[b + d >>> 2] |= (c[d >>> 2] >>> 24 - 8 * (d % 4) & 255) << 24 - 8 * ((b + d) % 4);
        else if (65535 < c.length)
          for (d = 0; d < a; d += 4) e[b + d >>> 2] = c[d >>> 2];
        else e.push.apply(e, c);
        this.sigBytes += a;
        return this
      },
      clamp: function() {
        var a = this.words,
          e = this.sigBytes;
        a[e >>> 2] &= 4294967295 << 32 - 8 * (e % 4);
        a.length = p.ceil(e / 4)
      },
      clone: function() {
        var a =
          r.clone.call(this);
        a.words = this.words.slice(0);
        return a
      },
      random: function(a) {
        for (var e = [], c = 0; c < a; c += 4) e.push(4294967296 * p.random() | 0);
        return o.create(e, a)
      }
    }),
    m = i.enc = {},
    s = m.Hex = {
      stringify: function(a) {
        for (var e = a.words, a = a.sigBytes, c = [], b = 0; b < a; b++) {
          var d = e[b >>> 2] >>> 24 - 8 * (b % 4) & 255;
          c.push((d >>> 4).toString(16));
          c.push((d & 15).toString(16))
        }
        return c.join("")
      },
      parse: function(a) {
        for (var e = a.length, c = [], b = 0; b < e; b += 2) c[b >>> 3] |= parseInt(a.substr(b, 2), 16) << 24 - 4 * (b % 8);
        return o.create(c, e / 2)
      }
    },
    n = m.Latin1 = {
      stringify: function(a) {
        for (var e =
            a.words, a = a.sigBytes, c = [], b = 0; b < a; b++) c.push(String.fromCharCode(e[b >>> 2] >>> 24 - 8 * (b % 4) & 255));
        return c.join("")
      },
      parse: function(a) {
        for (var e = a.length, c = [], b = 0; b < e; b++) c[b >>> 2] |= (a.charCodeAt(b) & 255) << 24 - 8 * (b % 4);
        return o.create(c, e)
      }
    },
    k = m.Utf8 = {
      stringify: function(a) {
        try {
          return decodeURIComponent(escape(n.stringify(a)))
        } catch (e) {
          throw Error("Malformed UTF-8 data");
        }
      },
      parse: function(a) {
        return n.parse(unescape(encodeURIComponent(a)))
      }
    },
    f = l.BufferedBlockAlgorithm = r.extend({
      reset: function() {
        this._data = o.create();
        this._nDataBytes = 0
      },
      _append: function(a) {
        "string" == typeof a && (a = k.parse(a));
        this._data.concat(a);
        this._nDataBytes += a.sigBytes
      },
      _process: function(a) {
        var e = this._data,
          c = e.words,
          b = e.sigBytes,
          d = this.blockSize,
          q = b / (4 * d),
          q = a ? p.ceil(q) : p.max((q | 0) - this._minBufferSize, 0),
          a = q * d,
          b = p.min(4 * a, b);
        if (a) {
          for (var j = 0; j < a; j += d) this._doProcessBlock(c, j);
          j = c.splice(0, a);
          e.sigBytes -= b
        }
        return o.create(j, b)
      },
      clone: function() {
        var a = r.clone.call(this);
        a._data = this._data.clone();
        return a
      },
      _minBufferSize: 0
    });
  l.Hasher = f.extend({
    init: function() {
      this.reset()
    },
    reset: function() {
      f.reset.call(this);
      this._doReset()
    },
    update: function(a) {
      this._append(a);
      this._process();
      return this
    },
    finalize: function(a) {
      a && this._append(a);
      this._doFinalize();
      return this._hash
    },
    clone: function() {
      var a = f.clone.call(this);
      a._hash = this._hash.clone();
      return a
    },
    blockSize: 16,
    _createHelper: function(a) {
      return function(e, c) {
        return a.create(c).finalize(e)
      }
    },
    _createHmacHelper: function(a) {
      return function(e, c) {
        return g.HMAC.create(a, c).finalize(e)
      }
    }
  });
  var g = i.algo = {};
  return i
}(Math);
(function() {
  var p = CryptoJS,
    h = p.lib.WordArray;
  p.enc.Base64 = {
    stringify: function(i) {
      var l = i.words,
        h = i.sigBytes,
        o = this._map;
      i.clamp();
      for (var i = [], m = 0; m < h; m += 3)
        for (var s = (l[m >>> 2] >>> 24 - 8 * (m % 4) & 255) << 16 | (l[m + 1 >>> 2] >>> 24 - 8 * ((m + 1) % 4) & 255) << 8 | l[m + 2 >>> 2] >>> 24 - 8 * ((m + 2) % 4) & 255, n = 0; 4 > n && m + 0.75 * n < h; n++) i.push(o.charAt(s >>> 6 * (3 - n) & 63));
      if (l = o.charAt(64))
        for (; i.length % 4;) i.push(l);
      return i.join("")
    },
    parse: function(i) {
      var i = i.replace(/\s/g, ""),
        l = i.length,
        r = this._map,
        o = r.charAt(64);
      o && (o = i.indexOf(o), -1 != o && (l = o));
      for (var o = [], m = 0, s = 0; s < l; s++)
        if (s % 4) {
          var n = r.indexOf(i.charAt(s - 1)) << 2 * (s % 4),
            k = r.indexOf(i.charAt(s)) >>> 6 - 2 * (s % 4);
          o[m >>> 2] |= (n | k) << 24 - 8 * (m % 4);
          m++
        }
      return h.create(o, m)
    },
    _map: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="
  }
})();
(function(p) {
  function h(f, g, a, e, c, b, d) {
    f = f + (g & a | ~g & e) + c + d;
    return (f << b | f >>> 32 - b) + g
  }

  function i(f, g, a, e, c, b, d) {
    f = f + (g & e | a & ~e) + c + d;
    return (f << b | f >>> 32 - b) + g
  }

  function l(f, g, a, e, c, b, d) {
    f = f + (g ^ a ^ e) + c + d;
    return (f << b | f >>> 32 - b) + g
  }

  function r(f, g, a, e, c, b, d) {
    f = f + (a ^ (g | ~e)) + c + d;
    return (f << b | f >>> 32 - b) + g
  }
  var o = CryptoJS,
    m = o.lib,
    s = m.WordArray,
    m = m.Hasher,
    n = o.algo,
    k = [];
  (function() {
    for (var f = 0; 64 > f; f++) k[f] = 4294967296 * p.abs(p.sin(f + 1)) | 0
  })();
  n = n.MD5 = m.extend({
    _doReset: function() {
      this._hash = s.create([1732584193, 4023233417,
        2562383102, 271733878
      ])
    },
    _doProcessBlock: function(f, g) {
      for (var a = 0; 16 > a; a++) {
        var e = g + a,
          c = f[e];
        f[e] = (c << 8 | c >>> 24) & 16711935 | (c << 24 | c >>> 8) & 4278255360
      }
      for (var e = this._hash.words, c = e[0], b = e[1], d = e[2], q = e[3], a = 0; 64 > a; a += 4) 16 > a ? (c = h(c, b, d, q, f[g + a], 7, k[a]), q = h(q, c, b, d, f[g + a + 1], 12, k[a + 1]), d = h(d, q, c, b, f[g + a + 2], 17, k[a + 2]), b = h(b, d, q, c, f[g + a + 3], 22, k[a + 3])) : 32 > a ? (c = i(c, b, d, q, f[g + (a + 1) % 16], 5, k[a]), q = i(q, c, b, d, f[g + (a + 6) % 16], 9, k[a + 1]), d = i(d, q, c, b, f[g + (a + 11) % 16], 14, k[a + 2]), b = i(b, d, q, c, f[g + a % 16], 20, k[a + 3])) : 48 > a ? (c =
        l(c, b, d, q, f[g + (3 * a + 5) % 16], 4, k[a]), q = l(q, c, b, d, f[g + (3 * a + 8) % 16], 11, k[a + 1]), d = l(d, q, c, b, f[g + (3 * a + 11) % 16], 16, k[a + 2]), b = l(b, d, q, c, f[g + (3 * a + 14) % 16], 23, k[a + 3])) : (c = r(c, b, d, q, f[g + 3 * a % 16], 6, k[a]), q = r(q, c, b, d, f[g + (3 * a + 7) % 16], 10, k[a + 1]), d = r(d, q, c, b, f[g + (3 * a + 14) % 16], 15, k[a + 2]), b = r(b, d, q, c, f[g + (3 * a + 5) % 16], 21, k[a + 3]));
      e[0] = e[0] + c | 0;
      e[1] = e[1] + b | 0;
      e[2] = e[2] + d | 0;
      e[3] = e[3] + q | 0
    },
    _doFinalize: function() {
      var f = this._data,
        g = f.words,
        a = 8 * this._nDataBytes,
        e = 8 * f.sigBytes;
      g[e >>> 5] |= 128 << 24 - e % 32;
      g[(e + 64 >>> 9 << 4) + 14] = (a << 8 | a >>>
        24) & 16711935 | (a << 24 | a >>> 8) & 4278255360;
      f.sigBytes = 4 * (g.length + 1);
      this._process();
      f = this._hash.words;
      for (g = 0; 4 > g; g++) a = f[g], f[g] = (a << 8 | a >>> 24) & 16711935 | (a << 24 | a >>> 8) & 4278255360
    }
  });
  o.MD5 = m._createHelper(n);
  o.HmacMD5 = m._createHmacHelper(n)
})(Math);
(function() {
  var p = CryptoJS,
    h = p.lib,
    i = h.Base,
    l = h.WordArray,
    h = p.algo,
    r = h.EvpKDF = i.extend({
      cfg: i.extend({
        keySize: 4,
        hasher: h.MD5,
        iterations: 1
      }),
      init: function(i) {
        this.cfg = this.cfg.extend(i)
      },
      compute: function(i, m) {
        for (var h = this.cfg, n = h.hasher.create(), k = l.create(), f = k.words, g = h.keySize, h = h.iterations; f.length < g;) {
          a && n.update(a);
          var a = n.update(i).finalize(m);
          n.reset();
          for (var e = 1; e < h; e++) a = n.finalize(a), n.reset();
          k.concat(a)
        }
        k.sigBytes = 4 * g;
        return k
      }
    });
  p.EvpKDF = function(i, l, h) {
    return r.create(h).compute(i,
      l)
  }
})();
CryptoJS.lib.Cipher || function(p) {
  var h = CryptoJS,
    i = h.lib,
    l = i.Base,
    r = i.WordArray,
    o = i.BufferedBlockAlgorithm,
    m = h.enc.Base64,
    s = h.algo.EvpKDF,
    n = i.Cipher = o.extend({
      cfg: l.extend(),
      createEncryptor: function(b, d) {
        return this.create(this._ENC_XFORM_MODE, b, d)
      },
      createDecryptor: function(b, d) {
        return this.create(this._DEC_XFORM_MODE, b, d)
      },
      init: function(b, d, a) {
        this.cfg = this.cfg.extend(a);
        this._xformMode = b;
        this._key = d;
        this.reset()
      },
      reset: function() {
        o.reset.call(this);
        this._doReset()
      },
      process: function(b) {
        this._append(b);
        return this._process()
      },
      finalize: function(b) {
        b && this._append(b);
        return this._doFinalize()
      },
      keySize: 4,
      ivSize: 4,
      _ENC_XFORM_MODE: 1,
      _DEC_XFORM_MODE: 2,
      _createHelper: function() {
        return function(b) {
          return {
            encrypt: function(a, q, j) {
              return ("string" == typeof q ? c : e).encrypt(b, a, q, j)
            },
            decrypt: function(a, q, j) {
              return ("string" == typeof q ? c : e).decrypt(b, a, q, j)
            }
          }
        }
      }()
    });
  i.StreamCipher = n.extend({
    _doFinalize: function() {
      return this._process(!0)
    },
    blockSize: 1
  });
  var k = h.mode = {},
    f = i.BlockCipherMode = l.extend({
      createEncryptor: function(b, a) {
        return this.Encryptor.create(b,
          a)
      },
      createDecryptor: function(b, a) {
        return this.Decryptor.create(b, a)
      },
      init: function(b, a) {
        this._cipher = b;
        this._iv = a
      }
    }),
    k = k.CBC = function() {
      function b(b, a, d) {
        var c = this._iv;
        c ? this._iv = p : c = this._prevBlock;
        for (var e = 0; e < d; e++) b[a + e] ^= c[e]
      }
      var a = f.extend();
      a.Encryptor = a.extend({
        processBlock: function(a, d) {
          var c = this._cipher,
            e = c.blockSize;
          b.call(this, a, d, e);
          c.encryptBlock(a, d);
          this._prevBlock = a.slice(d, d + e)
        }
      });
      a.Decryptor = a.extend({
        processBlock: function(a, d) {
          var c = this._cipher,
            e = c.blockSize,
            f = a.slice(d, d +
              e);
          c.decryptBlock(a, d);
          b.call(this, a, d, e);
          this._prevBlock = f
        }
      });
      return a
    }(),
    g = (h.pad = {}).Pkcs7 = {
      pad: function(b, a) {
        for (var c = 4 * a, c = c - b.sigBytes % c, e = c << 24 | c << 16 | c << 8 | c, f = [], g = 0; g < c; g += 4) f.push(e);
        c = r.create(f, c);
        b.concat(c)
      },
      unpad: function(b) {
        b.sigBytes -= b.words[b.sigBytes - 1 >>> 2] & 255
      }
    };
  i.BlockCipher = n.extend({
    cfg: n.cfg.extend({
      mode: k,
      padding: g
    }),
    reset: function() {
      n.reset.call(this);
      var b = this.cfg,
        a = b.iv,
        b = b.mode;
      if (this._xformMode == this._ENC_XFORM_MODE) var c = b.createEncryptor;
      else c = b.createDecryptor,
        this._minBufferSize = 1;
      this._mode = c.call(b, this, a && a.words)
    },
    _doProcessBlock: function(b, a) {
      this._mode.processBlock(b, a)
    },
    _doFinalize: function() {
      var b = this.cfg.padding;
      if (this._xformMode == this._ENC_XFORM_MODE) {
        b.pad(this._data, this.blockSize);
        var a = this._process(!0)
      } else a = this._process(!0), b.unpad(a);
      return a
    },
    blockSize: 4
  });
  var a = i.CipherParams = l.extend({
      init: function(a) {
        this.mixIn(a)
      },
      toString: function(a) {
        return (a || this.formatter).stringify(this)
      }
    }),
    k = (h.format = {}).OpenSSL = {
      stringify: function(a) {
        var d =
          a.ciphertext,
          a = a.salt,
          d = (a ? r.create([1398893684, 1701076831]).concat(a).concat(d) : d).toString(m);
        return d = d.replace(/(.{64})/g, "$1")
      },
      parse: function(b) {
        var b = m.parse(b),
          d = b.words;
        if (1398893684 == d[0] && 1701076831 == d[1]) {
          var c = r.create(d.slice(2, 4));
          d.splice(0, 4);
          b.sigBytes -= 16
        }
        return a.create({
          ciphertext: b,
          salt: c
        })
      }
    },
    e = i.SerializableCipher = l.extend({
      cfg: l.extend({
        format: k
      }),
      encrypt: function(b, d, c, e) {
        var e = this.cfg.extend(e),
          f = b.createEncryptor(c, e),
          d = f.finalize(d),
          f = f.cfg;
        return a.create({
          ciphertext: d,
          key: c,
          iv: f.iv,
          algorithm: b,
          mode: f.mode,
          padding: f.padding,
          blockSize: b.blockSize,
          formatter: e.format
        })
      },
      decrypt: function(a, c, e, f) {
        f = this.cfg.extend(f);
        c = this._parse(c, f.format);
        return a.createDecryptor(e, f).finalize(c.ciphertext)
      },
      _parse: function(a, c) {
        return "string" == typeof a ? c.parse(a) : a
      }
    }),
    h = (h.kdf = {}).OpenSSL = {
      compute: function(b, c, e, f) {
        f || (f = r.random(8));
        b = s.create({
          keySize: c + e
        }).compute(b, f);
        e = r.create(b.words.slice(c), 4 * e);
        b.sigBytes = 4 * c;
        return a.create({
          key: b,
          iv: e,
          salt: f
        })
      }
    },
    c = i.PasswordBasedCipher =
    e.extend({
      cfg: e.cfg.extend({
        kdf: h
      }),
      encrypt: function(a, c, f, j) {
        j = this.cfg.extend(j);
        f = j.kdf.compute(f, a.keySize, a.ivSize);
        j.iv = f.iv;
        a = e.encrypt.call(this, a, c, f.key, j);
        a.mixIn(f);
        return a
      },
      decrypt: function(a, c, f, j) {
        j = this.cfg.extend(j);
        c = this._parse(c, j.format);
        f = j.kdf.compute(f, a.keySize, a.ivSize, c.salt);
        j.iv = f.iv;
        return e.decrypt.call(this, a, c, f.key, j)
      }
    })
}();
(function() {
  var p = CryptoJS,
    h = p.lib.BlockCipher,
    i = p.algo,
    l = [],
    r = [],
    o = [],
    m = [],
    s = [],
    n = [],
    k = [],
    f = [],
    g = [],
    a = [];
  (function() {
    for (var c = [], b = 0; 256 > b; b++) c[b] = 128 > b ? b << 1 : b << 1 ^ 283;
    for (var d = 0, e = 0, b = 0; 256 > b; b++) {
      var j = e ^ e << 1 ^ e << 2 ^ e << 3 ^ e << 4,
        j = j >>> 8 ^ j & 255 ^ 99;
      l[d] = j;
      r[j] = d;
      var i = c[d],
        h = c[i],
        p = c[h],
        t = 257 * c[j] ^ 16843008 * j;
      o[d] = t << 24 | t >>> 8;
      m[d] = t << 16 | t >>> 16;
      s[d] = t << 8 | t >>> 24;
      n[d] = t;
      t = 16843009 * p ^ 65537 * h ^ 257 * i ^ 16843008 * d;
      k[j] = t << 24 | t >>> 8;
      f[j] = t << 16 | t >>> 16;
      g[j] = t << 8 | t >>> 24;
      a[j] = t;
      d ? (d = i ^ c[c[c[p ^ i]]], e ^= c[c[e]]) : d = e = 1
    }
  })();
  var e = [0, 1, 2, 4, 8, 16, 32, 64, 128, 27, 54],
    i = i.AES = h.extend({
      _doReset: function() {
        for (var c = this._key, b = c.words, d = c.sigBytes / 4, c = 4 * ((this._nRounds = d + 6) + 1), i = this._keySchedule = [], j = 0; j < c; j++)
          if (j < d) i[j] = b[j];
          else {
            var h = i[j - 1];
            j % d ? 6 < d && 4 == j % d && (h = l[h >>> 24] << 24 | l[h >>> 16 & 255] << 16 | l[h >>> 8 & 255] << 8 | l[h & 255]) : (h = h << 8 | h >>> 24, h = l[h >>> 24] << 24 | l[h >>> 16 & 255] << 16 | l[h >>> 8 & 255] << 8 | l[h & 255], h ^= e[j / d | 0] << 24);
            i[j] = i[j - d] ^ h
          }
        b = this._invKeySchedule = [];
        for (d = 0; d < c; d++) j = c - d, h = d % 4 ? i[j] : i[j - 4], b[d] = 4 > d || 4 >= j ? h : k[l[h >>> 24]] ^ f[l[h >>>
          16 & 255]] ^ g[l[h >>> 8 & 255]] ^ a[l[h & 255]]
      },
      encryptBlock: function(a, b) {
        this._doCryptBlock(a, b, this._keySchedule, o, m, s, n, l)
      },
      decryptBlock: function(c, b) {
        var d = c[b + 1];
        c[b + 1] = c[b + 3];
        c[b + 3] = d;
        this._doCryptBlock(c, b, this._invKeySchedule, k, f, g, a, r);
        d = c[b + 1];
        c[b + 1] = c[b + 3];
        c[b + 3] = d
      },
      _doCryptBlock: function(a, b, d, e, f, h, i, g) {
        for (var l = this._nRounds, k = a[b] ^ d[0], m = a[b + 1] ^ d[1], o = a[b + 2] ^ d[2], n = a[b + 3] ^ d[3], p = 4, r = 1; r < l; r++) var s = e[k >>> 24] ^ f[m >>> 16 & 255] ^ h[o >>> 8 & 255] ^ i[n & 255] ^ d[p++],
          u = e[m >>> 24] ^ f[o >>> 16 & 255] ^ h[n >>> 8 & 255] ^
          i[k & 255] ^ d[p++],
          v = e[o >>> 24] ^ f[n >>> 16 & 255] ^ h[k >>> 8 & 255] ^ i[m & 255] ^ d[p++],
          n = e[n >>> 24] ^ f[k >>> 16 & 255] ^ h[m >>> 8 & 255] ^ i[o & 255] ^ d[p++],
          k = s,
          m = u,
          o = v;
        s = (g[k >>> 24] << 24 | g[m >>> 16 & 255] << 16 | g[o >>> 8 & 255] << 8 | g[n & 255]) ^ d[p++];
        u = (g[m >>> 24] << 24 | g[o >>> 16 & 255] << 16 | g[n >>> 8 & 255] << 8 | g[k & 255]) ^ d[p++];
        v = (g[o >>> 24] << 24 | g[n >>> 16 & 255] << 16 | g[k >>> 8 & 255] << 8 | g[m & 255]) ^ d[p++];
        n = (g[n >>> 24] << 24 | g[k >>> 16 & 255] << 16 | g[m >>> 8 & 255] << 8 | g[o & 255]) ^ d[p++];
        a[b] = s;
        a[b + 1] = u;
        a[b + 2] = v;
        a[b + 3] = n
      },
      keySize: 8
    });
  p.AES = h._createHelper(i)
})();








ui.statusBarColor("#ff009688");
ui.layout(
<frame background="#ff009688">
<vertical align="top" margin="5">
<input id="ꕢayuanma" h="60" bg="#ffffff" hint="原代码。"/>
<input id="ꕢakey" color="#ffffff" h="50" hint="密码"></input>
<input id="ꕢtext" h="315" bg="#ffffff" margin="0 0 0 0" hint="结果代码区"/>
<linear>
<vertical w="170">
<button margin="15 0 0 4" h="160" w="160" id="ꕢajiami" text="运算" size="55"></button>
</vertical>
<vertical>
<linear> 
<button h="60" w="60" id="ꕢafuzhi" text="复制结果" ></button>
<button margin="0 0 0 0" h="60" w="60" id="ꕢashang" text="运行输入"></button>
</linear>
<linear>
<button h="60" w="60" id="ꕢazuo" text="清空输入" ></button>
<button h="60" w="60" id="ꕢaok" text="保存结果" ></button>
<button h="60" w="60" id="ꕢayou" text="清空结果" ></button>
</linear>
<linear>
<button margin="0 0 0 60" h="60" w="60" id="ꕢaxia" text="运行结果" ></button>
</linear>
</vertical>
</linear>
</vertical>
</frame>
);
ui.ꕢayuanma.text("openConsole();//显示控制台,拜见宫主大人 \nconsole.info(\"这是绿色\");//显示");
ui.ꕢashang.click(() => {
try {
engines.execScript("输入代码", "" + ui.ꕢayuanma.text());
} catch (e) {
toast("运行失败");
}
});
ui.ꕢayou.click(() => {
ui.ꕢtext.text("");
});
ui.ꕢafuzhi.click(() => {
setClip(ui.ꕢtext.text());
toast("拜见宫主大人提示你 复制成功");
});
ui.ꕢaxia.click(() => {
try {
engines.execScript("结果代码", "" + ui.ꕢtext.text());
} catch (e) {
toast("运行失败");
}
});
ui.ꕢazuo.click(() => {
ui.ꕢayuanma.text("");
});
ui.ꕢaok.click(() => {
ꕢaaaaaab = ui.ꕢtext.text();
ꕢpath = "/sdcard/脚本/自带密码的脚本.js";
ꕢfile = open(ꕢpath, "w");
ꕢfile.write(ꕢaaaaaab);
ꕢfile.close();
toast("已生成脚本放在：" + ꕢpath + "");
});
ꙮ0=CryptoJS.AES.decrypt("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","QQ10389405").toString(CryptoJS.enc.Utf8);
ꙮ1=CryptoJS.AES.decrypt("U2FsdGVkX19xbO6mgXMkc5Jjdmrfh36r9vo/Sm+xt3JZGbRcVgPOhVrJ//+myhG7/4BnaJcO0rcxmq3OgOmrG2NA2YcetOwdihYhflqUENCMvP86Aupz/Oe39+rgbs22QCjsikmFw7yuOjGVwQKShxTknvcW7WekwOI3FUNTjomIclLaRQnEVAq0Z3Kz+Sp7R2YrUIEOwPb2bMgQbumj7ne5sJE7bXnuIegrptwawJoPYsJDwf+nqW9i2a4CIiOWsNVe2p+Xpjyxn1lhDDkF4V4AhAIW/Pq6KAqW1bKaLIJ7YlSx6cKBunQMNL6NqMwAF1V3u9qE6l/w/BbWhJTJN+kq210KymTv8W2+dp2B1To=","Auto.js").toString(CryptoJS.enc.Utf8);
ui.ꕢajiami.click(() => {
ꙮ2=ꙮ0+CryptoJS.AES.encrypt(ui.ꕢayuanma.text()+"",ui.ꕢakey.text()+"")+ꙮ1;
ui.ꕢtext.text(ꙮ2+"");
});
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
