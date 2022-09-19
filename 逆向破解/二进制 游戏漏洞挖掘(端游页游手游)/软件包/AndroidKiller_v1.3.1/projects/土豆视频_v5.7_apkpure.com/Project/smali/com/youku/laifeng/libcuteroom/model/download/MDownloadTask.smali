.class public Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;
.super Ljava/lang/Object;
.source "MDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private downloadListener:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;

.field private mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

.field private mDownloadStop:Z

.field private mHandler:Landroid/os/Handler;

.field private mParams:[Ljava/lang/String;

.field private mPause:Z

.field private mUrl:Ljava/lang/String;

.field private status:I

.field private taskListener:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;
    .param p4, "taskListener"    # Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadStop:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    .line 33
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;-><init>(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->downloadListener:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;

    .line 73
    iput-object p4, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->taskListener:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;

    .line 74
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mParams:[Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mUrl:Ljava/lang/String;

    .line 76
    iput-boolean v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mPause:Z

    .line 77
    iput v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->status:I

    .line 78
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    .line 79
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setName(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setTime(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->downloadListener:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->taskListener:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->status:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pauseTask()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mPause:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mPause:Z

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 21

    .prologue
    .line 90
    const/4 v15, 0x0

    .line 91
    .local v15, "pause":Z
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadStop:Z

    .line 92
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->status:I

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    const/4 v13, 0x0

    .line 95
    .local v13, "mFileSize":I
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getGiftZipResourcesDirPath()Ljava/lang/String;

    move-result-object v14

    .line 96
    .local v14, "path":Ljava/lang/String;
    const/16 v3, 0x400

    .line 99
    .local v3, "BUFFER_SIZE":I
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 100
    .local v5, "buf":[B
    const/4 v7, 0x0

    .line 101
    .local v7, "curPosition":I
    new-instance v8, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v8, "destFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 103
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 106
    :cond_0
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :try_start_1
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 117
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 118
    .local v6, "conn":Ljava/net/URLConnection;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 119
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v13

    .line 120
    if-gtz v13, :cond_2

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 123
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    .end local v6    # "conn":Ljava/net/URLConnection;
    .end local v16    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v10

    .line 108
    .local v10, "e1":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 111
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 127
    .end local v10    # "e1":Ljava/io/IOException;
    .restart local v6    # "conn":Ljava/net/URLConnection;
    .restart local v16    # "url":Ljava/net/URL;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setDirPath(Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setFullPath(Ljava/lang/String;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setSize(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setUUID(Ljava/lang/String;)V

    .line 131
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string/jumbo v17, "rw"

    move-object/from16 v0, v17

    invoke-direct {v11, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    .local v11, "fos":Ljava/io/RandomAccessFile;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 133
    .local v4, "bis":Ljava/io/BufferedInputStream;
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->status:I

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    :cond_3
    :goto_1
    if-ge v7, v13, :cond_7

    .line 136
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadStop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 137
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 138
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 141
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 167
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "conn":Ljava/net/URLConnection;
    .end local v11    # "fos":Ljava/io/RandomAccessFile;
    .end local v16    # "url":Ljava/net/URL;
    :catch_1
    move-exception v9

    .line 168
    .local v9, "e":Ljava/lang/Exception;
    sget-boolean v17, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v17, :cond_4

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 171
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 145
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "conn":Ljava/net/URLConnection;
    .restart local v11    # "fos":Ljava/io/RandomAccessFile;
    .restart local v16    # "url":Ljava/net/URL;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mPause:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v15, v0, :cond_6

    .line 146
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mPause:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mPause:Z

    .line 153
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mPause:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 156
    const/16 v17, 0x0

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v5, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v12

    .line 157
    .local v12, "len":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_9

    .line 165
    .end local v12    # "len":I
    :cond_7
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 166
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 149
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 160
    .restart local v12    # "len":I
    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v5, v0, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 161
    add-int/2addr v7, v12

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->setCurSize(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->mDownloadStop:Z

    .line 188
    return-void
.end method
