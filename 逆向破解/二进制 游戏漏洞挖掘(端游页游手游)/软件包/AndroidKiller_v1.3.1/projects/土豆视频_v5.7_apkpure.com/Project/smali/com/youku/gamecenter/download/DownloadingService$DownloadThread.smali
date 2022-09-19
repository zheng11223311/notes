.class Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/download/DownloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadThread"
.end annotation


# instance fields
.field private mContentLength:J

.field private mCurrentLength:J

.field private mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

.field volatile mErrorCode:I

.field private mRepeatTime:I

.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadingService;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 2
    .param p2, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const-wide/16 v0, -0x1

    .line 770
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 766
    iput-wide v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mCurrentLength:J

    .line 767
    iput-wide v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mContentLength:J

    .line 768
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mErrorCode:I

    .line 771
    iput-object p2, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    .line 772
    return-void
.end method

.method private download()V
    .locals 36

    .prologue
    .line 796
    new-instance v12, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v32, ".tmp"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 797
    .local v12, "downloadFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v4}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v4, v12}, Lcom/youku/gamecenter/download/DownloadingService;->access$2300(Lcom/youku/gamecenter/download/DownloadingService;Ljava/io/File;)Z

    .line 799
    :cond_0
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 800
    .local v17, "fullPath":Ljava/lang/String;
    const-wide/16 v28, -0x1

    .line 801
    .local v28, "start":J
    const-wide/16 v18, 0x0

    .line 802
    .local v18, "httpLength":J
    const/16 v21, 0x0

    .line 803
    .local v21, "inputStream":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 805
    .local v15, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v32, "saveAPK: url = %1$15s\t|\tfilename = %2$15s"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v35, v0

    aput-object v35, v33, v34

    const/16 v34, 0x1

    aput-object v17, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :try_start_0
    new-instance v16, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 811
    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v16, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mErrorCode:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v4, :cond_4

    .line 967
    if-eqz v21, :cond_1

    .line 968
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 973
    :cond_1
    :goto_0
    if-eqz v16, :cond_2

    .line 974
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    move-object/from16 v15, v16

    .line 979
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    return-void

    .line 969
    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v13

    .line 970
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 975
    .end local v13    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v13

    .line 976
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 813
    .end local v13    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    .line 814
    new-instance v30, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 815
    .local v30, "url":Ljava/net/URL;
    invoke-virtual/range {v30 .. v30}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    check-cast v20, Ljava/net/HttpURLConnection;

    .line 817
    .local v20, "httpURLConnection":Ljava/net/HttpURLConnection;
    const-string v4, "GET"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 818
    const-string v4, "Accept-Encoding"

    const-string v32, "identity"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v4, "Connection"

    const-string v32, "keep-alive"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const/16 v4, 0x1388

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 823
    const/16 v4, 0x2710

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 824
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "downloadFile.length():"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v4, v32, v34

    if-lez v4, :cond_5

    .line 826
    const-string v4, "Range"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "bytes="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->connect()V

    .line 830
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    .line 831
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mCurrentLength:J

    .line 832
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v18, v0

    .line 833
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mCurrentLength:J

    move-wide/from16 v32, v0

    add-long v32, v32, v18

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mContentLength:J

    .line 834
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-wide v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v4, v32, v34

    if-nez v4, :cond_6

    .line 835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mContentLength:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    iput-wide v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    .line 836
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v4}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v4, v0, v1, v2}, Lcom/youku/gamecenter/download/SQLManager;->updateSize(Ljava/lang/String;J)V

    .line 840
    :cond_6
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "saveAPK getContentLength "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mContentLength:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-static {}, Lcom/youku/gamecenter/util/SystemUtils;->getAvailableSDCardMemory()J

    move-result-wide v32

    cmp-long v4, v32, v18

    if-gez v4, :cond_9

    .line 846
    new-instance v4, Ljava/io/IOException;

    const-string v32, "no room"

    move-object/from16 v0, v32

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 935
    .end local v20    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v30    # "url":Ljava/net/URL;
    :catch_2
    move-exception v13

    move-object/from16 v15, v16

    .line 936
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "e":Ljava/io/IOException;
    .restart local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v4}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v4, v0, :cond_22

    :cond_7
    invoke-static {}, Lcom/youku/gamecenter/util/SystemUtils;->isMounted()Z

    move-result v4

    if-eqz v4, :cond_22

    new-instance v4, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".tmp"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_22

    .line 941
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/youku/gamecenter/download/DownloadingService;->access$1400(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 967
    if-eqz v21, :cond_8

    .line 968
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    .line 973
    :cond_8
    :goto_4
    if-eqz v15, :cond_3

    .line 974
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 975
    :catch_3
    move-exception v13

    .line 976
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 848
    .end local v13    # "e":Ljava/io/IOException;
    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v20    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v30    # "url":Ljava/net/URL;
    :cond_9
    const/16 v4, 0x1000

    :try_start_8
    new-array v10, v4, [B

    .line 849
    .local v10, "arrayOfByte":[B
    const/16 v26, 0x0

    .line 850
    .local v26, "readTime":I
    const/16 v25, 0x0

    .line 851
    .local v25, "readLength":I
    const/16 v11, 0x32

    .line 852
    .local v11, "blockSize":I
    const/4 v5, 0x0

    .line 853
    .local v5, "blockSizeReadLength":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .local v6, "blockSizeStartTime":J
    move/from16 v27, v26

    .line 855
    .end local v26    # "readTime":I
    .local v27, "readTime":I
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mErrorCode:I

    if-gez v4, :cond_a

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/io/InputStream;->read([B)I

    move-result v25

    if-lez v25, :cond_a

    .line 856
    move-object/from16 v0, p0

    iget v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mErrorCode:I

    if-ltz v4, :cond_e

    .line 888
    :cond_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 889
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 890
    const-wide/16 v32, -0x1

    cmp-long v4, v28, v32

    if-eqz v4, :cond_b

    .line 891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadDuration:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    sub-long v34, v34, v28

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadDuration:I

    .line 893
    const-wide/16 v28, -0x1

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v4}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadDuration:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Lcom/youku/gamecenter/download/SQLManager;->updateDuration(Ljava/lang/String;I)V

    .line 898
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mErrorCode:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v32, 0x2

    move/from16 v0, v32

    if-ne v4, v0, :cond_12

    .line 967
    if-eqz v21, :cond_c

    .line 968
    :try_start_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 973
    :cond_c
    :goto_6
    if-eqz v16, :cond_d

    .line 974
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_d
    :goto_7
    move-object/from16 v15, v16

    .line 977
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 858
    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_e
    const/4 v4, 0x0

    :try_start_b
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v10, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 859
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mCurrentLength:J

    move-wide/from16 v32, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mCurrentLength:J

    .line 860
    add-int v5, v5, v25

    .line 861
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "readTime":I
    .restart local v26    # "readTime":I
    rem-int v4, v27, v11

    if-nez v4, :cond_28

    .line 862
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mCurrentLength:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    long-to-float v4, v0

    const/high16 v32, 0x42c80000    # 100.0f

    mul-float v4, v4, v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mContentLength:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    long-to-float v0, v0

    move/from16 v32, v0

    div-float v4, v4, v32

    float-to-int v0, v4

    move/from16 v24, v0

    .line 863
    .local v24, "progress":I
    const/16 v4, 0x64

    move/from16 v0, v24

    if-le v0, v4, :cond_f

    .line 864
    const/16 v24, 0x63

    .line 865
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    move/from16 v0, v24

    if-eq v4, v0, :cond_11

    const/16 v22, 0x1

    .line 866
    .local v22, "isNeedUpdate":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move/from16 v0, v24

    iput v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    .line 867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v4}, Lcom/youku/gamecenter/download/DownloadingService;->access$1200(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;

    move-result-object v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mErrorCode:I

    if-gez v4, :cond_10

    if-eqz v22, :cond_10

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v4}, Lcom/youku/gamecenter/download/DownloadingService;->access$1200(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v4, v0}, Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;->onProgressUpdate(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v4}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Lcom/youku/gamecenter/download/SQLManager;->updateProgress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 876
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .local v8, "curTime":J
    move-object/from16 v4, p0

    .line 878
    invoke-direct/range {v4 .. v9}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->getDownloadVelocity(IJJ)I

    move-result v31

    .line 879
    .local v31, "v":I
    move-wide v6, v8

    .line 880
    const/4 v5, 0x0

    .line 881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move/from16 v0, v31

    iput v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadVelocity:I

    .line 882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mCurrentLength:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    iput-wide v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mCurrentLength:J

    .line 884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->sendToClient(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 885
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "updateProgress path:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move/from16 v27, v26

    .line 886
    .end local v26    # "readTime":I
    .restart local v27    # "readTime":I
    goto/16 :goto_5

    .line 865
    .end local v8    # "curTime":J
    .end local v22    # "isNeedUpdate":Z
    .end local v27    # "readTime":I
    .end local v31    # "v":I
    .restart local v26    # "readTime":I
    :cond_11
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 969
    .end local v24    # "progress":I
    .end local v26    # "readTime":I
    .restart local v27    # "readTime":I
    :catch_4
    move-exception v13

    .line 970
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 975
    .end local v13    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v13

    .line 976
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 901
    .end local v13    # "e":Ljava/io/IOException;
    :cond_12
    :try_start_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mErrorCode:I

    const/16 v32, 0x5

    move/from16 v0, v32

    if-ne v4, v0, :cond_15

    .line 902
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 967
    if-eqz v21, :cond_13

    .line 968
    :try_start_d
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 973
    :cond_13
    :goto_9
    if-eqz v16, :cond_14

    .line 974
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    :cond_14
    :goto_a
    move-object/from16 v15, v16

    .line 977
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 969
    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v13

    .line 970
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 975
    .end local v13    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v13

    .line 976
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 905
    .end local v13    # "e":Ljava/io/IOException;
    :cond_15
    :try_start_f
    invoke-static {v12}, Lcom/youku/gamecenter/util/FileUtils;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v23

    .line 906
    .local v23, "md5":Ljava/lang/String;
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "md5:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 909
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 910
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-nez v4, :cond_18

    .line 911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/youku/gamecenter/download/DownloadingService;->access$1700(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 967
    :goto_b
    if-eqz v21, :cond_16

    .line 968
    :try_start_10
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 973
    :cond_16
    :goto_c
    if-eqz v16, :cond_17

    .line 974
    :try_start_11
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    :cond_17
    :goto_d
    move-object/from16 v15, v16

    .line 977
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 913
    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_18
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/youku/gamecenter/download/DownloadingService;->access$1400(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_b

    .line 966
    .end local v5    # "blockSizeReadLength":I
    .end local v6    # "blockSizeStartTime":J
    .end local v10    # "arrayOfByte":[B
    .end local v11    # "blockSize":I
    .end local v20    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v23    # "md5":Ljava/lang/String;
    .end local v25    # "readLength":I
    .end local v27    # "readTime":I
    .end local v30    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v4

    move-object/from16 v15, v16

    .line 967
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_e
    if-eqz v21, :cond_19

    .line 968
    :try_start_13
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    .line 973
    :cond_19
    :goto_f
    if-eqz v15, :cond_1a

    .line 974
    :try_start_14
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_12

    .line 977
    :cond_1a
    :goto_10
    throw v4

    .line 969
    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "blockSizeReadLength":I
    .restart local v6    # "blockSizeStartTime":J
    .restart local v10    # "arrayOfByte":[B
    .restart local v11    # "blockSize":I
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v20    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v23    # "md5":Ljava/lang/String;
    .restart local v25    # "readLength":I
    .restart local v27    # "readTime":I
    .restart local v30    # "url":Ljava/net/URL;
    :catch_8
    move-exception v13

    .line 970
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 975
    .end local v13    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v13

    .line 976
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 916
    .end local v13    # "e":Ljava/io/IOException;
    :cond_1b
    :try_start_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mMd5:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mMd5ErrorTimes:I

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ge v4, v0, :cond_1e

    .line 918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mMd5:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mMd5ErrorTimes:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    iput v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mMd5ErrorTimes:I

    .line 920
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v32, "md5 check error!"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 922
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v4, v12}, Lcom/youku/gamecenter/download/DownloadingService;->access$2300(Lcom/youku/gamecenter/download/DownloadingService;Ljava/io/File;)Z

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->download()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 967
    if-eqz v21, :cond_1c

    .line 968
    :try_start_16
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    .line 973
    :cond_1c
    :goto_11
    if-eqz v16, :cond_1d

    .line 974
    :try_start_17
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    :cond_1d
    :goto_12
    move-object/from16 v15, v16

    .line 977
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 969
    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v13

    .line 970
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 975
    .end local v13    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v13

    .line 976
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 927
    .end local v13    # "e":Ljava/io/IOException;
    :cond_1e
    :try_start_18
    new-instance v14, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, ".tmp"

    const-string v34, ""

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v14, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v12, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    const/16 v32, 0x64

    move/from16 v0, v32

    iput v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    .line 931
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mContentLength:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    iput-wide v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    .line 932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    const/16 v32, 0x4

    move/from16 v0, v32

    iput v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 933
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v4}, Lcom/youku/gamecenter/download/DownloadingService;->access$1200(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v4}, Lcom/youku/gamecenter/download/DownloadingService;->access$1200(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v4, v0}, Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;->onDownloadEnd(Lcom/youku/gamecenter/download/DownloadInfo;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 967
    :cond_1f
    if-eqz v21, :cond_20

    .line 968
    :try_start_19
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c

    .line 973
    :cond_20
    :goto_13
    if-eqz v16, :cond_21

    .line 974
    :try_start_1a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_d

    :cond_21
    move-object/from16 v15, v16

    .line 977
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 969
    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v13

    .line 970
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 975
    .end local v13    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v13

    .line 976
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v15, v16

    .line 978
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 969
    .end local v5    # "blockSizeReadLength":I
    .end local v6    # "blockSizeStartTime":J
    .end local v10    # "arrayOfByte":[B
    .end local v11    # "blockSize":I
    .end local v14    # "file":Ljava/io/File;
    .end local v20    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v23    # "md5":Ljava/lang/String;
    .end local v25    # "readLength":I
    .end local v27    # "readTime":I
    .end local v30    # "url":Ljava/net/URL;
    :catch_e
    move-exception v13

    .line 970
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 945
    :cond_22
    const-wide/16 v32, -0x1

    cmp-long v4, v28, v32

    if-eqz v4, :cond_23

    .line 946
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadDuration:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    sub-long v34, v34, v28

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadDuration:I

    .line 948
    const-wide/16 v28, -0x1

    .line 949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v4}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadDuration:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Lcom/youku/gamecenter/download/SQLManager;->updateDuration(Ljava/lang/String;I)V

    .line 953
    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mRepeatTime:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mRepeatTime:I

    const/16 v32, 0x3

    move/from16 v0, v32

    if-le v4, v0, :cond_27

    .line 954
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v32, "Download Fail out of max repeat count"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v4}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v4

    if-nez v4, :cond_24

    .line 956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    move-object/from16 v32, v0

    sget v33, Lcom/youku/gamecenter/R$string;->game_center_info_interrupt:I

    invoke-virtual/range {v32 .. v33}, Lcom/youku/gamecenter/download/DownloadingService;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/youku/gamecenter/download/DownloadingService;->access$2400(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V

    .line 957
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/youku/gamecenter/download/DownloadingService;->access$1700(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 967
    :cond_25
    :goto_14
    if-eqz v21, :cond_26

    .line 968
    :try_start_1c
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_10

    .line 973
    :cond_26
    :goto_15
    if-eqz v15, :cond_3

    .line 974
    :try_start_1d
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_f

    goto/16 :goto_2

    .line 975
    :catch_f
    move-exception v13

    .line 976
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 960
    :cond_27
    :try_start_1e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mErrorCode:I

    const/16 v32, 0x5

    move/from16 v0, v32

    if-eq v4, v0, :cond_25

    .line 961
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->retry(J)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    goto :goto_14

    .line 966
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    goto/16 :goto_e

    .line 969
    .restart local v13    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v13

    .line 970
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 969
    .end local v13    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v13

    .line 970
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 975
    .end local v13    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v13

    .line 976
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10

    .line 935
    .end local v13    # "e":Ljava/io/IOException;
    :catch_13
    move-exception v13

    goto/16 :goto_3

    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "blockSizeReadLength":I
    .restart local v6    # "blockSizeStartTime":J
    .restart local v10    # "arrayOfByte":[B
    .restart local v11    # "blockSize":I
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v20    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v25    # "readLength":I
    .restart local v26    # "readTime":I
    .restart local v30    # "url":Ljava/net/URL;
    :cond_28
    move/from16 v27, v26

    .end local v26    # "readTime":I
    .restart local v27    # "readTime":I
    goto/16 :goto_5
.end method

.method private getDownloadVelocity(IJJ)I
    .locals 6
    .param p1, "blockSizeReadLength"    # I
    .param p2, "blockSizeStartTime"    # J
    .param p4, "curTime"    # J

    .prologue
    .line 988
    sub-long v2, p4, p2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 989
    .local v0, "useTime":I
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 990
    :cond_0
    div-int v1, p1, v0

    .line 991
    .local v1, "v":I
    return v1
.end method

.method private retry(J)V
    .locals 3
    .param p1, "length"    # J

    .prologue
    .line 1007
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wait for repeating Test network repeat count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mRepeatTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/download/DownloadingService;->access$1700(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 1011
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    sget v2, Lcom/youku/gamecenter/R$string;->game_center_info_interrupt:I

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/download/DownloadingService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/download/DownloadingService;->access$2400(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    invoke-static {}, Lcom/youku/gamecenter/util/SystemUtils;->getAvailableSDCardMemory()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 1014
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/download/DownloadingService;->access$1700(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 1015
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v1, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    invoke-static {v0, v1}, Lcom/youku/gamecenter/download/DownloadingService;->access$2500(Lcom/youku/gamecenter/download/DownloadingService;I)V

    .line 1016
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    sget v2, Lcom/youku/gamecenter/R$string;->game_center_no_room:I

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/download/DownloadingService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/download/DownloadingService;->access$2400(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V

    goto :goto_0

    .line 1019
    :cond_2
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->download()V

    goto :goto_0
.end method

.method private sendToClient(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 995
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 996
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 997
    invoke-static {v0, p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 999
    :try_start_0
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$500()Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-nez v1, :cond_0

    .line 1001
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$500()Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 1002
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 780
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadingService;->access$1200(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadingService;->access$1200(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-interface {v1, v2}, Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;->onDownloadStart(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadingService;->access$1500(Lcom/youku/gamecenter/download/DownloadingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 783
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v1, v4}, Lcom/youku/gamecenter/download/DownloadingService;->access$1502(Lcom/youku/gamecenter/download/DownloadingService;Z)Z

    .line 785
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :cond_1
    :goto_0
    iput v4, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mRepeatTime:I

    .line 792
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->download()V

    .line 793
    return-void

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 775
    iput p1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mErrorCode:I

    .line 776
    return-void
.end method
