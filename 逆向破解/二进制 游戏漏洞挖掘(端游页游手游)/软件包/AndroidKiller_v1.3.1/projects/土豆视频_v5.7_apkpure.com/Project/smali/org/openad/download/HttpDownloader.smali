.class public Lorg/openad/download/HttpDownloader;
.super Lorg/openad/download/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openad/download/HttpDownloader$HttpDownloadThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpDownloader"


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4, p5}, Lorg/openad/download/Downloader;-><init>(Ljava/net/URL;Ljava/lang/String;ILjava/lang/Boolean;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p3, p0, Lorg/openad/download/Downloader;->mFileName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/openad/download/HttpDownloader;)V
    .locals 0

    invoke-direct {p0}, Lorg/openad/download/HttpDownloader;->error()V

    return-void
.end method

.method private error()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/openad/download/HttpDownloader;->setState(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/openad/download/HttpDownloader;->mURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    const/16 v1, 0x2710

    invoke-virtual {v8, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    if-eq v1, v10, :cond_0

    invoke-direct {p0}, Lorg/openad/download/HttpDownloader;->error()V

    :cond_0
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    if-ge v1, v2, :cond_1

    invoke-direct {p0}, Lorg/openad/download/HttpDownloader;->error()V

    :cond_1
    iget v2, p0, Lorg/openad/download/HttpDownloader;->mFileSize:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iput v1, p0, Lorg/openad/download/HttpDownloader;->mFileSize:I

    invoke-virtual {p0}, Lorg/openad/download/HttpDownloader;->stateChanged()V

    :cond_2
    iget v1, p0, Lorg/openad/download/HttpDownloader;->mState:I

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/openad/download/HttpDownloader;->mListDownloadThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lorg/openad/download/HttpDownloader;->mFileSize:I

    const/high16 v2, 0x190000

    if-le v1, v2, :cond_3

    iget v1, p0, Lorg/openad/download/HttpDownloader;->mFileSize:I

    int-to-float v1, v1

    iget v2, p0, Lorg/openad/download/HttpDownloader;->mNumConnections:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x45800000    # 4096.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit16 v11, v1, 0x1000

    const/4 v6, 0x0

    add-int/lit8 v7, v11, -0x1

    new-instance v1, Lorg/openad/download/HttpDownloader$HttpDownloadThread;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/openad/download/HttpDownloader;->mURL:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/openad/download/HttpDownloader;->mOutputFolder:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/openad/download/HttpDownloader;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/openad/download/HttpDownloader$HttpDownloadThread;-><init>(Lorg/openad/download/HttpDownloader;ILjava/net/URL;Ljava/lang/String;II)V

    iget-object v2, p0, Lorg/openad/download/HttpDownloader;->mListDownloadThread:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v10

    :goto_0
    iget v1, p0, Lorg/openad/download/HttpDownloader;->mFileSize:I

    if-ge v7, v1, :cond_4

    add-int/lit8 v6, v7, 0x1

    add-int/2addr v7, v11

    new-instance v1, Lorg/openad/download/HttpDownloader$HttpDownloadThread;

    iget-object v4, p0, Lorg/openad/download/HttpDownloader;->mURL:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/openad/download/HttpDownloader;->mOutputFolder:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/openad/download/HttpDownloader;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/openad/download/HttpDownloader$HttpDownloadThread;-><init>(Lorg/openad/download/HttpDownloader;ILjava/net/URL;Ljava/lang/String;II)V

    iget-object v2, p0, Lorg/openad/download/HttpDownloader;->mListDownloadThread:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/openad/download/HttpDownloader$HttpDownloadThread;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/openad/download/HttpDownloader;->mURL:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/openad/download/HttpDownloader;->mOutputFolder:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/openad/download/HttpDownloader;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget v7, p0, Lorg/openad/download/HttpDownloader;->mFileSize:I

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/openad/download/HttpDownloader$HttpDownloadThread;-><init>(Lorg/openad/download/HttpDownloader;ILjava/net/URL;Ljava/lang/String;II)V

    iget-object v2, p0, Lorg/openad/download/HttpDownloader;->mListDownloadThread:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v2, v9

    :goto_1
    iget-object v1, p0, Lorg/openad/download/HttpDownloader;->mListDownloadThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    iget-object v1, p0, Lorg/openad/download/HttpDownloader;->mListDownloadThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openad/download/Downloader$DownloadThread;

    invoke-virtual {v1}, Lorg/openad/download/Downloader$DownloadThread;->waitFinish()V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_5
    move v2, v9

    :goto_2
    iget-object v1, p0, Lorg/openad/download/HttpDownloader;->mListDownloadThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    iget-object v1, p0, Lorg/openad/download/HttpDownloader;->mListDownloadThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openad/download/Downloader$DownloadThread;

    invoke-virtual {v1}, Lorg/openad/download/Downloader$DownloadThread;->isFinished()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/openad/download/HttpDownloader;->mListDownloadThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openad/download/Downloader$DownloadThread;

    invoke-virtual {v1}, Lorg/openad/download/Downloader$DownloadThread;->download()V

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_7
    iget v1, p0, Lorg/openad/download/HttpDownloader;->mState:I

    if-nez v1, :cond_8

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/openad/download/HttpDownloader;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    :goto_3
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-direct {p0}, Lorg/openad/download/HttpDownloader;->error()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v1
.end method
