.class public Lcom/youku/libmanager/HttpDownloader;
.super Ljava/lang/Object;
.source "HttpDownloader.java"


# static fields
.field public static final OK:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "SoUpgradeService"


# instance fields
.field private mContentLength:J

.field private mContext:Landroid/content/Context;

.field private mCurrentLength:J

.field private manager:Landroid/net/ConnectivityManager;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/youku/libmanager/HttpDownloader;->url:Ljava/net/URL;

    .line 33
    iput-object v0, p0, Lcom/youku/libmanager/HttpDownloader;->manager:Landroid/net/ConnectivityManager;

    .line 39
    iput-wide v2, p0, Lcom/youku/libmanager/HttpDownloader;->mCurrentLength:J

    .line 41
    iput-wide v2, p0, Lcom/youku/libmanager/HttpDownloader;->mContentLength:J

    .line 50
    iput-object p1, p0, Lcom/youku/libmanager/HttpDownloader;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public CheckNetworkState()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 281
    iget-object v2, p0, Lcom/youku/libmanager/HttpDownloader;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/youku/libmanager/HttpDownloader;->manager:Landroid/net/ConnectivityManager;

    .line 283
    iget-object v2, p0, Lcom/youku/libmanager/HttpDownloader;->manager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 285
    .local v0, "mobile":Landroid/net/NetworkInfo$State;
    iget-object v2, p0, Lcom/youku/libmanager/HttpDownloader;->manager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 288
    .local v1, "wifi":Landroid/net/NetworkInfo$State;
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    :cond_0
    move v2, v4

    .line 292
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public download(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 62
    .local v3, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 72
    .local v0, "buffer":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/youku/libmanager/HttpDownloader;->url:Ljava/net/URL;

    .line 73
    const/4 v5, 0x0

    .line 74
    .local v5, "urlConn":Ljava/net/HttpURLConnection;
    iget-object v6, p0, Lcom/youku/libmanager/HttpDownloader;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .end local v5    # "urlConn":Ljava/net/HttpURLConnection;
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 76
    .restart local v5    # "urlConn":Ljava/net/HttpURLConnection;
    const/16 v6, 0xfa0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 78
    const/16 v6, 0x7530

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 80
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 81
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .local v1, "buffer":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 87
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .end local v5    # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/net/ConnectException;
    :goto_1
    :try_start_2
    const-string v6, "SoUpgradeService"

    invoke-static {v6, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    const/4 v4, 0x0

    .line 96
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 104
    .end local v2    # "e":Ljava/net/ConnectException;
    :goto_2
    if-nez v4, :cond_1

    .line 105
    const/4 v6, 0x0

    .line 107
    :goto_3
    return-object v6

    .line 96
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v5    # "urlConn":Ljava/net/HttpURLConnection;
    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 101
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    goto :goto_2

    .line 97
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v6, "SoUpgradeService"

    invoke-static {v6, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 101
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    goto :goto_2

    .line 99
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "SoUpgradeService"

    invoke-static {v6, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 102
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    goto :goto_2

    .line 97
    .end local v5    # "urlConn":Ljava/net/HttpURLConnection;
    .local v2, "e":Ljava/net/ConnectException;
    :catch_3
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v6, "SoUpgradeService"

    invoke-static {v6, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 99
    .local v2, "e":Ljava/net/ConnectException;
    :catch_4
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "SoUpgradeService"

    invoke-static {v6, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 91
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 92
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string v6, "SoUpgradeService"

    invoke-static {v6, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 93
    const/4 v4, 0x0

    .line 96
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_2

    .line 97
    :catch_6
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v6, "SoUpgradeService"

    invoke-static {v6, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    :catch_7
    move-exception v2

    .line 100
    const-string v6, "SoUpgradeService"

    invoke-static {v6, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 95
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 96
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 101
    :goto_6
    throw v6

    .line 97
    :catch_8
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v7, "SoUpgradeService"

    invoke-static {v7, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 99
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_9
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "SoUpgradeService"

    invoke-static {v7, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 107
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 95
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v5    # "urlConn":Ljava/net/HttpURLConnection;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    goto :goto_5

    .line 91
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    :catch_a
    move-exception v2

    move-object v0, v1

    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    goto :goto_4

    .line 86
    .end local v5    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_b
    move-exception v2

    goto :goto_1
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 26
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v22, "SoUpgradeService"

    const-string v23, "downloadFile"

    invoke-static/range {v22 .. v23}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v22, "SoUpgradeService"

    const-string v23, "downloadFile"

    invoke-static/range {v22 .. v23}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v22, "SoUpgradeService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "urlStr = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v22, "SoUpgradeService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "path = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v22, "SoUpgradeService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "fileName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v10, 0x0

    .line 126
    .local v10, "flag":I
    const-wide/16 v20, -0x1

    .line 127
    .local v20, "size":J
    const/16 v16, -0x1

    .line 135
    .local v16, "prevProgress":I
    const-string v22, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 136
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 140
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/youku/libmanager/HttpDownloader;->getInputSize(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 147
    :goto_0
    const/4 v15, 0x0

    .line 148
    .local v15, "inputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 150
    .local v8, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v5, "downloadFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 152
    .local v11, "fullPath":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 154
    .local v12, "httpLength":J
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v22

    cmp-long v22, v22, v20

    if-nez v22, :cond_1

    .line 155
    const-string v22, "SoUpgradeService"

    const-string/jumbo v23, "\u6587\u4ef6\u5df2\u5b58\u5728"

    invoke-static/range {v22 .. v23}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/16 v22, 0x0

    .line 218
    :goto_1
    return v22

    .line 141
    .end local v5    # "downloadFile":Ljava/io/File;
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v11    # "fullPath":Ljava/lang/String;
    .end local v12    # "httpLength":J
    .end local v15    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 142
    .local v7, "e1":Ljava/net/MalformedURLException;
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v7    # "e1":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v7

    .line 144
    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v7    # "e1":Ljava/io/IOException;
    .restart local v5    # "downloadFile":Ljava/io/File;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fullPath":Ljava/lang/String;
    .restart local v12    # "httpLength":J
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-direct {v9, v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v9, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 163
    .local v19, "url":Ljava/net/URL;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljava/net/HttpURLConnection;

    .line 165
    .local v14, "httpURLConnection":Ljava/net/HttpURLConnection;
    const-string v22, "GET"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 166
    const-string v22, "Accept-Encoding"

    const-string v23, "identity"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v22, "Connection"

    const-string v23, "keep-alive"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/16 v22, 0x1388

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 171
    const/16 v22, 0x2710

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 173
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_2

    .line 174
    const-string v22, "Range"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "bytes="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_2
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->connect()V

    .line 178
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 180
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/youku/libmanager/HttpDownloader;->mCurrentLength:J

    .line 181
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v22

    move/from16 v0, v22

    int-to-long v12, v0

    .line 182
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/youku/libmanager/HttpDownloader;->mCurrentLength:J

    move-wide/from16 v22, v0

    add-long v22, v22, v12

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/youku/libmanager/HttpDownloader;->mContentLength:J

    .line 184
    const/16 v22, 0x1000

    move/from16 v0, v22

    new-array v4, v0, [B

    .line 185
    .local v4, "arrayOfByte":[B
    const/16 v18, 0x0

    .line 187
    .local v18, "readLength":I
    :cond_3
    :goto_2
    invoke-virtual {v15, v4}, Ljava/io/InputStream;->read([B)I

    move-result v18

    if-lez v18, :cond_6

    .line 188
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v9, v4, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 189
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/youku/libmanager/HttpDownloader;->mCurrentLength:J

    move-wide/from16 v22, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/youku/libmanager/HttpDownloader;->mCurrentLength:J

    .line 190
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/youku/libmanager/HttpDownloader;->mCurrentLength:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x42c80000    # 100.0f

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/youku/libmanager/HttpDownloader;->mContentLength:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    .line 191
    .local v17, "progress":I
    rem-int/lit8 v22, v17, 0xa

    if-nez v22, :cond_3

    .line 192
    const-string v22, "SoUpgradeService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "progress = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "%"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 195
    .end local v4    # "arrayOfByte":[B
    .end local v14    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v17    # "progress":I
    .end local v18    # "readLength":I
    .end local v19    # "url":Ljava/net/URL;
    :catch_2
    move-exception v6

    move-object v8, v9

    .line 196
    .end local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v6, "e":Ljava/net/MalformedURLException;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_3
    const-string v22, "SoUpgradeService"

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    const/4 v10, -0x1

    .line 203
    if-eqz v15, :cond_4

    .line 204
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 205
    const/4 v15, 0x0

    .line 207
    :cond_4
    if-eqz v8, :cond_5

    .line 208
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 209
    const/4 v8, 0x0

    :cond_5
    move/from16 v22, v10

    .line 212
    goto/16 :goto_1

    .line 203
    .end local v6    # "e":Ljava/net/MalformedURLException;
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "arrayOfByte":[B
    .restart local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v18    # "readLength":I
    .restart local v19    # "url":Ljava/net/URL;
    :cond_6
    if-eqz v15, :cond_7

    .line 204
    :try_start_5
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 205
    const/4 v15, 0x0

    .line 207
    :cond_7
    if-eqz v9, :cond_c

    .line 208
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 209
    const/4 v8, 0x0

    .end local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_4
    move/from16 v22, v10

    .line 212
    goto/16 :goto_1

    .line 213
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v6

    .line 214
    .local v6, "e":Ljava/io/IOException;
    const-string v22, "SoUpgradeService"

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v9

    .end local v4    # "arrayOfByte":[B
    .end local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v14    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v18    # "readLength":I
    .end local v19    # "url":Ljava/net/URL;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_5
    move/from16 v22, v10

    .line 218
    goto/16 :goto_1

    .line 213
    .local v6, "e":Ljava/net/MalformedURLException;
    :catch_4
    move-exception v6

    .line 214
    .local v6, "e":Ljava/io/IOException;
    const-string v22, "SoUpgradeService"

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 198
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 199
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_6
    const-string v22, "SoUpgradeService"

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 200
    const/4 v10, -0x1

    .line 203
    if-eqz v15, :cond_8

    .line 204
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 205
    const/4 v15, 0x0

    .line 207
    :cond_8
    if-eqz v8, :cond_9

    .line 208
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 209
    const/4 v8, 0x0

    :cond_9
    move/from16 v22, v10

    .line 212
    goto/16 :goto_1

    .line 213
    :catch_6
    move-exception v6

    .line 214
    const-string v22, "SoUpgradeService"

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 202
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v22

    .line 203
    :goto_7
    if-eqz v15, :cond_a

    .line 204
    :try_start_8
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 205
    const/4 v15, 0x0

    .line 207
    :cond_a
    if-eqz v8, :cond_b

    .line 208
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 209
    const/4 v8, 0x0

    :cond_b
    move/from16 v22, v10

    .line 212
    goto/16 :goto_1

    .line 213
    :catch_7
    move-exception v6

    .line 214
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v23, "SoUpgradeService"

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    throw v22

    .line 202
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v22

    move-object v8, v9

    .end local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 198
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v6

    move-object v8, v9

    .end local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 195
    :catch_9
    move-exception v6

    goto/16 :goto_3

    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "arrayOfByte":[B
    .restart local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v18    # "readLength":I
    .restart local v19    # "url":Ljava/net/URL;
    :cond_c
    move-object v8, v9

    .end local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public getInputSize(Ljava/lang/String;)I
    .locals 5
    .param p1, "urlStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/youku/libmanager/HttpDownloader;->url:Ljava/net/URL;

    .line 257
    iget-object v2, p0, Lcom/youku/libmanager/HttpDownloader;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 259
    .local v1, "urlConn":Ljava/net/HttpURLConnection;
    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 261
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 263
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 264
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 265
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 266
    const-string v2, "SoUpgradeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responsecode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v0, -0x1

    .line 271
    :goto_0
    return v0

    .line 270
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 271
    .local v0, "size":I
    goto :goto_0
.end method

.method public getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "urlStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/youku/libmanager/HttpDownloader;->url:Ljava/net/URL;

    .line 233
    iget-object v2, p0, Lcom/youku/libmanager/HttpDownloader;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 235
    .local v1, "urlConn":Ljava/net/HttpURLConnection;
    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 237
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 240
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 241
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 242
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 243
    .local v0, "inputStream":Ljava/io/InputStream;
    return-object v0
.end method
