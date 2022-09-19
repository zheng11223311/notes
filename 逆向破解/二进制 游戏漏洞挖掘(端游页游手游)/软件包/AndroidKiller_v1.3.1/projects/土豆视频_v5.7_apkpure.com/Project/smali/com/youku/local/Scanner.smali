.class public Lcom/youku/local/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/local/Scanner$1;,
        Lcom/youku/local/Scanner$MediaItemFilter;,
        Lcom/youku/local/Scanner$GetMediaItemsRunnable;
    }
.end annotation


# static fields
.field private static final DIR_MAX_SIZE:I

.field public static final MEDIA_ITEMS_UPDATED:I = 0x64

.field private static final TAG:Ljava/lang/String; = "LOCAL_SCAN"

.field public static isUplayerSupported:Z

.field private static mInstance:Lcom/youku/local/Scanner;


# instance fields
.field private isStopping:Z

.field public mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/local/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private mLoadingThread:Ljava/lang/Thread;

.field private mScanListener:Lcom/youku/local/IScanListener;

.field private mThumbnailer:Lcom/youku/local/Thumbnailer;

.field mediaFileFilter:Lcom/youku/local/Scanner$MediaItemFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    sget v0, Lcom/youku/uplayer/MediaPlayerProxy;->freq:I

    const/16 v1, 0x578

    if-le v0, v1, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    sput v0, Lcom/youku/local/Scanner;->DIR_MAX_SIZE:I

    .line 31
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v0

    sput-boolean v0, Lcom/youku/local/Scanner;->isUplayerSupported:Z

    return-void

    .line 28
    :cond_0
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/youku/local/Scanner;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/local/Scanner;->mItemList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lcom/youku/local/Scanner$MediaItemFilter;

    invoke-direct {v0, p0}, Lcom/youku/local/Scanner$MediaItemFilter;-><init>(Lcom/youku/local/Scanner;)V

    iput-object v0, p0, Lcom/youku/local/Scanner;->mediaFileFilter:Lcom/youku/local/Scanner$MediaItemFilter;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/local/Scanner;->isStopping:Z

    .line 35
    sput-object p0, Lcom/youku/local/Scanner;->mInstance:Lcom/youku/local/Scanner;

    .line 36
    iput-object p1, p0, Lcom/youku/local/Scanner;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$100(Lcom/youku/local/Scanner;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/local/Scanner;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/local/Scanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/local/Scanner;)Lcom/youku/local/IScanListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/local/Scanner;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/local/Scanner;->mScanListener:Lcom/youku/local/IScanListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/local/Scanner;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lcom/youku/local/Scanner;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/local/Scanner;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/local/Scanner;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/youku/local/Scanner;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/local/Scanner;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/youku/local/Scanner;->DIR_MAX_SIZE:I

    return v0
.end method

.method static synthetic access$600(Lcom/youku/local/Scanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/local/Scanner;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/youku/local/Scanner;->isStopping:Z

    return v0
.end method

.method static synthetic access$700(Lcom/youku/local/Scanner;)Lcom/youku/local/Thumbnailer;
    .locals 1
    .param p0, "x0"    # Lcom/youku/local/Scanner;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/local/Scanner;->mThumbnailer:Lcom/youku/local/Thumbnailer;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/youku/local/Scanner;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lcom/youku/local/Scanner;->mInstance:Lcom/youku/local/Scanner;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/youku/local/Scanner;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/youku/local/Scanner;->mInstance:Lcom/youku/local/Scanner;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/youku/local/Scanner;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/local/Scanner;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/local/Scanner;->mInstance:Lcom/youku/local/Scanner;

    .line 44
    sget-boolean v0, Lcom/youku/local/Scanner;->isUplayerSupported:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0}, Lcom/youku/thumbnailer/UThumbnailer;->setThumbnailerPath(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->registerAVcodec()V

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lcom/youku/local/Scanner;->mInstance:Lcom/youku/local/Scanner;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearListener()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/youku/local/Scanner;->mScanListener:Lcom/youku/local/IScanListener;

    .line 313
    iput-object v0, p0, Lcom/youku/local/Scanner;->mHandler:Landroid/os/Handler;

    .line 314
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/youku/local/Scanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getScanListener()Lcom/youku/local/IScanListener;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/youku/local/Scanner;->mScanListener:Lcom/youku/local/IScanListener;

    return-object v0
.end method

.method public getVideoItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/local/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v2, "videoItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/local/Media;>;"
    iget-object v3, p0, Lcom/youku/local/Scanner;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/youku/local/Scanner;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 289
    iget-object v3, p0, Lcom/youku/local/Scanner;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/local/Media;

    .line 290
    .local v1, "item":Lcom/youku/local/Media;
    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "item":Lcom/youku/local/Media;
    :cond_1
    iget-object v3, p0, Lcom/youku/local/Scanner;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 295
    return-object v2
.end method

.method public loadMediaItems()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/local/Scanner;->mLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/local/Scanner;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/local/Scanner;->isStopping:Z

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youku/local/Scanner$GetMediaItemsRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/youku/local/Scanner$GetMediaItemsRunnable;-><init>(Lcom/youku/local/Scanner;Lcom/youku/local/Scanner$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/youku/local/Scanner;->mLoadingThread:Ljava/lang/Thread;

    .line 74
    iget-object v0, p0, Lcom/youku/local/Scanner;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    :cond_1
    sget-boolean v0, Lcom/youku/local/Scanner;->isUplayerSupported:Z

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/youku/local/Scanner;->mThumbnailer:Lcom/youku/local/Thumbnailer;

    if-nez v0, :cond_2

    .line 79
    new-instance v0, Lcom/youku/local/Thumbnailer;

    iget-object v1, p0, Lcom/youku/local/Scanner;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/youku/local/Thumbnailer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/local/Scanner;->mThumbnailer:Lcom/youku/local/Thumbnailer;

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/youku/local/Scanner;->mThumbnailer:Lcom/youku/local/Thumbnailer;

    invoke-virtual {v0}, Lcom/youku/local/Thumbnailer;->start()V

    .line 82
    :cond_3
    return-void
.end method

.method public setDefaultThumbnailID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 322
    sput p1, Lcom/youku/local/Media;->mDefaultThumbnailID:I

    .line 323
    return-void
.end method

.method public setScanListener(Lcom/youku/local/IScanListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/local/IScanListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/youku/local/Scanner;->mScanListener:Lcom/youku/local/IScanListener;

    .line 300
    iput-object p2, p0, Lcom/youku/local/Scanner;->mHandler:Landroid/os/Handler;

    .line 301
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "LOCAL_SCAN"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/local/Scanner;->isStopping:Z

    .line 87
    iget-object v0, p0, Lcom/youku/local/Scanner;->mThumbnailer:Lcom/youku/local/Thumbnailer;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/youku/local/Scanner;->mThumbnailer:Lcom/youku/local/Thumbnailer;

    invoke-virtual {v0}, Lcom/youku/local/Thumbnailer;->stop()V

    .line 89
    :cond_0
    return-void
.end method
