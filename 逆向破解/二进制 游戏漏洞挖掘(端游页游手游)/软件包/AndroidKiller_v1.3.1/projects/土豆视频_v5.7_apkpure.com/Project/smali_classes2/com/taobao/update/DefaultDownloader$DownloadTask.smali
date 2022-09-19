.class Lcom/taobao/update/DefaultDownloader$DownloadTask;
.super Landroid/os/AsyncTask;
.source "DefaultDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/update/DefaultDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mClient:Lcom/taobao/update/AndroidHttpClient;

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private mFileStorePath:Ljava/lang/String;

.field private mHttpGet:Lorg/apache/http/client/methods/HttpGet;

.field private mInterrupt:Z

.field private mPreCheck:Z

.field private mResponse:Lorg/apache/http/HttpResponse;

.field final synthetic this$0:Lcom/taobao/update/DefaultDownloader;


# direct methods
.method public constructor <init>(Lcom/taobao/update/DefaultDownloader;Ljava/lang/String;J)V
    .locals 1
    .param p2, "apkStorePath"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .prologue
    const/4 v0, 0x0

    .line 101
    iput-object p1, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 93
    iput-boolean v0, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mInterrupt:Z

    .line 99
    iput-boolean v0, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mPreCheck:Z

    .line 102
    iput-object p2, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileStorePath:Ljava/lang/String;

    .line 103
    iput-wide p3, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileSize:J

    .line 104
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    .locals 12
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/RandomAccessFile;

    .prologue
    .line 224
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 225
    :cond_0
    const/4 v7, -0x6

    .line 304
    :cond_1
    :goto_0
    return v7

    .line 228
    :cond_2
    const/16 v7, 0x2000

    new-array v0, v7, [B

    .line 229
    .local v0, "buffer":[B
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v7, 0x2000

    invoke-direct {v5, p1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 230
    .local v5, "in":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 231
    .local v4, "fc":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 236
    .local v6, "n":I
    :try_start_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 237
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :goto_1
    :try_start_1
    iget-boolean v7, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mInterrupt:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_5

    .line 246
    const/4 v7, 0x0

    const/16 v8, 0x2000

    :try_start_2
    invoke-virtual {v5, v0, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 252
    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 253
    const-wide/16 v2, 0x0

    .line 256
    .local v2, "downloadSize":J
    const/4 v7, 0x0

    :try_start_3
    invoke-static {v0, v7, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 257
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v2

    .line 265
    const/4 v7, 0x2

    :try_start_4
    new-array v7, v7, [Ljava/lang/Long;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-wide v10, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileSize:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 279
    .end local v2    # "downloadSize":J
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    invoke-virtual {v8}, Lcom/taobao/update/AndroidHttpClient;->close()V

    .line 280
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    .line 282
    :try_start_5
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_18

    .line 287
    :goto_2
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_19

    .line 292
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1a

    .line 296
    :goto_4
    if-eqz v4, :cond_3

    .line 298
    :try_start_8
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1b

    .line 301
    :cond_3
    :goto_5
    throw v7

    .line 238
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 241
    const/4 v7, -0x6

    .line 279
    iget-object v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    invoke-virtual {v8}, Lcom/taobao/update/AndroidHttpClient;->close()V

    .line 280
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    .line 282
    :try_start_a
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 287
    :goto_6
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 292
    :goto_7
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 296
    :goto_8
    if-eqz v4, :cond_1

    .line 298
    :try_start_d
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_0

    .line 299
    :catch_1
    move-exception v1

    .line 300
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 283
    :catch_2
    move-exception v1

    .line 284
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 288
    :catch_3
    move-exception v1

    .line 289
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 293
    :catch_4
    move-exception v1

    .line 294
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 247
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 249
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 250
    const/4 v7, -0x7

    .line 279
    iget-object v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    invoke-virtual {v8}, Lcom/taobao/update/AndroidHttpClient;->close()V

    .line 280
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    .line 282
    :try_start_f
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 287
    :goto_9
    :try_start_10
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 292
    :goto_a
    :try_start_11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 296
    :goto_b
    if-eqz v4, :cond_1

    .line 298
    :try_start_12
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_0

    .line 299
    :catch_6
    move-exception v1

    .line 300
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 283
    :catch_7
    move-exception v1

    .line 284
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 288
    :catch_8
    move-exception v1

    .line 289
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 293
    :catch_9
    move-exception v1

    .line 294
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "downloadSize":J
    :catch_a
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 261
    const/4 v7, -0x6

    .line 279
    iget-object v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    invoke-virtual {v8}, Lcom/taobao/update/AndroidHttpClient;->close()V

    .line 280
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    .line 282
    :try_start_14
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .line 287
    :goto_c
    :try_start_15
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    .line 292
    :goto_d
    :try_start_16
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    .line 296
    :goto_e
    if-eqz v4, :cond_1

    .line 298
    :try_start_17
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    goto/16 :goto_0

    .line 299
    :catch_b
    move-exception v1

    .line 300
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 283
    :catch_c
    move-exception v1

    .line 284
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 288
    :catch_d
    move-exception v1

    .line 289
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 293
    :catch_e
    move-exception v1

    .line 294
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 268
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "downloadSize":J
    :cond_4
    const/4 v7, 0x1

    :try_start_18
    iput-boolean v7, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mInterrupt:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_1

    .line 273
    :cond_5
    :try_start_19
    iget-wide v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileSize:J

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_13
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    .line 274
    const/4 v7, 0x1

    .line 279
    iget-object v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    invoke-virtual {v8}, Lcom/taobao/update/AndroidHttpClient;->close()V

    .line 280
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    .line 282
    :try_start_1a
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10

    .line 287
    :goto_f
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 292
    :goto_10
    :try_start_1c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_12

    .line 296
    :goto_11
    if-eqz v4, :cond_1

    .line 298
    :try_start_1d
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_f

    goto/16 :goto_0

    .line 299
    :catch_f
    move-exception v1

    .line 300
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 283
    .end local v1    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v1

    .line 284
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 288
    .end local v1    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v1

    .line 289
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v1

    .line 294
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 275
    .end local v1    # "e":Ljava/io/IOException;
    :catch_13
    move-exception v1

    .line 276
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 279
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    iget-object v7, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    invoke-virtual {v7}, Lcom/taobao/update/AndroidHttpClient;->close()V

    .line 280
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    .line 282
    :try_start_1f
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_14

    .line 287
    :goto_12
    :try_start_20
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_15

    .line 292
    :goto_13
    :try_start_21
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_16

    .line 296
    :goto_14
    if-eqz v4, :cond_7

    .line 298
    :try_start_22
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_17

    .line 304
    :cond_7
    :goto_15
    const/4 v7, -0x7

    goto/16 :goto_0

    .line 283
    :catch_14
    move-exception v1

    .line 284
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 288
    .end local v1    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v1

    .line 289
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    :catch_16
    move-exception v1

    .line 294
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 299
    .end local v1    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v1

    .line 300
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 283
    .end local v1    # "e":Ljava/io/IOException;
    :catch_18
    move-exception v1

    .line 284
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 288
    .end local v1    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v1

    .line 289
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v1

    .line 294
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 299
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1b
    move-exception v1

    .line 300
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5
.end method

.method private getHeadInfoForCDN()Ljava/lang/String;
    .locals 10

    .prologue
    .line 354
    iget-object v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mResponse:Lorg/apache/http/HttpResponse;

    if-nez v8, :cond_0

    .line 355
    const-string v8, "HttpResponse is empty!"

    .line 373
    :goto_0
    return-object v8

    .line 357
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " statusCode-->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v8, " Via-->"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v7, "viaInfo":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mResponse:Lorg/apache/http/HttpResponse;

    const-string v9, "Via"

    invoke-interface {v8, v9}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    .line 362
    .local v3, "isVia":Z
    if-eqz v3, :cond_2

    .line 363
    iget-object v8, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mResponse:Lorg/apache/http/HttpResponse;

    const-string v9, "Via"

    invoke-interface {v8, v9}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    .line 364
    .local v6, "viaHeaders":[Lorg/apache/http/Header;
    move-object v0, v6

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 365
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v8, "||"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 368
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "viaHeaders":[Lorg/apache/http/Header;
    :goto_2
    const-string v8, "DefaultDownloader"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 370
    :cond_2
    const-string v8, "is empty!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public cancelDownload(Z)V
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mInterrupt:Z

    .line 108
    invoke-virtual {p0, p1}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->cancel(Z)Z

    .line 109
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 18
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mPreCheck:Z

    if-nez v14, :cond_0

    .line 153
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 218
    :goto_0
    return-object v14

    .line 154
    :cond_0
    const-string v14, "DefaultDownloader"

    const-string v15, "start download"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    new-instance v13, Ljava/net/URL;

    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .local v13, "url":Ljava/net/URL;
    new-instance v14, Ljava/io/File;

    invoke-virtual {v13}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileStorePath:Ljava/lang/String;

    invoke-direct {v2, v14, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v2, "apkfile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileStorePath:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".download"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v12, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFilePath:Ljava/lang/String;

    .line 168
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileSize:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-nez v14, :cond_1

    .line 170
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Long;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileSize:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileSize:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 171
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 159
    .end local v2    # "apkfile":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v12    # "tempFile":Ljava/io/File;
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 160
    .local v5, "e2":Ljava/net/MalformedURLException;
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 161
    const/4 v14, -0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 175
    .end local v5    # "e2":Ljava/net/MalformedURLException;
    .restart local v2    # "apkfile":Ljava/io/File;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v12    # "tempFile":Ljava/io/File;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_1
    const-string v14, "DefaultDownloader"

    invoke-static {v14}, Lcom/taobao/update/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lcom/taobao/update/AndroidHttpClient;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    .line 176
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-direct {v14, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 177
    const-wide/16 v10, 0x0

    .line 178
    .local v10, "prviousFileSize":J
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 180
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 181
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileSize:J

    cmp-long v14, v10, v14

    if-lez v14, :cond_4

    .line 183
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 184
    const-wide/16 v10, 0x0

    .line 189
    :cond_2
    :goto_1
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Long;

    const/4 v15, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileSize:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 191
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileSize:J

    cmp-long v14, v10, v14

    if-eqz v14, :cond_5

    .line 195
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mClient:Lcom/taobao/update/AndroidHttpClient;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v14, v15}, Lcom/taobao/update/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mResponse:Lorg/apache/http/HttpResponse;

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 201
    .local v7, "input":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 204
    .local v8, "outputStream":Ljava/io/RandomAccessFile;
    :try_start_2
    new-instance v8, Ljava/io/RandomAccessFile;

    .end local v8    # "outputStream":Ljava/io/RandomAccessFile;
    const-string v14, "rw"

    invoke-direct {v8, v12, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 209
    .restart local v8    # "outputStream":Ljava/io/RandomAccessFile;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->copy(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I

    move-result v9

    .line 215
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/RandomAccessFile;
    .local v9, "ret":I
    :goto_2
    const/4 v14, 0x1

    if-ne v9, v14, :cond_3

    .line 216
    invoke-virtual {v12, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 218
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 185
    .end local v9    # "ret":I
    :cond_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileSize:J

    cmp-long v14, v10, v14

    if-gez v14, :cond_2

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v15, "Range"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "bytes="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 197
    :catch_1
    move-exception v3

    .line 198
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    const/4 v14, -0x7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 205
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "input":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    .line 206
    .local v4, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 207
    const/4 v14, -0x6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 212
    .end local v4    # "e1":Ljava/io/FileNotFoundException;
    .end local v7    # "input":Ljava/io/InputStream;
    :cond_5
    const/4 v9, 0x1

    .restart local v9    # "ret":I
    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-static {v0}, Lcom/taobao/update/DefaultDownloader;->access$100(Lcom/taobao/update/DefaultDownloader;)Lcom/taobao/update/Downloader$OnDownloaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-static {v0}, Lcom/taobao/update/DefaultDownloader;->access$100(Lcom/taobao/update/DefaultDownloader;)Lcom/taobao/update/Downloader$OnDownloaderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFilePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/taobao/update/Downloader$OnDownloaderListener;->onDownloadFinsh(Ljava/lang/String;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-static {v0}, Lcom/taobao/update/DefaultDownloader;->access$100(Lcom/taobao/update/DefaultDownloader;)Lcom/taobao/update/Downloader$OnDownloaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 334
    :pswitch_0
    iget-object v0, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-static {v0}, Lcom/taobao/update/DefaultDownloader;->access$100(Lcom/taobao/update/DefaultDownloader;)Lcom/taobao/update/Downloader$OnDownloaderListener;

    move-result-object v0

    const/4 v1, -0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7f51\u7edc\u9519\u8bef CDN HEAD INFO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->getHeadInfoForCDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/update/Downloader$OnDownloaderListener;->onDownloadError(ILjava/lang/String;)V

    goto :goto_0

    .line 328
    :pswitch_1
    iget-object v0, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-static {v0}, Lcom/taobao/update/DefaultDownloader;->access$100(Lcom/taobao/update/DefaultDownloader;)Lcom/taobao/update/Downloader$OnDownloaderListener;

    move-result-object v0

    const/4 v1, -0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url\u9519\u8bef CDN HEAD INFO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->getHeadInfoForCDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/update/Downloader$OnDownloaderListener;->onDownloadError(ILjava/lang/String;)V

    goto :goto_0

    .line 331
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-static {v0}, Lcom/taobao/update/DefaultDownloader;->access$100(Lcom/taobao/update/DefaultDownloader;)Lcom/taobao/update/Downloader$OnDownloaderListener;

    move-result-object v0

    const/4 v1, -0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6587\u4ef6\u8bfb\u5199\u9519\u8bef CDN HEAD INFO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->getHeadInfoForCDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/update/Downloader$OnDownloaderListener;->onDownloadError(ILjava/lang/String;)V

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 10

    .prologue
    .line 114
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 118
    iget-object v6, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-static {v6}, Lcom/taobao/update/DefaultDownloader;->access$000(Lcom/taobao/update/DefaultDownloader;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 119
    iget-object v6, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-static {v6}, Lcom/taobao/update/DefaultDownloader;->access$100(Lcom/taobao/update/DefaultDownloader;)Lcom/taobao/update/Downloader$OnDownloaderListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 120
    iget-object v6, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-static {v6}, Lcom/taobao/update/DefaultDownloader;->access$100(Lcom/taobao/update/DefaultDownloader;)Lcom/taobao/update/Downloader$OnDownloaderListener;

    move-result-object v6

    const/4 v7, -0x3

    const-string v8, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-interface {v6, v7, v8}, Lcom/taobao/update/Downloader$OnDownloaderListener;->onDownloadError(ILjava/lang/String;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileStorePath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, "storePath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 129
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 131
    :cond_2
    const/4 v1, 0x0

    .line 133
    .local v1, "statfs":Landroid/os/StatFs;
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "statfs":Landroid/os/StatFs;
    .local v2, "statfs":Landroid/os/StatFs;
    move-object v1, v2

    .line 137
    .end local v2    # "statfs":Landroid/os/StatFs;
    .restart local v1    # "statfs":Landroid/os/StatFs;
    :goto_1
    const-wide/16 v4, 0x0

    .line 138
    .local v4, "totalSpace":J
    if-eqz v1, :cond_3

    .line 139
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v4, v6, v8

    .line 140
    :cond_3
    iget-wide v6, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mFileSize:J

    const-wide/32 v8, 0x200000

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    .line 141
    iget-object v6, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-static {v6}, Lcom/taobao/update/DefaultDownloader;->access$100(Lcom/taobao/update/DefaultDownloader;)Lcom/taobao/update/Downloader$OnDownloaderListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 142
    iget-object v6, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-static {v6}, Lcom/taobao/update/DefaultDownloader;->access$100(Lcom/taobao/update/DefaultDownloader;)Lcom/taobao/update/Downloader$OnDownloaderListener;

    move-result-object v6

    const/4 v7, -0x2

    const-string v8, "\u7cfb\u7edf\u7a7a\u95f4\u4e0d\u8db3"

    invoke-interface {v6, v7, v8}, Lcom/taobao/update/Downloader$OnDownloaderListener;->onDownloadError(ILjava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v4    # "totalSpace":J
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "totalSpace":J
    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->mPreCheck:Z

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Long;)V
    .locals 6
    .param p1, "progress"    # [Ljava/lang/Long;

    .prologue
    const/16 v1, 0x64

    .line 310
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 311
    .local v0, "tmpProgress":I
    if-le v0, v1, :cond_0

    move v0, v1

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-static {v1}, Lcom/taobao/update/DefaultDownloader;->access$100(Lcom/taobao/update/DefaultDownloader;)Lcom/taobao/update/Downloader$OnDownloaderListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/taobao/update/DefaultDownloader$DownloadTask;->this$0:Lcom/taobao/update/DefaultDownloader;

    invoke-static {v1}, Lcom/taobao/update/DefaultDownloader;->access$100(Lcom/taobao/update/DefaultDownloader;)Lcom/taobao/update/Downloader$OnDownloaderListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/taobao/update/Downloader$OnDownloaderListener;->onDownloadProgress(I)V

    .line 314
    :cond_1
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->onProgressUpdate([Ljava/lang/Long;)V

    return-void
.end method
