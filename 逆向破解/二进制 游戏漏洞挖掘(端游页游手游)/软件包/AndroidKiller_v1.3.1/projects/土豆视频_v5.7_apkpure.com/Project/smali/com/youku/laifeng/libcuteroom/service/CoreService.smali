.class public Lcom/youku/laifeng/libcuteroom/service/CoreService;
.super Landroid/app/Service;
.source "CoreService.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAppDownload:Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;

.field private final mBinder:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;

.field private final mChatBinder:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub;

.field private final mChatCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mChatMutex:Ljava/lang/Object;

.field private final mDataCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

.field private final mDownloadBinder:Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub;

.field private final mDownloadCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPool:Ljava/util/concurrent/ExecutorService;

.field public mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

.field private mSocketListener:Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

.field private onAppDownloadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mAppDownload:Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;

    .line 56
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mDataCallbacks:Landroid/os/RemoteCallbackList;

    .line 57
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mChatCallbacks:Landroid/os/RemoteCallbackList;

    .line 58
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mDownloadCallbacks:Landroid/os/RemoteCallbackList;

    .line 59
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 60
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mChatMutex:Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/youku/laifeng/libcuteroom/service/CoreService$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/service/CoreService$1;-><init>(Lcom/youku/laifeng/libcuteroom/service/CoreService;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mBinder:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;

    .line 206
    new-instance v0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;-><init>(Lcom/youku/laifeng/libcuteroom/service/CoreService;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mChatBinder:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub;

    .line 293
    new-instance v0, Lcom/youku/laifeng/libcuteroom/service/CoreService$3;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/service/CoreService$3;-><init>(Lcom/youku/laifeng/libcuteroom/service/CoreService;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mDownloadBinder:Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub;

    .line 322
    new-instance v0, Lcom/youku/laifeng/libcuteroom/service/CoreService$4;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/service/CoreService$4;-><init>(Lcom/youku/laifeng/libcuteroom/service/CoreService;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mDataLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    .line 350
    new-instance v0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;-><init>(Lcom/youku/laifeng/libcuteroom/service/CoreService;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocketListener:Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    .line 469
    new-instance v0, Lcom/youku/laifeng/libcuteroom/service/CoreService$6;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/service/CoreService$6;-><init>(Lcom/youku/laifeng/libcuteroom/service/CoreService;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->onAppDownloadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mDataCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mDataLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocketListener:Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/laifeng/libcuteroom/service/CoreService;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;
    .param p1, "x1"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mPool:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mChatCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mAppDownload:Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;

    return-object v0
.end method

.method static synthetic access$502(Lcom/youku/laifeng/libcuteroom/service/CoreService;Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;)Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mAppDownload:Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;

    return-object p1
.end method

.method static synthetic access$600(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->onAppDownloadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mDownloadCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mChatMutex:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 457
    const-class v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mBinder:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;

    .line 466
    :goto_0
    return-object v0

    .line 460
    :cond_0
    const-class v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mChatBinder:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub;

    goto :goto_0

    .line 463
    :cond_1
    const-class v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mDownloadBinder:Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub;

    goto :goto_0

    .line 466
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 514
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mDataCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 524
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mChatCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 525
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mDownloadCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 526
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 527
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 518
    const/4 p2, 0x1

    .line 519
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
