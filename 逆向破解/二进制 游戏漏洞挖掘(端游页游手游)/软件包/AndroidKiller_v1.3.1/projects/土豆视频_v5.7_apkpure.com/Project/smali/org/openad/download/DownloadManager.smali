.class public Lorg/openad/download/DownloadManager;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_NUM_CONN_PER_DOWNLOAD:I = 0x8

.field public static final DEFAULT_OUTPUT_FOLDER:Ljava/lang/String; = ""

.field private static sInstance:Lorg/openad/download/DownloadManager;


# instance fields
.field private mDownloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/openad/download/Downloader;",
            ">;"
        }
    .end annotation
.end field

.field private mNumConnPerDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/openad/download/DownloadManager;->sInstance:Lorg/openad/download/DownloadManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/openad/download/DownloadManager;->mNumConnPerDownload:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openad/download/DownloadManager;->mDownloadList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lorg/openad/download/DownloadManager;
    .locals 1

    sget-object v0, Lorg/openad/download/DownloadManager;->sInstance:Lorg/openad/download/DownloadManager;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openad/download/DownloadManager;

    invoke-direct {v0}, Lorg/openad/download/DownloadManager;-><init>()V

    sput-object v0, Lorg/openad/download/DownloadManager;->sInstance:Lorg/openad/download/DownloadManager;

    :cond_0
    sget-object v0, Lorg/openad/download/DownloadManager;->sInstance:Lorg/openad/download/DownloadManager;

    return-object v0
.end method

.method public static verifyURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public createDownload(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lorg/openad/download/Downloader;
    .locals 6

    new-instance v0, Lorg/openad/download/HttpDownloader;

    iget v4, p0, Lorg/openad/download/DownloadManager;->mNumConnPerDownload:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/openad/download/HttpDownloader;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V

    iget-object v1, p0, Lorg/openad/download/DownloadManager;->mDownloadList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getConnectionNumOfPerDownload()I
    .locals 1

    iget v0, p0, Lorg/openad/download/DownloadManager;->mNumConnPerDownload:I

    return v0
.end method

.method public getDownload(I)Lorg/openad/download/Downloader;
    .locals 1

    iget-object v0, p0, Lorg/openad/download/DownloadManager;->mDownloadList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openad/download/Downloader;

    return-object v0
.end method

.method public getDownloadList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/openad/download/Downloader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openad/download/DownloadManager;->mDownloadList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeDownload(I)V
    .locals 1

    iget-object v0, p0, Lorg/openad/download/DownloadManager;->mDownloadList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public setConnectionNumOfPerDownload(I)V
    .locals 0

    iput p1, p0, Lorg/openad/download/DownloadManager;->mNumConnPerDownload:I

    return-void
.end method
