.class public Lcom/tudou/upload/UploadUtil;
.super Ljava/lang/Object;
.source "UploadUtil.java"


# static fields
.field public static STOP:Ljava/lang/String;

.field public static isStopCalMd5:Z

.field private static md5Chars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/upload/UploadUtil;->isStopCalMd5:Z

    .line 110
    const-string v0, "stop"

    sput-object v0, Lcom/tudou/upload/UploadUtil;->STOP:Ljava/lang/String;

    .line 192
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tudou/upload/UploadUtil;->md5Chars:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .locals 4
    .param p0, "bt"    # B
    .param p1, "stringbuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 186
    sget-object v2, Lcom/tudou/upload/UploadUtil;->md5Chars:[C

    and-int/lit16 v3, p0, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v0, v2, v3

    .line 187
    .local v0, "c0":C
    sget-object v2, Lcom/tudou/upload/UploadUtil;->md5Chars:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v1, v2, v3

    .line 188
    .local v1, "c1":C
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    return-void
.end method

.method private static bufferToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 173
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/tudou/upload/UploadUtil;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bufferToHex([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "m"    # I
    .param p2, "n"    # I

    .prologue
    .line 177
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 178
    .local v2, "stringbuffer":Ljava/lang/StringBuffer;
    add-int v0, p1, p2

    .line 179
    .local v0, "k":I
    move v1, p1

    .local v1, "l":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 180
    aget-byte v3, p0, v1

    invoke-static {v3, v2}, Lcom/tudou/upload/UploadUtil;->appendHexPair(BLjava/lang/StringBuffer;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getCatesFromXml(Ljava/io/InputStream;)Ljava/util/List;
    .locals 15
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    if-nez p0, :cond_1

    .line 54
    const/4 v4, 0x0

    .line 96
    :cond_0
    :goto_0
    return-object v4

    .line 55
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v4, "cates":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/Category;>;"
    const/4 v7, 0x0

    .line 57
    .local v7, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 58
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v5, 0x0

    .line 59
    .local v5, "document":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 61
    :try_start_0
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 62
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 64
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v12

    .line 65
    .local v12, "root":Lorg/w3c/dom/Element;
    const-string v13, "item"

    invoke-interface {v12, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 67
    .local v11, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .line 68
    .local v2, "cate":Lcom/youku/vo/Category;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v8, v13, :cond_2

    .line 69
    invoke-interface {v11, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    move-object v0, v13

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 70
    .local v3, "cateElement":Lorg/w3c/dom/Element;
    new-instance v2, Lcom/youku/vo/Category;

    .end local v2    # "cate":Lcom/youku/vo/Category;
    invoke-direct {v2}, Lcom/youku/vo/Category;-><init>()V

    .line 72
    .restart local v2    # "cate":Lcom/youku/vo/Category;
    const-string v13, "id"

    invoke-interface {v3, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 74
    .local v9, "id":Lorg/w3c/dom/Element;
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/youku/vo/Category;->setId(I)V

    .line 76
    const-string v13, "name"

    invoke-interface {v3, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 78
    .local v10, "name":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/youku/vo/Category;->setName(Ljava/lang/String;)V

    .line 80
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 90
    .end local v3    # "cateElement":Lorg/w3c/dom/Element;
    .end local v9    # "id":Lorg/w3c/dom/Element;
    .end local v10    # "name":Lorg/w3c/dom/Element;
    :cond_2
    if-eqz p0, :cond_0

    .line 91
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v6

    .line 93
    .local v6, "e":Ljava/io/IOException;
    const-string v13, "UploadUtil.getCatesFromXml()"

    invoke-static {v13, v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    .end local v2    # "cate":Lcom/youku/vo/Category;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "i":I
    .end local v11    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v12    # "root":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v6

    .line 83
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v13, "UploadUtil.getCatesFromXml()"

    invoke-static {v13, v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    if-eqz p0, :cond_0

    .line 91
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 92
    :catch_2
    move-exception v6

    .line 93
    const-string v13, "UploadUtil.getCatesFromXml()"

    invoke-static {v13, v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 84
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 85
    .local v6, "e":Lorg/xml/sax/SAXException;
    :try_start_4
    const-string v13, "UploadUtil.getCatesFromXml()"

    invoke-static {v13, v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    if-eqz p0, :cond_0

    .line 91
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 92
    :catch_4
    move-exception v6

    .line 93
    .local v6, "e":Ljava/io/IOException;
    const-string v13, "UploadUtil.getCatesFromXml()"

    invoke-static {v13, v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 86
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 87
    .local v6, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    const-string v13, "UploadUtil.getCatesFromXml()"

    invoke-static {v13, v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 90
    if-eqz p0, :cond_0

    .line 91
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 92
    :catch_6
    move-exception v6

    .line 93
    .local v6, "e":Ljava/io/IOException;
    const-string v13, "UploadUtil.getCatesFromXml()"

    invoke-static {v13, v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 89
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 90
    if-eqz p0, :cond_3

    .line 91
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 94
    :cond_3
    :goto_2
    throw v13

    .line 92
    :catch_7
    move-exception v6

    .line 93
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v14, "UploadUtil.getCatesFromXml()"

    invoke-static {v14, v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static getFileMD5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 122
    .local v6, "timeStart":J
    const-string v8, "TAG_TUDOU"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u8ba1\u7b97\u6587\u4ef6md5========"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, "fis":Ljava/io/InputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 127
    .local v0, "buffer":[B
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 128
    .local v3, "md5":Ljava/security/MessageDigest;
    const/4 v5, 0x0

    .line 129
    .local v5, "numRead":I
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    .line 130
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 131
    sget-boolean v8, Lcom/tudou/upload/UploadUtil;->isStopCalMd5:Z

    if-eqz v8, :cond_0

    .line 133
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 134
    sget-object v4, Lcom/tudou/upload/UploadUtil;->STOP:Ljava/lang/String;

    .line 155
    .end local v0    # "buffer":[B
    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v3    # "md5":Ljava/security/MessageDigest;
    .end local v5    # "numRead":I
    :goto_0
    return-object v4

    .line 137
    .restart local v0    # "buffer":[B
    .restart local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "md5":Ljava/security/MessageDigest;
    .restart local v5    # "numRead":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 138
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8}, Lcom/tudou/upload/UploadUtil;->bufferToHex([B)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "md5Str":Ljava/lang/String;
    const-string v8, "TAG_TUDOU"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u8ba1\u7b97\u6587\u4ef6md5\u5b8c\u6210\uff0c\u7528\u65f6========"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 142
    .end local v0    # "buffer":[B
    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v3    # "md5":Ljava/security/MessageDigest;
    .end local v4    # "md5Str":Ljava/lang/String;
    .end local v5    # "numRead":I
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v8, "UploadUtil.getFileMD5String()"

    invoke-static {v8, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 155
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 145
    :catch_1
    move-exception v1

    .line 146
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v8, "UploadUtil.getFileMD5String()"

    invoke-static {v8, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 148
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "TAG_TUDOU"

    invoke-static {v8, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 151
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "TAG_TUDOU"

    invoke-static {v8, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getRCB(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "roundPX"    # F

    .prologue
    const/4 v9, 0x0

    .line 322
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 324
    .local v2, "dstbmp":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 326
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 327
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 328
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 329
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 330
    .local v5, "rectF":Landroid/graphics/RectF;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 331
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 332
    const v6, -0xbdbdbe

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    invoke-virtual {v0, v5, p1, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 334
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 335
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 337
    return-object v2
.end method

.method public static getServerIP(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 102
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static list2String(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 240
    :cond_0
    const-string v3, ""

    .line 248
    :goto_0
    return-object v3

    .line 241
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 242
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 243
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 244
    .local v1, "obj":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_2

    .line 246
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    .end local v1    # "obj":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static loadThumbnail(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "videoName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 299
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "_display_name"

    aput-object v0, v2, v11

    .line 301
    .local v2, "proj":[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_display_name=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 305
    .local v9, "videocursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 307
    .local v7, "curThumb":Landroid/graphics/Bitmap;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 308
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 310
    .local v6, "crThumb":Landroid/content/ContentResolver;
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 311
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    iput v11, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 312
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const/4 v3, 0x3

    invoke-static {v6, v0, v1, v3, v8}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 317
    .end local v6    # "crThumb":Landroid/content/ContentResolver;
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 318
    return-object v7
.end method

.method public static out(Ljava/lang/String;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method

.method public static parseSize(J)Ljava/lang/String;
    .locals 14
    .param p0, "size"    # J

    .prologue
    const-wide/16 v12, 0x400

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/high16 v8, 0x44800000    # 1024.0f

    .line 263
    div-long v2, p0, v12

    .line 264
    .local v2, "sizeKB":J
    const-wide/32 v6, 0x100000

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 266
    .local v1, "sizeKBFloat":F
    new-instance v5, Ljava/math/BigDecimal;

    div-float v6, v1, v8

    div-float/2addr v6, v8

    float-to-double v6, v6

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v5, v9, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 267
    .local v0, "sizeGB":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 273
    .end local v0    # "sizeGB":F
    .end local v1    # "sizeKBFloat":F
    :goto_0
    return-object v5

    .line 268
    :cond_0
    cmp-long v5, v2, v12

    if-ltz v5, :cond_1

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 270
    .restart local v1    # "sizeKBFloat":F
    new-instance v5, Ljava/math/BigDecimal;

    div-float v6, v1, v8

    float-to-double v6, v6

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v5, v9, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    .line 271
    .local v4, "sizeMB":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 273
    .end local v1    # "sizeKBFloat":F
    .end local v4    # "sizeMB":F
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static parseSpeed(I)Ljava/lang/String;
    .locals 6
    .param p0, "speed"    # I

    .prologue
    .line 282
    const/16 v2, 0x400

    if-lt p0, v2, :cond_0

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 284
    .local v0, "speedFloat":F
    new-instance v2, Ljava/math/BigDecimal;

    const/high16 v3, 0x44800000    # 1024.0f

    div-float v3, v0, v3

    float-to-double v4, v3

    invoke-direct {v2, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 285
    .local v1, "speedM":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .end local v0    # "speedFloat":F
    .end local v1    # "speedM":F
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static parseTime(I)[I
    .locals 4
    .param p0, "second"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 291
    const/16 v0, 0xe10

    if-lt p0, v0, :cond_0

    .line 292
    new-array v0, v1, [I

    div-int/lit16 v1, p0, 0xe10

    aput v1, v0, v2

    const v1, 0x7f0d01d8

    aput v1, v0, v3

    .line 295
    :goto_0
    return-object v0

    .line 293
    :cond_0
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_1

    .line 294
    new-array v0, v1, [I

    div-int/lit8 v1, p0, 0x3c

    aput v1, v0, v2

    const v1, 0x7f0d024f

    aput v1, v0, v3

    goto :goto_0

    .line 295
    :cond_1
    new-array v0, v1, [I

    aput p0, v0, v2

    const v1, 0x7f0d03cf

    aput v1, v0, v3

    goto :goto_0
.end method

.method public static string2List(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "list"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v1, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    const-string v6, ""

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 259
    :cond_0
    return-object v1

    .line 255
    :cond_1
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "lists":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 257
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static trustAllHosts()V
    .locals 5

    .prologue
    .line 204
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/tudou/upload/UploadUtil$1;

    invoke-direct {v4}, Lcom/tudou/upload/UploadUtil$1;-><init>()V

    aput-object v4, v2, v3

    .line 229
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 230
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 231
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
