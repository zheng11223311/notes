.class public Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;
.super Ljava/lang/Object;
.source "DownFileRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private dirPath:Ljava/lang/String;

.field private downUrl:Ljava/lang/String;

.field private downloadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "downloadListener"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;
    .param p2, "dirPath"    # Ljava/lang/String;
    .param p3, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->downloadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;

    .line 34
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->dirPath:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->downUrl:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 40
    :cond_0
    return-void
.end method

.method private getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private postErr(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->downloadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->downloadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;

    invoke-interface {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;->onDownloadError(Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 45
    const/4 v8, 0x0

    .line 46
    .local v8, "con":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 47
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 48
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    const/4 v13, 0x0

    .line 50
    .local v13, "temp_file":Ljava/io/File;
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->downUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    .local v15, "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 53
    const/16 v16, 0x1388

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 54
    const/16 v16, 0x7530

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 55
    const-string v16, "Accept"

    const-string v17, "image/gif, image/jpeg, image/pjpeg, image/png, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v16, "Accept-Language"

    const-string/jumbo v17, "zh-CN"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v16, "Referer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->downUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v16, "Charset"

    const-string v17, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v16, "User-Agent"

    const-string v17, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v16, "Connection"

    const-string v17, "Keep-Alive"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 65
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->downUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/youku/laifeng/libcuteroom/utils/SecurityMD5;->ToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "Md5Url":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 68
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->dirPath:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".tmp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    .end local v13    # "temp_file":Ljava/io/File;
    .local v14, "temp_file":Ljava/io/File;
    :try_start_2
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 71
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .local v6, "bos":Ljava/io/BufferedOutputStream;
    const/4 v12, 0x0

    .line 72
    .local v12, "len":I
    const/4 v9, 0x0

    .line 73
    .local v9, "count":I
    const/high16 v16, 0x100000

    :try_start_3
    move/from16 v0, v16

    new-array v7, v0, [B

    .line 74
    .local v7, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {v4, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v12

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v12, v0, :cond_5

    .line 75
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v7, v0, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 76
    add-int/2addr v9, v12

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->downloadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->downloadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;->onDownloadSize(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 88
    .end local v7    # "buffer":[B
    :catch_0
    move-exception v10

    move-object v13, v14

    .end local v14    # "temp_file":Ljava/io/File;
    .restart local v13    # "temp_file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 90
    .end local v2    # "Md5Url":Ljava/lang/String;
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v9    # "count":I
    .end local v12    # "len":I
    .end local v15    # "url":Ljava/net/URL;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v10, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    sget-boolean v16, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v16, :cond_1

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->postErr(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    if-eqz v3, :cond_2

    .line 95
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 97
    :cond_2
    if-eqz v5, :cond_3

    .line 98
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 100
    :cond_3
    if-eqz v8, :cond_4

    .line 101
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 109
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return-void

    .line 81
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v13    # "temp_file":Ljava/io/File;
    .restart local v2    # "Md5Url":Ljava/lang/String;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "buffer":[B
    .restart local v9    # "count":I
    .restart local v12    # "len":I
    .restart local v14    # "temp_file":Ljava/io/File;
    .restart local v15    # "url":Ljava/net/URL;
    :cond_5
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 83
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v16

    move/from16 v0, v16

    if-ne v9, v0, :cond_6

    .line 84
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->dirPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->downloadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->downloadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;->onCompletion()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_6
    move-object v13, v14

    .end local v14    # "temp_file":Ljava/io/File;
    .restart local v13    # "temp_file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 94
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "buffer":[B
    .end local v9    # "count":I
    .end local v12    # "len":I
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    :cond_7
    if-eqz v3, :cond_8

    .line 95
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 97
    :cond_8
    if-eqz v5, :cond_9

    .line 98
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 100
    :cond_9
    if-eqz v8, :cond_4

    .line 101
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 103
    :catch_1
    move-exception v11

    .line 105
    .local v11, "e2":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->postErr(Ljava/lang/String;)V

    goto :goto_2

    .line 103
    .end local v2    # "Md5Url":Ljava/lang/String;
    .end local v11    # "e2":Ljava/lang/Exception;
    .end local v15    # "url":Ljava/net/URL;
    .restart local v10    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    .line 105
    .restart local v11    # "e2":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->postErr(Ljava/lang/String;)V

    goto :goto_2

    .line 93
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 94
    :goto_3
    if-eqz v3, :cond_a

    .line 95
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 97
    :cond_a
    if-eqz v5, :cond_b

    .line 98
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 100
    :cond_b
    if-eqz v8, :cond_c

    .line 101
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 107
    :cond_c
    :goto_4
    throw v16

    .line 103
    :catch_3
    move-exception v11

    .line 105
    .restart local v11    # "e2":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;->postErr(Ljava/lang/String;)V

    goto :goto_4

    .line 93
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "e2":Ljava/lang/Exception;
    .restart local v2    # "Md5Url":Ljava/lang/String;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v15    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v16

    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v13    # "temp_file":Ljava/io/File;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v14    # "temp_file":Ljava/io/File;
    :catchall_2
    move-exception v16

    move-object v13, v14

    .end local v14    # "temp_file":Ljava/io/File;
    .restart local v13    # "temp_file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v13    # "temp_file":Ljava/io/File;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "count":I
    .restart local v12    # "len":I
    .restart local v14    # "temp_file":Ljava/io/File;
    :catchall_3
    move-exception v16

    move-object v13, v14

    .end local v14    # "temp_file":Ljava/io/File;
    .restart local v13    # "temp_file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 88
    .end local v2    # "Md5Url":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v12    # "len":I
    .end local v15    # "url":Ljava/net/URL;
    :catch_4
    move-exception v10

    goto/16 :goto_1

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "Md5Url":Ljava/lang/String;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v15    # "url":Ljava/net/URL;
    :catch_5
    move-exception v10

    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_1

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v13    # "temp_file":Ljava/io/File;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v14    # "temp_file":Ljava/io/File;
    :catch_6
    move-exception v10

    move-object v13, v14

    .end local v14    # "temp_file":Ljava/io/File;
    .restart local v13    # "temp_file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_1
.end method
