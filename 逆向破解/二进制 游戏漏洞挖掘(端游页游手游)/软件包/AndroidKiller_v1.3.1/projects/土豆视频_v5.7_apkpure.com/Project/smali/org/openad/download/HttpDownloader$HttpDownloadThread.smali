.class Lorg/openad/download/HttpDownloader$HttpDownloadThread;
.super Lorg/openad/download/Downloader$DownloadThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openad/download/HttpDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpDownloadThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpDownloadThread"


# instance fields
.field final synthetic this$0:Lorg/openad/download/HttpDownloader;


# direct methods
.method public constructor <init>(Lorg/openad/download/HttpDownloader;ILjava/net/URL;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->this$0:Lorg/openad/download/HttpDownloader;

    invoke-direct/range {p0 .. p6}, Lorg/openad/download/Downloader$DownloadThread;-><init>(Lorg/openad/download/Downloader;ILjava/net/URL;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->mURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->this$0:Lorg/openad/download/HttpDownloader;

    iget-object v2, v2, Lorg/openad/download/HttpDownloader;->mSupportResumeFromBreakPoint:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->mStartByte:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->mEndByte:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->this$0:Lorg/openad/download/HttpDownloader;

    invoke-static {v2}, Lorg/openad/download/HttpDownloader;->access$000(Lorg/openad/download/HttpDownloader;)V

    :cond_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->mOutputFile:Ljava/lang/String;

    const-string/jumbo v4, "rw"

    invoke-direct {v2, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v0, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->mStartByte:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_0
    iget-object v1, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->this$0:Lorg/openad/download/HttpDownloader;

    iget v1, v1, Lorg/openad/download/HttpDownloader;->mState:I

    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/16 v4, 0x1000

    invoke-virtual {v3, v0, v1, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v4, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->mStartByte:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->mStartByte:I

    iget-object v4, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->this$0:Lorg/openad/download/HttpDownloader;

    iget v5, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->mStartByte:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->this$0:Lorg/openad/download/HttpDownloader;

    iget v6, v6, Lorg/openad/download/HttpDownloader;->mFileSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v1, v5}, Lorg/openad/download/HttpDownloader;->downloaded(IF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_1
    :try_start_3
    const-string v3, "HttpDownloadThread"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->this$0:Lorg/openad/download/HttpDownloader;

    invoke-static {v0}, Lorg/openad/download/HttpDownloader;->access$000(Lorg/openad/download/HttpDownloader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_6
    iget-object v0, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->this$0:Lorg/openad/download/HttpDownloader;

    iget v0, v0, Lorg/openad/download/HttpDownloader;->mState:I

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openad/download/HttpDownloader$HttpDownloadThread;->mIsFinished:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_5
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_4
    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "HttpDownloadThread"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "HttpDownloadThread"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v0

    const-string v1, "HttpDownloadThread"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_4
    move-exception v0

    const-string v1, "HttpDownloadThread"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_5
    if-eqz v1, :cond_7

    :try_start_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_8
    :goto_7
    throw v0

    :catch_5
    move-exception v1

    const-string v2, "HttpDownloadThread"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_6
    move-exception v1

    const-string v2, "HttpDownloadThread"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1

    :catch_8
    move-exception v0

    move-object v2, v3

    goto/16 :goto_1
.end method
