.class public Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;
.super Landroid/os/AsyncTask;
.source "AppDownload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

.field private mDownloadPause:Z

.field private mDownloadStop:Z

.field private mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;)V
    .locals 2
    .param p1, "onAppDownloadListener"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadStop:Z

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadPause:Z

    .line 22
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    .line 25
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;

    .line 26
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    .line 27
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 24
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 39
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadStop:Z

    .line 40
    const/16 v18, 0x0

    .line 41
    .local v18, "posted":Z
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->publishProgress([Ljava/lang/Object;)V

    .line 42
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    if-gez v21, :cond_0

    .line 43
    const/16 v21, 0x7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 115
    :goto_0
    return-object v21

    .line 45
    :cond_0
    const/16 v16, 0x0

    .line 46
    .local v16, "mFileSize":I
    const/16 v21, 0x0

    aget-object v13, p1, v21

    .line 48
    .local v13, "id":Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v15, p1, v21

    .line 49
    .local v15, "link":Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v19, p1, v21

    .line 51
    .local v19, "time":Ljava/lang/String;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getGiftZipResourcesDirPath()Ljava/lang/String;

    move-result-object v17

    .line 52
    .local v17, "path":Ljava/lang/String;
    const/16 v2, 0x400

    .line 53
    .local v2, "BUFFER_SIZE":I
    const/4 v3, 0x0

    .line 54
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v11, 0x0

    .line 55
    .local v11, "fos":Ljava/io/RandomAccessFile;
    const/16 v21, 0x400

    move/from16 v0, v21

    new-array v5, v0, [B

    .line 56
    .local v5, "buf":[B
    const/4 v7, 0x0

    .line 57
    .local v7, "curPosition":I
    new-instance v8, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v8, "destFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 59
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 62
    :cond_1
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :try_start_1
    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    .local v20, "url":Ljava/net/URL;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 70
    .local v6, "conn":Ljava/net/URLConnection;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 71
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v16

    .line 72
    if-nez v16, :cond_2

    .line 73
    const/16 v21, 0xa

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v21

    goto :goto_0

    .line 63
    .end local v6    # "conn":Ljava/net/URLConnection;
    .end local v20    # "url":Ljava/net/URL;
    :catch_0
    move-exception v10

    .line 64
    .local v10, "e1":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    const/16 v21, 0xb

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto :goto_0

    .line 75
    .end local v10    # "e1":Ljava/io/IOException;
    .restart local v6    # "conn":Ljava/net/URLConnection;
    .restart local v20    # "url":Ljava/net/URL;
    :cond_2
    const/16 v21, 0x3

    :try_start_2
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->publishProgress([Ljava/lang/Object;)V

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setDirPath(Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setName(Ljava/lang/String;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setFullPath(Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setSize(I)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setUUID(Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setTime(Ljava/lang/String;)V

    .line 83
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string/jumbo v21, "rw"

    move-object/from16 v0, v21

    invoke-direct {v12, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 84
    .end local v11    # "fos":Ljava/io/RandomAccessFile;
    .local v12, "fos":Ljava/io/RandomAccessFile;
    :try_start_3
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 85
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "bis":Ljava/io/BufferedInputStream;
    :cond_3
    :goto_1
    move/from16 v0, v16

    if-ge v7, v0, :cond_6

    .line 86
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadStop:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 87
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 88
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 89
    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto/16 :goto_0

    .line 91
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadPause:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 92
    const-wide/16 v22, 0x3e8

    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V

    .line 93
    if-nez v18, :cond_3

    .line 94
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->publishProgress([Ljava/lang/Object;)V

    .line 95
    const/16 v18, 0x1

    goto :goto_1

    .line 99
    :cond_5
    const/16 v18, 0x0

    .line 100
    const/16 v21, 0x0

    const/16 v22, 0x400

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v5, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v14

    .line 101
    .local v14, "len":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_7

    .line 109
    .end local v14    # "len":I
    :cond_6
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 110
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 115
    const/16 v21, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto/16 :goto_0

    .line 104
    .restart local v14    # "len":I
    :cond_7
    const/16 v21, 0x0

    :try_start_5
    move/from16 v0, v21

    invoke-virtual {v12, v5, v0, v14}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 105
    add-int/2addr v7, v14

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setCurSize(I)V

    .line 107
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->publishProgress([Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 111
    .end local v14    # "len":I
    :catch_1
    move-exception v9

    move-object v11, v12

    .end local v12    # "fos":Ljava/io/RandomAccessFile;
    .restart local v11    # "fos":Ljava/io/RandomAccessFile;
    move-object v3, v4

    .line 112
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "conn":Ljava/net/URLConnection;
    .end local v20    # "url":Ljava/net/URL;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v9, "e":Ljava/lang/Exception;
    :goto_2
    sget-boolean v21, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v21, :cond_8

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    :cond_8
    const/16 v21, 0x8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto/16 :goto_0

    .line 111
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    goto :goto_2

    .end local v11    # "fos":Ljava/io/RandomAccessFile;
    .restart local v6    # "conn":Ljava/net/URLConnection;
    .restart local v12    # "fos":Ljava/io/RandomAccessFile;
    .restart local v20    # "url":Ljava/net/URL;
    :catch_3
    move-exception v9

    move-object v11, v12

    .end local v12    # "fos":Ljava/io/RandomAccessFile;
    .restart local v11    # "fos":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    invoke-interface {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;->onEvent(ILcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V

    .line 129
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;

    .line 130
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    invoke-interface {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;->onCompletion(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 135
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 150
    :goto_0
    :pswitch_0
    return-void

    .line 137
    :pswitch_1
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    invoke-interface {v1, v3, v2}, Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;->onEvent(ILcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    invoke-interface {v1, v4, v2}, Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;->onEvent(ILcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V

    goto :goto_0

    .line 143
    :pswitch_3
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    invoke-interface {v1, v5, v2}, Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;->onEvent(ILcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V

    goto :goto_0

    .line 146
    :pswitch_4
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 147
    .local v0, "result":I
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;

    invoke-interface {v1, v0}, Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;->onProgress(I)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadPause:Z

    .line 35
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->mDownloadStop:Z

    .line 31
    return-void
.end method
