.class public Lcom/youku/util/IntroductionManager;
.super Ljava/lang/Object;
.source "IntroductionManager.java"


# static fields
.field private static final CHARSET:Ljava/lang/String; = "utf-8"

.field public static final FAILURE:Ljava/lang/String; = "0"

.field public static final SUCCESS:Ljava/lang/String; = "1"

.field private static final TIME_OUT:I = 0x7530


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "file"    # Ljava/io/File;
    .param p1, "requestURL"    # Ljava/lang/String;
    .param p2, "cookies"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 35
    const-string v17, "0"

    .line 83
    :goto_0
    return-object v17

    .line 37
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "BOUNDARY":Ljava/lang/String;
    const-string v3, "application/octet-stream"

    .line 41
    .local v3, "CONTENT_TYPE":Ljava/lang/String;
    :try_start_0
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 42
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 43
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/16 v17, 0x7530

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 44
    const/16 v17, 0x7530

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 45
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 46
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 47
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 48
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 49
    const-string v17, "Charset"

    const-string v18, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v17, "Connection"

    const-string v18, "keep-alive"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v17, "Cookie"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v17, "Content-Type"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";boundary="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-eqz p0, :cond_1

    .line 54
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 55
    .local v11, "outputSteam":Ljava/io/OutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 56
    .local v6, "dos":Ljava/io/DataOutputStream;
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 57
    .local v9, "is":Ljava/io/InputStream;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 58
    .local v4, "bytes":[B
    const/4 v10, 0x0

    .line 59
    .local v10, "len":I
    :goto_1
    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_2

    .line 60
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v4, v0, v10}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 78
    .end local v4    # "bytes":[B
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "len":I
    .end local v11    # "outputSteam":Ljava/io/OutputStream;
    .end local v16    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 79
    .local v7, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 83
    .end local v7    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :goto_2
    const-string v17, "0"

    goto/16 :goto_0

    .line 62
    .restart local v4    # "bytes":[B
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "len":I
    .restart local v11    # "outputSteam":Ljava/io/OutputStream;
    .restart local v16    # "url":Ljava/net/URL;
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 63
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 64
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 65
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 66
    .local v12, "res":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v12, v0, :cond_1

    .line 67
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 68
    .local v8, "input":Ljava/io/InputStream;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v14, "sb1":Ljava/lang/StringBuffer;
    :goto_3
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v15

    .local v15, "ss":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_3

    .line 71
    int-to-char v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 80
    .end local v4    # "bytes":[B
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "dos":Ljava/io/DataOutputStream;
    .end local v8    # "input":Ljava/io/InputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "len":I
    .end local v11    # "outputSteam":Ljava/io/OutputStream;
    .end local v12    # "res":I
    .end local v14    # "sb1":Ljava/lang/StringBuffer;
    .end local v15    # "ss":I
    .end local v16    # "url":Ljava/net/URL;
    :catch_1
    move-exception v7

    .line 81
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 73
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "bytes":[B
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "dos":Ljava/io/DataOutputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "len":I
    .restart local v11    # "outputSteam":Ljava/io/OutputStream;
    .restart local v12    # "res":I
    .restart local v14    # "sb1":Ljava/lang/StringBuffer;
    .restart local v15    # "ss":I
    .restart local v16    # "url":Ljava/net/URL;
    :cond_3
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 74
    .local v13, "result":Ljava/lang/String;
    const-string v17, "introduction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "upload user icon: result = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v17, "1"
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
