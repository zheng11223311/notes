.class public final Lcom/tudou/service/download/FileDownloadThread;
.super Ljava/lang/Thread;
.source "FileDownloadThread.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "FileDownloadThread"


# instance fields
.field DOWNLOAD_PID:I

.field TUDOU_PID:I

.field private cancel:Z

.field private download:Lcom/tudou/service/download/DownloadServiceManager;

.field private headerSize:I

.field private header_buf:[B

.field private info:Lcom/tudou/service/download/DownloadInfo;

.field private isEncryption:Z

.field private pause:Z

.field private serverSize:I


# direct methods
.method public constructor <init>(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v1, 0x0

    .line 53
    const-string v0, "FileDownloadThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 48
    iput-boolean v1, p0, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    .line 49
    iput-boolean v1, p0, Lcom/tudou/service/download/FileDownloadThread;->pause:Z

    .line 50
    iput v1, p0, Lcom/tudou/service/download/FileDownloadThread;->serverSize:I

    .line 99
    iput-boolean v1, p0, Lcom/tudou/service/download/FileDownloadThread;->isEncryption:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->header_buf:[B

    .line 103
    iput v1, p0, Lcom/tudou/service/download/FileDownloadThread;->headerSize:I

    .line 54
    iput-object p1, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    .line 55
    invoke-static {}, Lcom/tudou/service/download/DownloadServiceManager;->getInstance()Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    .line 56
    return-void
.end method

.method private checkAndGetFile(Lcom/tudou/service/download/DownloadInfo;)Ljava/io/File;
    .locals 14
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    .line 316
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/tudou/service/download/DownloadInfo;->FORMAT_POSTFIX:[Ljava/lang/String;

    iget v10, p1, Lcom/tudou/service/download/DownloadInfo;->format:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 319
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 320
    .local v4, "len":J
    iget-boolean v8, p0, Lcom/tudou/service/download/FileDownloadThread;->isEncryption:Z

    if-eqz v8, :cond_0

    .line 321
    iget v8, p0, Lcom/tudou/service/download/FileDownloadThread;->headerSize:I

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-ltz v8, :cond_1

    .line 322
    iget v8, p0, Lcom/tudou/service/download/FileDownloadThread;->headerSize:I

    int-to-long v8, v8

    sub-long/2addr v4, v8

    .line 341
    :cond_0
    iget-wide v8, p1, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    cmp-long v8, v8, v4

    if-eqz v8, :cond_6

    .line 342
    iput-wide v4, p1, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    .line 343
    move-wide v6, v4

    .line 344
    .local v6, "size":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_5

    .line 345
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    aget-wide v8, v3, v2

    add-long/2addr v6, v8

    .line 344
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v2    # "i":I
    .end local v6    # "size":J
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 326
    invoke-static {v1}, Lcom/youku/util/Util;->deleteFile(Ljava/io/File;)V

    .line 328
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    iput-wide v12, p1, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    .line 333
    const-wide/16 v6, 0x0

    .line 334
    .restart local v6    # "size":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget v3, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    .line 335
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    aget-wide v8, v3, v2

    add-long/2addr v6, v8

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 329
    .end local v2    # "i":I
    .end local v6    # "size":J
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v3

    .line 382
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "len":J
    :cond_3
    :goto_2
    return-object v1

    .line 337
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v4    # "len":J
    .restart local v6    # "size":J
    :cond_4
    iput-wide v6, p1, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    goto :goto_2

    .line 347
    :cond_5
    iput-wide v6, p1, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    goto :goto_2

    .line 348
    .end local v2    # "i":I
    .end local v6    # "size":J
    :cond_6
    iget v8, p1, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    iget-wide v8, p1, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    cmp-long v8, v8, v4

    if-eqz v8, :cond_7

    .line 349
    iput-wide v4, p1, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    goto :goto_2

    .line 350
    :cond_7
    iget-wide v8, p1, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    iget-object v10, p1, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    iget v11, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v11, v11, -0x1

    aget-wide v10, v10, v11

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 352
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 353
    invoke-static {v1}, Lcom/youku/util/Util;->deleteFile(Ljava/io/File;)V

    .line 355
    :cond_8
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 359
    iput-wide v12, p1, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    .line 360
    const-wide/16 v6, 0x0

    .line 361
    .restart local v6    # "size":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget v3, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_9

    .line 362
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    aget-wide v8, v3, v2

    add-long/2addr v6, v8

    .line 361
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 356
    .end local v2    # "i":I
    .end local v6    # "size":J
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v3

    .line 357
    goto :goto_2

    .line 364
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v6    # "size":J
    :cond_9
    iput-wide v6, p1, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    goto :goto_2

    .line 368
    .end local v2    # "i":I
    .end local v4    # "len":J
    .end local v6    # "size":J
    :cond_a
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 369
    invoke-static {v1}, Lcom/youku/util/Util;->deleteFile(Ljava/io/File;)V

    .line 371
    :cond_b
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 375
    iput-wide v12, p1, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    .line 376
    const-wide/16 v6, 0x0

    .line 377
    .restart local v6    # "size":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget v3, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_c

    .line 378
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    aget-wide v8, v3, v2

    add-long/2addr v6, v8

    .line 377
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 372
    .end local v2    # "i":I
    .end local v6    # "size":J
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v3

    .line 373
    goto :goto_2

    .line 380
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v6    # "size":J
    :cond_c
    iput-wide v6, p1, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    goto :goto_2
.end method

.method private downloadSegment(Lcom/tudou/service/download/DownloadInfo;)Z
    .locals 26
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 153
    invoke-direct/range {p0 .. p1}, Lcom/tudou/service/download/FileDownloadThread;->checkAndGetFile(Lcom/tudou/service/download/DownloadInfo;)Ljava/io/File;

    move-result-object v14

    .line 154
    .local v14, "f":Ljava/io/File;
    if-nez v14, :cond_1

    .line 155
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    .line 156
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 157
    const/16 v19, 0x0

    .line 305
    :cond_0
    :goto_0
    return v19

    .line 159
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-wide v20, v19, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    move-wide/from16 v22, v0

    cmp-long v19, v20, v22

    if-nez v19, :cond_2

    .line 161
    const/16 v19, 0x1

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/tudou/service/download/FileDownloadThread;->getInputStreamFromURL(Lcom/tudou/service/download/DownloadInfo;)Ljava/io/InputStream;

    move-result-object v15

    .line 164
    .local v15, "is":Ljava/io/InputStream;
    if-nez v15, :cond_4

    .line 165
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 166
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionInfo()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 169
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    .line 170
    const/16 v19, 0x0

    goto :goto_0

    .line 172
    :cond_4
    const/4 v4, 0x0

    .line 173
    .local v4, "bis":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 174
    .local v6, "bos":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-wide v12, v19, v20

    .line 175
    .local v12, "endPosition":J
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    .line 177
    .local v10, "curPosition":J
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/FileDownloadThread;->serverSize:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/FileDownloadThread;->serverSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v22, v12, v10

    cmp-long v19, v20, v22

    if-gez v19, :cond_b

    .line 178
    const-string v19, "0014"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    .line 179
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    .line 181
    new-instance v19, Ljava/io/IOException;

    invoke-direct/range {v19 .. v19}, Ljava/io/IOException;-><init>()V

    throw v19
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :catch_0
    move-exception v9

    .line 236
    .local v9, "e":Ljava/net/SocketTimeoutException;
    :goto_1
    :try_start_1
    const-string v19, "0015"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    .line 237
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 240
    :cond_5
    const-string v19, "FileDownloadThread"

    const-string v20, "SocketTimeoutException()"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 242
    const/16 v19, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 243
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 245
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionInfo()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    :cond_7
    if-eqz v6, :cond_8

    .line 297
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 298
    :cond_8
    if-eqz v4, :cond_9

    .line 299
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 300
    :cond_9
    if-eqz v15, :cond_a

    .line 301
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e

    .line 305
    .end local v9    # "e":Ljava/net/SocketTimeoutException;
    :cond_a
    :goto_2
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 183
    :cond_b
    :try_start_3
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v5, "bis":Ljava/io/BufferedInputStream;
    :try_start_4
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 186
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .local v7, "bos":Ljava/io/BufferedOutputStream;
    :try_start_5
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/tudou/service/download/DownloadInfo;->isEncryption:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 187
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/FileDownloadThread;->headerSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v19, v20, v22

    if-gez v19, :cond_c

    .line 188
    const-string v19, "Download_Encryption"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u5bf9\u7b2c"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u4e2a\u5206\u7247\u5934\u52a0\u5bc6"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v19, "Download_Encryption"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u52a0\u5bc6\u957f\u5ea6\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/FileDownloadThread;->headerSize:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/service/download/FileDownloadThread;->header_buf:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 193
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/FileDownloadThread;->headerSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v10, v10, v20

    .line 194
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/FileDownloadThread;->headerSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    .line 197
    :cond_d
    const/16 v16, 0x0

    .line 198
    .local v16, "len":I
    const/16 v19, 0x1000

    move/from16 v0, v19

    new-array v8, v0, [B

    .line 201
    .local v8, "buf":[B
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    move/from16 v19, v0

    if-nez v19, :cond_1d

    cmp-long v19, v10, v12

    if-gez v19, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v19

    if-nez v19, :cond_1d

    const/16 v19, 0x0

    const/16 v20, 0x1000

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v8, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v16

    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_1d

    .line 202
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v7, v8, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 203
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v10, v10, v20

    .line 204
    cmp-long v19, v10, v12

    if-lez v19, :cond_10

    .line 205
    const-string v19, "FileDownloadThread"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "curPosition > endPosition,curPosition\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",endPosition:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    move-wide/from16 v20, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v24, v10, v12

    sub-long v22, v22, v24

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    .line 209
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    move-wide/from16 v20, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v24, v10, v12

    sub-long v22, v22, v24

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    .line 220
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 221
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v22

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/tudou/service/download/DownloadInfo;->size:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/tudou/service/download/DownloadInfo;->setProgress(D)V

    .line 223
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/tudou/service/download/FileDownloadThread;->sdCardFree()J

    move-result-wide v20

    const-wide/32 v22, 0xa00000

    cmp-long v19, v20, v22

    if-gtz v19, :cond_1c

    .line 224
    new-instance v19, Ljava/io/IOException;

    invoke-direct/range {v19 .. v19}, Ljava/io/IOException;-><init>()V

    throw v19

    .line 235
    .end local v8    # "buf":[B
    .end local v16    # "len":I
    :catch_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_1

    .line 211
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "buf":[B
    .restart local v16    # "len":I
    :cond_10
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/tudou/service/download/DownloadInfo;->isEncryption:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/FileDownloadThread;->headerSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v20, v10, v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    .line 213
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    move-wide/from16 v20, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 247
    .end local v8    # "buf":[B
    .end local v16    # "len":I
    :catch_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 248
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v9, "e":Ljava/net/SocketException;
    :goto_4
    :try_start_6
    const-string v19, "0018"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    .line 249
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    .line 252
    :cond_11
    const-string v19, "FileDownloadThread"

    const-string v20, "SocketException()"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v19

    if-eqz v19, :cond_24

    .line 254
    const/16 v19, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 255
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 260
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionInfo()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 296
    :cond_12
    if-eqz v6, :cond_13

    .line 297
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 298
    :cond_13
    if-eqz v4, :cond_14

    .line 299
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 300
    :cond_14
    if-eqz v15, :cond_a

    .line 301
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 302
    :catch_3
    move-exception v19

    goto/16 :goto_2

    .line 215
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "e":Ljava/net/SocketException;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "buf":[B
    .restart local v16    # "len":I
    :cond_15
    :try_start_8
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    .line 216
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    move-wide/from16 v20, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_3

    .line 262
    .end local v8    # "buf":[B
    .end local v16    # "len":I
    :catch_4
    move-exception v9

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 263
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v9, "e":Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string v19, "0017"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    .line 264
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_19

    .line 271
    :cond_16
    const-string v19, "FileDownloadThread"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FileDownloadThread.run(???)"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "/tudou/offlinedata/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 273
    .local v18, "temp":[Ljava/lang/String;
    new-instance v17, Lcom/tudou/service/download/SDCardManager;

    const/16 v19, 0x0

    aget-object v19, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 274
    .local v17, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual/range {v17 .. v17}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v19

    if-nez v19, :cond_28

    .line 275
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionInfo()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;J)V

    .line 287
    :cond_17
    :goto_7
    const-string v19, "pop_sdcard"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    move/from16 v19, v0

    if-nez v19, :cond_18

    .line 289
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 291
    :cond_18
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 296
    .end local v17    # "m":Lcom/tudou/service/download/SDCardManager;
    .end local v18    # "temp":[Ljava/lang/String;
    :cond_19
    if-eqz v6, :cond_1a

    .line 297
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 298
    :cond_1a
    if-eqz v4, :cond_1b

    .line 299
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 300
    :cond_1b
    if-eqz v15, :cond_a

    .line 301
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_2

    .line 302
    :catch_5
    move-exception v19

    goto/16 :goto_2

    .line 226
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "buf":[B
    .restart local v16    # "len":I
    :cond_1c
    :goto_8
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/service/download/FileDownloadThread;->pause:Z

    move/from16 v19, v0
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v19, :cond_e

    .line 228
    const-wide/16 v20, 0x1f4

    :try_start_c
    invoke-static/range {v20 .. v21}, Lcom/tudou/service/download/FileDownloadThread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_8

    .line 229
    :catch_6
    move-exception v19

    goto :goto_8

    .line 233
    :cond_1d
    cmp-long v19, v10, v12

    if-ltz v19, :cond_20

    .line 234
    const/16 v19, 0x1

    .line 296
    if-eqz v7, :cond_1e

    .line 297
    :try_start_d
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 298
    :cond_1e
    if-eqz v5, :cond_1f

    .line 299
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 300
    :cond_1f
    if-eqz v15, :cond_0

    .line 301
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    .line 302
    :catch_7
    move-exception v20

    goto/16 :goto_0

    .line 296
    :cond_20
    if-eqz v7, :cond_21

    .line 297
    :try_start_e
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 298
    :cond_21
    if-eqz v5, :cond_22

    .line 299
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 300
    :cond_22
    if-eqz v15, :cond_23

    .line 301
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :cond_23
    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 303
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_2

    .line 302
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v19

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 304
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_2

    .line 257
    .end local v8    # "buf":[B
    .end local v16    # "len":I
    .local v9, "e":Ljava/net/SocketException;
    :cond_24
    const/16 v19, 0x2

    :try_start_f
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 258
    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_5

    .line 295
    .end local v9    # "e":Ljava/net/SocketException;
    :catchall_0
    move-exception v19

    .line 296
    :goto_9
    if-eqz v6, :cond_25

    .line 297
    :try_start_10
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 298
    :cond_25
    if-eqz v4, :cond_26

    .line 299
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 300
    :cond_26
    if-eqz v15, :cond_27

    .line 301
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 303
    :cond_27
    :goto_a
    throw v19

    .line 277
    .local v9, "e":Ljava/io/IOException;
    .restart local v17    # "m":Lcom/tudou/service/download/SDCardManager;
    .restart local v18    # "temp":[Ljava/lang/String;
    :cond_28
    :try_start_11
    invoke-virtual/range {v17 .. v17}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/tudou/service/download/DownloadInfo;->size:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_29

    invoke-virtual/range {v17 .. v17}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v20

    const-wide/32 v22, 0xa00000

    cmp-long v19, v20, v22

    if-gtz v19, :cond_2a

    .line 279
    :cond_29
    const/16 v19, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionInfo()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;J)V

    .line 281
    const-string v19, "curdownloadinfo"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v19, "firstToCache"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 283
    :cond_2a
    const-string v19, "pop_sdcard"

    const-string v20, "pop_sdcard"

    const-string v21, ""

    invoke-static/range {v20 .. v21}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 285
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_7

    .line 302
    .end local v9    # "e":Ljava/io/IOException;
    .end local v17    # "m":Lcom/tudou/service/download/SDCardManager;
    .end local v18    # "temp":[Ljava/lang/String;
    :catch_9
    move-exception v20

    goto :goto_a

    .line 295
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v19

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_9

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v19

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_9

    .line 262
    :catch_a
    move-exception v9

    goto/16 :goto_6

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    :catch_b
    move-exception v9

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_6

    .line 247
    :catch_c
    move-exception v9

    goto/16 :goto_4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    :catch_d
    move-exception v9

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_4

    .line 302
    .local v9, "e":Ljava/net/SocketTimeoutException;
    :catch_e
    move-exception v19

    goto/16 :goto_2

    .line 235
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v9    # "e":Ljava/net/SocketTimeoutException;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    :catch_f
    move-exception v9

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_1
.end method

.method private downloadTask()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 124
    :goto_0
    iget-boolean v0, p0, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iget v0, v0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    iget-object v1, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iget v1, v1, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0, v0}, Lcom/tudou/service/download/FileDownloadThread;->downloadSegment(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_1
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iget v0, v0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    iget-object v1, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iget v1, v1, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    if-ne v0, v1, :cond_2

    .line 128
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    iget-object v1, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iget v1, v1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-wide v2, v2, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 130
    iput-boolean v4, p0, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    .line 131
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v0, v4}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 133
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iput-object v5, v0, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    goto :goto_1

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iget v1, v0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    .line 139
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iput-object v5, v0, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private getAppPid()V
    .locals 7

    .prologue
    .line 572
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 574
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 576
    .local v3, "mRunningProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 577
    .local v0, "amProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v4, "com.tudou.android"

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 578
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v4, p0, Lcom/tudou/service/download/FileDownloadThread;->TUDOU_PID:I

    .line 585
    .end local v0    # "amProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iput v4, p0, Lcom/tudou/service/download/FileDownloadThread;->DOWNLOAD_PID:I

    .line 586
    const-string v4, "FileDownloadThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TUDOU_PID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/tudou/service/download/FileDownloadThread;->TUDOU_PID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --DOWNLOAD_PID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/tudou/service/download/FileDownloadThread;->DOWNLOAD_PID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method private getHotLinkPro(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;
    .locals 12
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const-wide v10, 0x41612a8800000000L    # 9000000.0

    const/4 v7, 0x0

    .line 464
    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->segsfileId:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v8, p1, Lcom/tudou/service/download/DownloadInfo;->getUrlTime:J

    sub-long/2addr v2, v8

    long-to-double v2, v2

    cmpl-double v2, v2, v10

    if-lez v2, :cond_3

    .line 468
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v8, p1, Lcom/tudou/service/download/DownloadInfo;->getUrlTime:J

    sub-long/2addr v2, v8

    long-to-double v2, v2

    cmpl-double v2, v2, v10

    if-lez v2, :cond_1

    .line 469
    const-string v2, "0011"

    iput-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    .line 470
    :cond_1
    invoke-static {p1, v7}, Lcom/tudou/service/download/DownloadUtils;->getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 471
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 472
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 477
    :cond_2
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionInfo()Ljava/lang/String;

    move-result-object v2

    iget-wide v8, p1, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    invoke-static {v2, v8, v9}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;J)V

    move-object v6, v7

    .line 502
    :goto_0
    return-object v6

    .line 481
    :cond_3
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 483
    .local v5, "is":Ljava/io/InputStream;
    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    iget v3, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 484
    .local v0, "segUrl":Ljava/lang/String;
    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->segsfileId:[Ljava/lang/String;

    iget v3, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 485
    .local v1, "segfileId":Ljava/lang/String;
    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->oip:Ljava/lang/String;

    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->sid:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/baseproject/utils/Util;->getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 487
    const/4 v6, 0x0

    .line 488
    .local v6, "url":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/tudou/service/download/DownloadUtils;->getLocation(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 489
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 491
    :cond_4
    invoke-direct {p0, p1}, Lcom/tudou/service/download/FileDownloadThread;->refreshData(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v6, v7

    .line 492
    goto :goto_0

    .line 494
    :cond_5
    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    iget v3, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 495
    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->segsfileId:[Ljava/lang/String;

    iget v3, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 496
    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->oip:Ljava/lang/String;

    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->sid:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/baseproject/utils/Util;->getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 498
    const-string v2, "FileDownloadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {p1, v0}, Lcom/tudou/service/download/DownloadUtils;->getLocation(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 501
    :cond_6
    iput-object v6, p1, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private getInputStreamFromURL(Lcom/tudou/service/download/DownloadInfo;)Ljava/io/InputStream;
    .locals 9
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 392
    invoke-direct {p0, p1}, Lcom/tudou/service/download/FileDownloadThread;->getUrl(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-object v3

    .line 398
    :cond_1
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 399
    .local v0, "con":Ljava/net/HttpURLConnection;
    const/16 v4, 0x7530

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 400
    const/16 v4, 0x7530

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 401
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 402
    const-string v4, "User-Agent"

    sget-object v5, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v4, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 406
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    iput v4, p0, Lcom/tudou/service/download/FileDownloadThread;->serverSize:I

    .line 408
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x194

    if-eq v4, v5, :cond_0

    .line 411
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 415
    .end local v0    # "con":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/net/SocketTimeoutException;
    const-string v4, "FileDownloadThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SocketTimeoutException--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v4, "0018"

    iput-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    .line 418
    iput-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    .line 419
    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    const-string v5, "cmcc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    const-string v5, "CMCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 421
    :cond_2
    iput-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 427
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v1

    .line 428
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "FileDownloadThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    const-string v5, "cmcc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    const-string v5, "CMCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 431
    :cond_3
    iput-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 435
    :cond_4
    iget v4, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    iget v5, p1, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    if-ne v4, v5, :cond_0

    .line 436
    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    iget v5, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    iget-wide v6, p1, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 437
    invoke-virtual {p1, v8}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    goto/16 :goto_0

    .line 412
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto/16 :goto_0
.end method

.method private getTudouUrl(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-object v0, p1, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    .line 508
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 509
    :cond_0
    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_4

    .line 510
    :cond_1
    invoke-static {p1, v1}, Lcom/tudou/service/download/DownloadUtils;->getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 511
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 512
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 516
    :cond_2
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionInfo()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;J)V

    .line 531
    :cond_3
    :goto_0
    return-object v1

    .line 520
    :cond_4
    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    iget v3, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-static {p1, v2}, Lcom/tudou/service/download/DownloadUtils;->getLocation(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 523
    :cond_5
    invoke-direct {p0, p1}, Lcom/tudou/service/download/FileDownloadThread;->refreshData(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 526
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    iget v2, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Lcom/tudou/service/download/DownloadUtils;->getLocation(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    :cond_6
    iput-object v0, p1, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    .line 530
    :cond_7
    const-string v1, "FileDownloadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 531
    goto :goto_0
.end method

.method private getUrl(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 455
    iget-boolean v0, p1, Lcom/tudou/service/download/DownloadInfo;->hotlink:Z

    if-eqz v0, :cond_0

    .line 456
    invoke-direct {p0, p1}, Lcom/tudou/service/download/FileDownloadThread;->getHotLinkPro(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;

    move-result-object v0

    .line 458
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tudou/service/download/FileDownloadThread;->getTudouUrl(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initEncryptHeaderInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    iget-object v1, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-boolean v1, v1, Lcom/tudou/service/download/DownloadInfo;->isEncryption:Z

    iput-boolean v1, p0, Lcom/tudou/service/download/FileDownloadThread;->isEncryption:Z

    .line 107
    iget-boolean v1, p0, Lcom/tudou/service/download/FileDownloadThread;->isEncryption:Z

    if-eqz v1, :cond_1

    .line 109
    new-instance v0, Lcom/youku/uplayer/EncryptHeaderInfo;

    invoke-direct {v0}, Lcom/youku/uplayer/EncryptHeaderInfo;-><init>()V

    .line 110
    .local v0, "headerInfo":Lcom/youku/uplayer/EncryptHeaderInfo;
    invoke-static {v0, v2, v2}, Lcom/youku/uplayer/UEncrypt;->getEncryptHeaderInfo(Lcom/youku/uplayer/EncryptHeaderInfo;II)V

    .line 111
    iget-object v1, v0, Lcom/youku/uplayer/EncryptHeaderInfo;->header_buf:[B

    iput-object v1, p0, Lcom/tudou/service/download/FileDownloadThread;->header_buf:[B

    .line 112
    iget-object v1, p0, Lcom/tudou/service/download/FileDownloadThread;->header_buf:[B

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/tudou/service/download/FileDownloadThread;->header_buf:[B

    array-length v1, v1

    iput v1, p0, Lcom/tudou/service/download/FileDownloadThread;->headerSize:I

    .line 116
    :cond_0
    invoke-static {}, Lcom/youku/uplayer/UEncrypt;->freeHeader()V

    .line 118
    .end local v0    # "headerInfo":Lcom/youku/uplayer/EncryptHeaderInfo;
    :cond_1
    return-void
.end method

.method private refreshData(Lcom/tudou/service/download/DownloadInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v2, 0x5

    .line 540
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tudou/service/download/DownloadUtils;->getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 541
    iget-boolean v0, p0, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    if-nez v0, :cond_1

    .line 542
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 545
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 551
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 553
    :goto_1
    return v0

    .line 547
    :cond_2
    invoke-virtual {p1, v2}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    goto :goto_0

    .line 553
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private sdCardFree()J
    .locals 4

    .prologue
    .line 564
    iget-object v2, p0, Lcom/tudou/service/download/FileDownloadThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadServiceManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, "savePath":Ljava/lang/String;
    new-instance v0, Lcom/tudou/service/download/SDCardManager;

    invoke-direct {v0, v1}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 567
    const-wide/16 v2, 0x0

    .line 568
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v2

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/service/download/FileDownloadThread;->pause:Z

    .line 69
    return-void
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    .line 560
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goOn()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/service/download/FileDownloadThread;->pause:Z

    .line 64
    return-void
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/service/download/FileDownloadThread;->pause:Z

    .line 60
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 81
    invoke-direct {p0}, Lcom/tudou/service/download/FileDownloadThread;->getAppPid()V

    .line 82
    iget v0, p0, Lcom/tudou/service/download/FileDownloadThread;->TUDOU_PID:I

    iget v1, p0, Lcom/tudou/service/download/FileDownloadThread;->DOWNLOAD_PID:I

    if-ne v0, v1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_3

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0, v0}, Lcom/tudou/service/download/FileDownloadThread;->refreshData(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    :cond_3
    iget-boolean v0, p0, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    if-nez v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 92
    :cond_4
    invoke-direct {p0}, Lcom/tudou/service/download/FileDownloadThread;->initEncryptHeaderInfo()V

    .line 93
    const-string v0, "FileDownloadThread"

    iget-object v1, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/tudou/service/download/FileDownloadThread;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {v0, v2}, Lcom/tudou/service/download/DownloadUtils;->makeM3U8File(Lcom/tudou/service/download/DownloadInfo;Z)V

    .line 95
    invoke-direct {p0}, Lcom/tudou/service/download/FileDownloadThread;->downloadTask()V

    .line 96
    iput-boolean v2, p0, Lcom/tudou/service/download/FileDownloadThread;->cancel:Z

    goto :goto_0
.end method
