.class public Lcom/tudou/detail/DetailModel;
.super Landroid/content/BroadcastReceiver;
.source "DetailModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/DetailModel$StartVideoRecordResult;,
        Lcom/tudou/detail/DetailModel$LoaderTask;,
        Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;,
        Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;,
        Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;,
        Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;,
        Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;,
        Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;,
        Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;,
        Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;,
        Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;,
        Lcom/tudou/detail/DetailModel$OnVoteComplete;,
        Lcom/tudou/detail/DetailModel$OnVideoDigComplete;,
        Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;,
        Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;,
        Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;,
        Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;,
        Lcom/tudou/detail/DetailModel$Callbacks;
    }
.end annotation


# static fields
.field public static final LOADERTASK_FLAG_WITHOUT_COMMENTS:I = 0x80

.field public static final LOADERTASK_FLAG_WITHOUT_EGGS:I = 0x200

.field public static final LOADERTASK_FLAG_WITHOUT_FEATURE:I = 0x8

.field public static final LOADERTASK_FLAG_WITHOUT_GOODS:I = 0x40

.field public static final LOADERTASK_FLAG_WITHOUT_HD:I = 0x20

.field public static final LOADERTASK_FLAG_WITHOUT_PAGESLIDER:I = 0x2

.field public static final LOADERTASK_FLAG_WITHOUT_PLAYLIST:I = 0x4

.field public static final LOADERTASK_FLAG_WITHOUT_RECOMMEND:I = 0x100

.field public static final LOADERTASK_FLAG_WITHOUT_VIDEODETAIL:I = 0x1

.field public static final LOADERTASK_FLAG_WITHOUT_VIDEOSTATE:I = 0x10

.field private static final TAG:Ljava/lang/String;

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/detail/DetailModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLoaderTask:Lcom/tudou/detail/DetailModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field private mVideoListCache:Lcom/tudou/detail/VideoListCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-class v0, Lcom/tudou/detail/DetailModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    .line 176
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "detail-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tudou/detail/DetailModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 179
    sget-object v0, Lcom/tudou/detail/DetailModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 182
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/tudou/detail/DetailModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tudou/detail/DetailModel;->sWorker:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 186
    new-instance v0, Lcom/tudou/detail/VideoListCache;

    invoke-direct {v0}, Lcom/tudou/detail/VideoListCache;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/DetailModel;->mVideoListCache:Lcom/tudou/detail/VideoListCache;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/DetailModel;->mLock:Ljava/lang/Object;

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/DetailModel;->mHandler:Landroid/os/Handler;

    .line 1941
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/DetailModel;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tudou/detail/DetailModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/detail/DetailModel;)Lcom/tudou/detail/VideoListCache;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/DetailModel;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tudou/detail/DetailModel;->mVideoListCache:Lcom/tudou/detail/VideoListCache;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/detail/DetailModel;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/DetailModel;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/detail/DetailModel;->onNextVideoInfoGetted(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/detail/DetailModel;)Lcom/tudou/detail/DetailModel$LoaderTask;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/DetailModel;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tudou/detail/DetailModel;->mLoaderTask:Lcom/tudou/detail/DetailModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/detail/DetailModel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/DetailModel;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tudou/detail/DetailModel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/detail/DetailModel;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/DetailModel;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/tudou/detail/DetailModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/tudou/detail/DetailModel;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/DetailModel;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tudou/detail/DetailModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addVideoAttentionAsync(Landroid/app/Activity;Lcom/youku/vo/NewVideoDetail;Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p3, "r"    # Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;

    .prologue
    const/4 v4, 0x0

    .line 2061
    sget-object v1, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    const-string v2, "addVideoAttentionAsync begin"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    .line 2063
    .local v0, "iattention":Lcom/tudou/service/attention/IAttention;
    iget-object v1, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2064
    iget-object v1, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v1, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    iget-object v1, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v1, Lcom/youku/vo/NewVideoDetail$Detail;->channel_pic:Ljava/lang/String;

    iget-object v1, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-boolean v5, v1, Lcom/youku/vo/NewVideoDetail$Detail;->isVuser:Z

    iget-object v1, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v1, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    const/4 v7, 0x1

    new-instance v8, Lcom/tudou/detail/DetailModel$18;

    invoke-direct {v8, p0, p3, p2}, Lcom/tudou/detail/DetailModel$18;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;Lcom/youku/vo/NewVideoDetail;)V

    move-object v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/tudou/service/attention/IAttention;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    .line 2115
    :goto_0
    return-void

    .line 2090
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->userid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v1, Lcom/youku/vo/NewVideoDetail$Detail;->channel_pic:Ljava/lang/String;

    iget-object v1, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-boolean v5, v1, Lcom/youku/vo/NewVideoDetail$Detail;->isVuser:Z

    iget-object v1, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v1, Lcom/youku/vo/NewVideoDetail$Detail;->username:Ljava/lang/String;

    const/4 v7, 0x2

    new-instance v8, Lcom/tudou/detail/DetailModel$19;

    invoke-direct {v8, p0, p3, p2}, Lcom/tudou/detail/DetailModel$19;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;Lcom/youku/vo/NewVideoDetail;)V

    move-object v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/tudou/service/attention/IAttention;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    goto :goto_0
.end method

.method private onNextVideoInfoGetted(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "hasNext"    # Z
    .param p2, "currentVid"    # Ljava/lang/String;
    .param p3, "nextVid"    # Ljava/lang/String;

    .prologue
    .line 1499
    sget-object v1, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNextVideoInfoGetted hasNext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentVid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextVid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    iget-object v1, p0, Lcom/tudou/detail/DetailModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/detail/DetailModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/DetailModel$Callbacks;

    move-object v0, v1

    .line 1501
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :goto_0
    if-eqz v0, :cond_0

    .line 1505
    invoke-interface {v0, p1, p2, p3}, Lcom/tudou/detail/DetailModel$Callbacks;->onGetNextVideoInfo(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1510
    :cond_0
    return-void

    .line 1500
    .end local v0    # "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeVideoAttentionAsync(Landroid/app/Activity;Lcom/youku/vo/NewVideoDetail;Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p3, "r"    # Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;

    .prologue
    .line 2118
    sget-object v3, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeVideoAttentionAsync begin"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    .line 2122
    .local v0, "iattention":Lcom/tudou/service/attention/IAttention;
    iget-object v3, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    const-string v4, "album"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2123
    iget-object v3, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v3, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    .line 2124
    .local v1, "id":Ljava/lang/String;
    const/4 v2, 0x1

    .line 2129
    .local v2, "type":I
    :goto_0
    new-instance v3, Lcom/tudou/detail/DetailModel$20;

    invoke-direct {v3, p0, p3, p2}, Lcom/tudou/detail/DetailModel$20;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;Lcom/youku/vo/NewVideoDetail;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/tudou/service/attention/IAttention;->cancelAttention(Landroid/content/Context;Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    .line 2153
    return-void

    .line 2126
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->userid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2127
    .restart local v1    # "id":Ljava/lang/String;
    const/4 v2, 0x2

    .restart local v2    # "type":I
    goto :goto_0
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1367
    sget-object v0, Lcom/tudou/detail/DetailModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/tudou/detail/DetailModel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1373
    :goto_0
    return-void

    .line 1371
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public cancelVideoRecord(Ljava/lang/String;)V
    .locals 9
    .param p1, "cancelUrl"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1925
    sget-object v5, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancelVideoRecord cancelUrl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    const-class v5, Lcom/youku/network/IHttpRequest;

    invoke-static {v5, v8}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 1927
    .local v2, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getCancelVideoRecordUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1929
    .local v4, "url":Ljava/lang/String;
    :try_start_0
    const-string v5, "GET"

    const/4 v6, 0x1

    invoke-interface {v2, v4, v5, v6}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1930
    .local v1, "result":Ljava/lang/String;
    sget-object v5, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancelVideoRecord result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1932
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1933
    .local v3, "tObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 1939
    .end local v1    # "result":Ljava/lang/String;
    .end local v3    # "tObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 1936
    :catch_0
    move-exception v0

    .line 1937
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v6, "cancelVideoRecord"

    invoke-static {v5, v6, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public digVideo(Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoDigComplete;)V
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/tudou/detail/DetailModel$OnVideoDigComplete;

    .prologue
    const/4 v3, 0x1

    .line 1334
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1335
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1, v3}, Lcom/youku/http/TudouURLContainer;->getVideoDig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1336
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/detail/DetailModel$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/tudou/detail/DetailModel$4;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnVideoDigComplete;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1364
    return-void
.end method

.method public getActorCorrelationAsyn(Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;

    .prologue
    const/4 v5, 0x1

    .line 1789
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1790
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {p1, v5, v2, v3, v4}, Lcom/youku/http/TudouURLContainer;->searchUGC(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 1791
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/detail/DetailModel$14;

    invoke-direct {v2, p0, p2, p1}, Lcom/tudou/detail/DetailModel$14;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1809
    return-void
.end method

.method public getActorInfoAsyn(Ljava/lang/String;ILcom/tudou/detail/DetailModel$OnActorInfoGettedListener;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actorId"    # I
    .param p3, "l"    # Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;

    .prologue
    const/4 v5, 0x1

    .line 1812
    sget-object v2, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActorInfoAsyn actorId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1814
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const/4 v2, 0x0

    invoke-static {p1, v2, p2}, Lcom/youku/http/TudouURLContainer;->searchShow(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1815
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/detail/DetailModel$15;

    invoke-direct {v2, p0, p3, p2}, Lcom/tudou/detail/DetailModel$15;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;I)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1855
    return-void
.end method

.method public getAttentionAsync(Landroid/app/Activity;Lcom/youku/vo/NewVideoDetail;Lcom/tudou/service/attention/IAttention$GetCallBack;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p3, "callback"    # Lcom/tudou/service/attention/IAttention$GetCallBack;

    .prologue
    .line 2156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2157
    .local v1, "tUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2158
    .local v0, "tTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "album"

    iget-object v3, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2159
    iget-object v2, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/youku/vo/NewVideoDetail$Detail;->user_is_official:Z

    .line 2160
    iget-object v2, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2161
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2166
    :goto_0
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v2

    invoke-interface {v2, p1, v1, v0, p3}, Lcom/tudou/service/attention/IAttention;->isAttention(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    .line 2167
    return-void

    .line 2163
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->userid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2164
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDanmuProfileAsyn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;)V
    .locals 6
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "albumId"    # Ljava/lang/String;
    .param p4, "lis"    # Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;

    .prologue
    const/4 v5, 0x1

    .line 1262
    sget-object v2, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDanmuProfileAsyn vid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1264
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1, p2, p3}, Lcom/youku/http/TudouURLContainer;->getDanmuProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1265
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/detail/DetailModel$2;

    invoke-direct {v2, p0, p4, p1}, Lcom/tudou/detail/DetailModel$2;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1294
    return-void
.end method

.method public getGoodsInfoAsyn(Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;)V
    .locals 6
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;

    .prologue
    const/4 v5, 0x1

    .line 1746
    sget-object v2, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGoodsInfoAsyn videoId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1748
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getGoods(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1749
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/detail/DetailModel$13;

    invoke-direct {v2, p0, p1, p2}, Lcom/tudou/detail/DetailModel$13;-><init>(Lcom/tudou/detail/DetailModel;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1786
    return-void
.end method

.method public getNextVideoAsyn(Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;)V
    .locals 15
    .param p1, "mediaPlayer"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p2, "playlistCode"    # Ljava/lang/String;

    .prologue
    .line 1406
    sget-object v12, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    const-string v13, "getNextVideoAsyn"

    invoke-static {v12, v13}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const/4 v7, 0x0

    .line 1408
    .local v7, "tIsAsyn":Z
    const/4 v6, 0x0

    .line 1409
    .local v6, "tHasNext":Z
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v12, :cond_0

    .line 1410
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v12, v12, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-eqz v12, :cond_2

    .line 1485
    .end local p2    # "playlistCode":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v7, :cond_1

    .line 1486
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v12, :cond_a

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v12}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v5

    .line 1487
    .local v5, "tCurVid":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_c

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v12, :cond_b

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v8, v12, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 1488
    .local v8, "tNextVid":Ljava/lang/String;
    :goto_2
    move v9, v6

    .line 1489
    .local v9, "tResult":Z
    iget-object v12, p0, Lcom/tudou/detail/DetailModel;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/tudou/detail/DetailModel$7;

    invoke-direct {v13, p0, v9, v5, v8}, Lcom/tudou/detail/DetailModel$7;-><init>(Lcom/tudou/detail/DetailModel;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1496
    .end local v5    # "tCurVid":Ljava/lang/String;
    .end local v8    # "tNextVid":Ljava/lang/String;
    .end local v9    # "tResult":Z
    :cond_1
    return-void

    .line 1412
    .restart local p2    # "playlistCode":Ljava/lang/String;
    :cond_2
    sget-object v12, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getNextVideoAsyn playtype = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v14}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " type = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v14}, Lcom/youku/player/module/VideoUrlInfo;->getType()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " virturaltype = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v14, v14, Lcom/youku/player/module/VideoUrlInfo;->vitural_type:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", vidoninfo.plid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v14, v14, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", playlistCode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const-string v12, "local"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v13}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1415
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v12}, Lcom/youku/player/module/VideoUrlInfo;->getType()I

    move-result v10

    .line 1416
    .local v10, "tType":I
    sget v12, Lcom/youku/player/module/VideoUrlInfo;->TUDOU_TYPE:I

    if-eq v10, v12, :cond_5

    sget v12, Lcom/youku/player/module/VideoUrlInfo;->YOUKU_TYPE:I

    if-ne v10, v12, :cond_3

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v12, v12, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v12}, Lcom/youku/player/module/VideoUrlInfo;->getType()I

    move-result v12

    sget v13, Lcom/youku/player/module/VideoUrlInfo;->YOUKU_TYPE:I

    if-ne v12, v13, :cond_4

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v12, v12, Lcom/youku/player/module/VideoUrlInfo;->vitural_type:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string/jumbo v12, "tudou"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v13, v13, Lcom/youku/player/module/VideoUrlInfo;->vitural_type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 1422
    :cond_5
    const/4 v7, 0x1

    .line 1423
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    .line 1424
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v12}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v13, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    move-object/from16 p2, v0

    .end local p2    # "playlistCode":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/youku/http/TudouURLContainer;->getNextVideoUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1426
    .local v3, "nextVideoUrl":Ljava/lang/String;
    sget-object v12, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getNextVideoAsyn nextVideoUrl = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v12}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v11

    .line 1428
    .local v11, "tVid":Ljava/lang/String;
    const-class v12, Lcom/youku/network/IHttpRequest;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/network/IHttpRequest;

    .line 1429
    .local v4, "request":Lcom/youku/network/IHttpRequest;
    new-instance v12, Lcom/youku/network/HttpIntent;

    invoke-direct {v12, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/tudou/detail/DetailModel$6;

    move-object/from16 v0, p1

    invoke-direct {v13, p0, v0, v11}, Lcom/tudou/detail/DetailModel$6;-><init>(Lcom/tudou/detail/DetailModel;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;)V

    invoke-interface {v4, v12, v13}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto/16 :goto_0

    .line 1470
    .end local v3    # "nextVideoUrl":Ljava/lang/String;
    .end local v4    # "request":Lcom/youku/network/IHttpRequest;
    .end local v11    # "tVid":Ljava/lang/String;
    .restart local p2    # "playlistCode":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v12}, Lcom/youku/player/module/VideoUrlInfo;->getHaveNext()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    const/4 v6, 0x1

    :goto_3
    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 1473
    .end local v10    # "tType":I
    :cond_9
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v1

    .line 1474
    .local v1, "download":Lcom/tudou/service/download/DownloadManager;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v12}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/tudou/service/download/DownloadManager;->getNextDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v2

    .line 1475
    .local v2, "nextInfo":Lcom/tudou/service/download/DownloadInfo;
    sget-object v12, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getNextVideoAsyn PLAY_TYPE_LOCAL nextInfo = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    if-eqz v2, :cond_0

    .line 1477
    const/4 v6, 0x1

    .line 1478
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v13, v2, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    iput-object v13, v12, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 1479
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v13, v2, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    iput-object v13, v12, Lcom/youku/player/module/VideoUrlInfo;->nextVideoTitle:Ljava/lang/String;

    .line 1480
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    goto/16 :goto_0

    .line 1486
    .end local v1    # "download":Lcom/tudou/service/download/DownloadManager;
    .end local v2    # "nextInfo":Lcom/tudou/service/download/DownloadInfo;
    .end local p2    # "playlistCode":Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1487
    .restart local v5    # "tCurVid":Ljava/lang/String;
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_2
.end method

.method public getRecommendAsyn(Lcom/youku/vo/NewVideoDetail;Ljava/lang/String;Lcom/tudou/android/Youku$VideoType;Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;)V
    .locals 14
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/tudou/android/Youku$VideoType;
    .param p4, "lis"    # Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;

    .prologue
    .line 1554
    const/4 v1, 0x0

    .line 1555
    .local v1, "id":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1556
    .local v2, "cid":Ljava/lang/String;
    const-string v6, ""

    .line 1557
    .local v6, "pcode":Ljava/lang/String;
    const/4 v3, 0x6

    .line 1558
    .local v3, "count":I
    sget-object v4, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_0

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    const-string v5, "album"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1559
    sget-object p3, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    .line 1561
    :cond_0
    sget-object v4, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_2

    .line 1562
    const-string v6, "90000321"

    .line 1563
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v4, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    .line 1564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v5, v5, Lcom/youku/vo/NewVideoDetail$Detail;->cid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1573
    :goto_0
    sget-object v4, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getRecommendAsyn id = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ", cid = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ", type = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1575
    const-class v4, Lcom/youku/network/IHttpRequest;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/youku/network/IHttpRequest;

    .line 1576
    .local v11, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    const/4 v4, 0x3

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lcom/youku/http/TudouURLContainer;->getVideoRecomment(Ljava/lang/String;Ljava/lang/String;IILcom/tudou/android/Youku$VideoType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1578
    .local v12, "url":Ljava/lang/String;
    :try_start_0
    new-instance v10, Lcom/youku/network/HttpIntent;

    const/4 v4, 0x1

    invoke-direct {v10, v12, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1579
    .local v10, "httpIntent":Lcom/youku/network/HttpIntent;
    move-object/from16 v9, p3

    .line 1580
    .local v9, "finalType":Lcom/tudou/android/Youku$VideoType;
    move-object v8, v1

    .line 1581
    .local v8, "finalId":Ljava/lang/String;
    new-instance v4, Lcom/tudou/detail/DetailModel$9;

    move-object/from16 v0, p4

    invoke-direct {v4, p0, v9, v8, v0}, Lcom/tudou/detail/DetailModel$9;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/android/Youku$VideoType;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;)V

    invoke-interface {v11, v10, v4}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    .end local v8    # "finalId":Ljava/lang/String;
    .end local v9    # "finalType":Lcom/tudou/android/Youku$VideoType;
    .end local v10    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v11    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v12    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1566
    :cond_2
    sget-object v4, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_3

    .line 1567
    const-string v6, "90000311"

    .line 1571
    :goto_2
    move-object/from16 v1, p2

    goto :goto_0

    .line 1569
    :cond_3
    const-string v6, "90000301"

    goto :goto_2

    .line 1616
    .restart local v11    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v12    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1617
    .local v7, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v5, "getRecommendAsyn"

    invoke-static {v4, v5, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1618
    if-eqz p4, :cond_1

    .line 1619
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v4, v5}, Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;->onVideoRecommendGetted(ZLcom/youku/vo/DetailRecomment;)V

    goto :goto_1
.end method

.method public getVideoDetailAsyn(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isShowId"    # Z
    .param p3, "albumId"    # Ljava/lang/String;
    .param p4, "playlistId"    # Ljava/lang/String;
    .param p5, "lis"    # Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;

    .prologue
    const/4 v6, 0x1

    .line 1699
    sget-object v3, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoDetailAsyn videoId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isShowId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1702
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    const/4 v2, 0x0

    .line 1703
    .local v2, "url":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1704
    invoke-static {p3, v6}, Lcom/youku/http/TudouURLContainer;->getVideoNewDetailURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1708
    :goto_0
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2, v6}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1709
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/detail/DetailModel$12;

    invoke-direct {v3, p0, p5, p1, p4}, Lcom/tudou/detail/DetailModel$12;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1743
    return-void

    .line 1706
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    :cond_0
    invoke-static {p1, p2}, Lcom/youku/http/TudouURLContainer;->getVideoNewDetailURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getVideoFeatureAsyn(Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;)V
    .locals 9
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "lis"    # Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;

    .prologue
    const/4 v8, 0x1

    .line 1513
    sget-object v5, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVideoFeatureAsyn vid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    const/4 v2, 0x0

    .line 1515
    .local v2, "success":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1516
    const-class v5, Lcom/youku/network/IHttpRequest;

    invoke-static {v5, v8}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/network/IHttpRequest;

    .line 1517
    .local v3, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    const/16 v5, 0x10

    sget-object v6, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    invoke-static {p1, v8, v5, v6}, Lcom/youku/http/TudouURLContainer;->getVideoFeature(Ljava/lang/String;IILcom/tudou/android/Youku$VideoType;)Ljava/lang/String;

    move-result-object v4

    .line 1519
    .local v4, "url":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/youku/network/HttpIntent;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1520
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v5, Lcom/tudou/detail/DetailModel$8;

    invoke-direct {v5, p0, p1, p2}, Lcom/tudou/detail/DetailModel$8;-><init>(Lcom/tudou/detail/DetailModel;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;)V

    invoke-interface {v3, v1, v5}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1551
    .end local v1    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v3    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1544
    .restart local v3    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1545
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v6, "getVideoFeatureAsyn"

    invoke-static {v5, v6, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1546
    if-eqz p2, :cond_0

    .line 1547
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {p2, v5, v6}, Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;->onVideoFeatureGetted(ZLcom/tudou/detail/vo/DetailFeature;)V

    goto :goto_0
.end method

.method public getVideoHasGoodAsyn(Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;)V
    .locals 6
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;

    .prologue
    const/4 v5, 0x1

    .line 1972
    sget-object v2, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoHasGoodAsyn videoId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1974
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getVideoState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1975
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/detail/DetailModel$17;

    invoke-direct {v2, p0, p2, p1}, Lcom/tudou/detail/DetailModel$17;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 2005
    return-void
.end method

.method public getVideoListAsyn(Lcom/youku/vo/NewVideoDetail;Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;)V
    .locals 17
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "lis"    # Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;

    .prologue
    .line 1628
    invoke-virtual/range {p0 .. p1}, Lcom/tudou/detail/DetailModel;->getVideoListFromCache(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v13

    .line 1629
    .local v13, "videoList":Lcom/tudou/detail/vo/VideoList;
    invoke-virtual/range {p1 .. p1}, Lcom/youku/vo/NewVideoDetail;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1630
    .local v5, "id":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1631
    .local v7, "success":Z
    const/4 v8, 0x0

    .line 1632
    .local v8, "tAsyn":Z
    if-nez v13, :cond_8

    .line 1633
    const/4 v12, 0x0

    .line 1634
    .local v12, "url":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v11

    .line 1635
    .local v11, "type":Lcom/tudou/android/Youku$VideoType;
    sget-object v14, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v14, v11, :cond_5

    .line 1636
    const/4 v14, 0x1

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v15, v15, Lcom/youku/vo/NewVideoDetail$Detail;->completed:I

    invoke-static {v5, v14, v15}, Lcom/youku/http/TudouURLContainer;->getVideoListURLV4(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    .line 1640
    :cond_0
    :goto_0
    sget-object v14, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getVideoListAsyn id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", type = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    sget-object v14, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-eq v14, v11, :cond_1

    sget-object v14, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v14, v11, :cond_7

    .line 1642
    :cond_1
    const/4 v8, 0x1

    .line 1643
    const-class v14, Lcom/youku/network/IHttpRequest;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/network/IHttpRequest;

    .line 1645
    .local v9, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    :try_start_0
    new-instance v4, Lcom/youku/network/HttpIntent;

    const/4 v14, 0x1

    invoke-direct {v4, v12, v14}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1646
    .local v4, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v14, Lcom/tudou/detail/DetailModel$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v11, v5, v1}, Lcom/tudou/detail/DetailModel$10;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/android/Youku$VideoType;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;)V

    invoke-interface {v9, v4, v14}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1679
    .end local v4    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v9    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v11    # "type":Lcom/tudou/android/Youku$VideoType;
    .end local v12    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v8, :cond_4

    .line 1680
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v14

    if-lez v14, :cond_3

    .line 1681
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/DetailModel;->mVideoListCache:Lcom/tudou/detail/VideoListCache;

    invoke-virtual {v14, v5, v13}, Lcom/tudou/detail/VideoListCache;->add(Ljava/lang/String;Lcom/tudou/detail/vo/VideoList;)V

    .line 1682
    const/4 v7, 0x1

    .line 1684
    :cond_3
    move-object v10, v13

    .line 1685
    .local v10, "tVideoList":Lcom/tudou/detail/vo/VideoList;
    move v3, v7

    .line 1686
    .local v3, "fSuccess":Z
    new-instance v6, Lcom/tudou/detail/DetailModel$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v6, v0, v1, v10}, Lcom/tudou/detail/DetailModel$11;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;Lcom/tudou/detail/vo/VideoList;)V

    .line 1694
    .local v6, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/tudou/detail/DetailModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1696
    .end local v3    # "fSuccess":Z
    .end local v6    # "r":Ljava/lang/Runnable;
    .end local v10    # "tVideoList":Lcom/tudou/detail/vo/VideoList;
    :cond_4
    return-void

    .line 1637
    .restart local v11    # "type":Lcom/tudou/android/Youku$VideoType;
    .restart local v12    # "url":Ljava/lang/String;
    :cond_5
    sget-object v14, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v14, v11, :cond_0

    .line 1638
    invoke-static {v5}, Lcom/youku/http/TudouURLContainer;->getVideoListUGCURLV4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 1667
    .restart local v9    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    :catch_0
    move-exception v2

    .line 1668
    .local v2, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_6

    .line 1669
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;->onVideoListGetted(ZLcom/tudou/detail/vo/VideoList;)V

    .line 1671
    :cond_6
    sget-object v14, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v15, "getVideoListAsyn"

    invoke-static {v14, v15, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1673
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    :cond_7
    sget-object v14, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    if-ne v14, v11, :cond_2

    .line 1674
    invoke-static/range {p1 .. p1}, Lcom/tudou/detail/vo/VideoList;->createFromVideoDetail(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v13

    goto :goto_1

    .line 1677
    .end local v11    # "type":Lcom/tudou/android/Youku$VideoType;
    .end local v12    # "url":Ljava/lang/String;
    :cond_8
    sget-object v14, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    const-string v15, "getVideoListAsyn hit from cache."

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getVideoListFromCache(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/detail/vo/VideoList;
    .locals 1
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/tudou/detail/DetailModel;->mVideoListCache:Lcom/tudou/detail/VideoListCache;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/VideoListCache;->getVideoList(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v0

    return-object v0
.end method

.method public isVideoFaved(Ljava/lang/String;)V
    .locals 2
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 1383
    invoke-static {}, Lcom/tudou/service/favourite/FavouriteVedioManager;->getInstance()Lcom/tudou/service/favourite/IFavouriteVedio;

    move-result-object v0

    .line 1384
    .local v0, "favourite":Lcom/tudou/service/favourite/IFavouriteVedio;
    new-instance v1, Lcom/tudou/detail/DetailModel$5;

    invoke-direct {v1, p0, p1}, Lcom/tudou/detail/DetailModel$5;-><init>(Lcom/tudou/detail/DetailModel;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/tudou/service/favourite/IFavouriteVedio;->isFavrite(Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V

    .line 1403
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2009
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2010
    .local v0, "action":Ljava/lang/String;
    sget-object v10, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive intent = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    iget-object v10, p0, Lcom/tudou/detail/DetailModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/tudou/detail/DetailModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tudou/detail/DetailModel$Callbacks;

    move-object v1, v10

    .line 2012
    .local v1, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :goto_0
    if-eqz v1, :cond_0

    .line 2013
    const-string v10, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2014
    const-string/jumbo v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2015
    .local v6, "state":I
    const-string v10, "microphone"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2016
    .local v3, "microphone":I
    const-string v10, "name"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2017
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v1, v6, v4, v3}, Lcom/tudou/detail/DetailModel$Callbacks;->onHeadsetPlug(ILjava/lang/String;I)V

    .line 2039
    .end local v3    # "microphone":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "state":I
    :cond_0
    :goto_1
    return-void

    .line 2011
    .end local v1    # "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2018
    .restart local v1    # "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :cond_2
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2019
    const-string v10, "level"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2020
    .local v2, "level":I
    const-string/jumbo v10, "scale"

    const/16 v11, 0x64

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2021
    .local v5, "scale":I
    const-string/jumbo v10, "status"

    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2022
    .local v7, "status":I
    invoke-interface {v1, v2, v5, v7}, Lcom/tudou/detail/DetailModel$Callbacks;->onBatteryChanged(III)V

    goto :goto_1

    .line 2023
    .end local v2    # "level":I
    .end local v5    # "scale":I
    .end local v7    # "status":I
    :cond_3
    const-string v10, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_FAILED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_READY"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2025
    :cond_4
    const-string v10, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_READY"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 2026
    .local v8, "success":Z
    const-string/jumbo v10, "video_id"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2027
    .local v9, "vid":Ljava/lang/String;
    invoke-interface {v1, v8, v9}, Lcom/tudou/detail/DetailModel$Callbacks;->onCreateDownloadTaskComplete(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public setCallback(Lcom/tudou/detail/DetailModel$Callbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/tudou/detail/DetailModel$Callbacks;

    .prologue
    .line 1376
    iget-object v1, p0, Lcom/tudou/detail/DetailModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1377
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tudou/detail/DetailModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 1378
    monitor-exit v1

    .line 1379
    return-void

    .line 1378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVideoAttentionAsync(Landroid/app/Activity;Lcom/youku/vo/NewVideoDetail;ZLcom/tudou/detail/DetailModel$OnSetAttentionComplete;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p3, "attention"    # Z
    .param p4, "r"    # Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;

    .prologue
    .line 2042
    sget-object v1, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVideoAttentionAsync attention = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object v1, p0, Lcom/tudou/detail/DetailModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 2047
    .local v0, "tCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 2048
    if-eqz p3, :cond_1

    .line 2049
    invoke-direct {p0, p1, p2, p4}, Lcom/tudou/detail/DetailModel;->addVideoAttentionAsync(Landroid/app/Activity;Lcom/youku/vo/NewVideoDetail;Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;)V

    .line 2058
    :cond_0
    :goto_0
    return-void

    .line 2051
    :cond_1
    invoke-direct {p0, p1, p2, p4}, Lcom/tudou/detail/DetailModel;->removeVideoAttentionAsync(Landroid/app/Activity;Lcom/youku/vo/NewVideoDetail;Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;)V

    goto :goto_0
.end method

.method public startLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "albumId"    # Ljava/lang/String;
    .param p4, "plId"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/tudou/android/Youku$Type;

    .prologue
    .line 1166
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/tudou/detail/DetailModel;->startLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;IZ)V

    .line 1167
    return-void
.end method

.method public startLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;IZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "albumId"    # Ljava/lang/String;
    .param p4, "plId"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/tudou/android/Youku$Type;
    .param p6, "flag"    # I
    .param p7, "clear"    # Z

    .prologue
    .line 1170
    sget-object v1, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startLoader clear = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", albumId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1171
    move/from16 v0, p6

    or-int/lit16 v0, v0, 0x200

    move/from16 p6, v0

    .line 1172
    invoke-virtual {p0}, Lcom/tudou/detail/DetailModel;->stopLoader()V

    .line 1173
    iget-object v9, p0, Lcom/tudou/detail/DetailModel;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1174
    :try_start_0
    sget-object v1, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startLoader inner"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object v1, p0, Lcom/tudou/detail/DetailModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/DetailModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1176
    new-instance v1, Lcom/tudou/detail/DetailModel$LoaderTask;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/tudou/detail/DetailModel$LoaderTask;-><init>(Lcom/tudou/detail/DetailModel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/tudou/detail/DetailModel;->mLoaderTask:Lcom/tudou/detail/DetailModel$LoaderTask;

    .line 1177
    sget-object v1, Lcom/tudou/detail/DetailModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tudou/detail/DetailModel;->mLoaderTask:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1178
    iget-object v1, p0, Lcom/tudou/detail/DetailModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/DetailModel$Callbacks;

    move/from16 v0, p7

    invoke-interface {v1, v0}, Lcom/tudou/detail/DetailModel$Callbacks;->startBinding(Z)V

    .line 1182
    :goto_0
    monitor-exit v9

    .line 1183
    return-void

    .line 1180
    :cond_0
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string/jumbo v2, "startLoader error"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1182
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startLoaderSecondPart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    .line 1196
    sget-object v1, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startLoaderSecondPart"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-object v2, p0, Lcom/tudou/detail/DetailModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1198
    :try_start_0
    sget-object v1, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startLoaderSecondPart inner"

    invoke-static {v1, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iget-object v1, p0, Lcom/tudou/detail/DetailModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/DetailModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1200
    iget-object v1, p0, Lcom/tudou/detail/DetailModel;->mLoaderTask:Lcom/tudou/detail/DetailModel$LoaderTask;

    if-eqz v1, :cond_0

    .line 1201
    iget-object v1, p0, Lcom/tudou/detail/DetailModel;->mLoaderTask:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-virtual {v1, p2}, Lcom/tudou/detail/DetailModel$LoaderTask;->setVideoId(Ljava/lang/String;)V

    .line 1202
    iget-object v3, p0, Lcom/tudou/detail/DetailModel;->mLoaderTask:Lcom/tudou/detail/DetailModel$LoaderTask;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1204
    :try_start_1
    iget-object v1, p0, Lcom/tudou/detail/DetailModel;->mLoaderTask:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1208
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1211
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1212
    return-void

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1208
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 1211
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public startVideoRecord(Ljava/lang/String;Ljava/lang/String;II)Lcom/tudou/detail/DetailModel$StartVideoRecordResult;
    .locals 10
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "startTime"    # I
    .param p4, "maxDuration"    # I

    .prologue
    const/4 v9, 0x1

    .line 1884
    sget-object v6, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startVideoRecord videoId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " startTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " maxDuration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    const/4 v2, 0x0

    .line 1886
    .local v2, "ret":Lcom/tudou/detail/DetailModel$StartVideoRecordResult;
    const-class v6, Lcom/youku/network/IHttpRequest;

    invoke-static {v6, v9}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/network/IHttpRequest;

    .line 1887
    .local v3, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {p1, p2, p3, p4}, Lcom/youku/http/TudouURLContainer;->getStartVideoRecordUrl(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 1888
    .local v5, "url":Ljava/lang/String;
    sget-object v6, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startVideoRecord url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    :try_start_0
    const-string v6, "GET"

    const/4 v7, 0x1

    invoke-interface {v3, v5, v6, v7}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1891
    .local v1, "result":Ljava/lang/String;
    sget-object v6, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startVideoRecord result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1893
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1894
    .local v4, "tObject":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->createFromJson(Lorg/json/JSONObject;)Lcom/tudou/detail/DetailModel$StartVideoRecordResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1899
    .end local v1    # "result":Ljava/lang/String;
    .end local v4    # "tObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 1896
    :catch_0
    move-exception v0

    .line 1897
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string/jumbo v7, "startVideoRecord"

    invoke-static {v6, v7, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopLoader()V
    .locals 3

    .prologue
    .line 1186
    sget-object v0, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopLoader"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v1, p0, Lcom/tudou/detail/DetailModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1188
    :try_start_0
    sget-object v0, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopLoader inner"

    invoke-static {v0, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/tudou/detail/DetailModel;->mLoaderTask:Lcom/tudou/detail/DetailModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/tudou/detail/DetailModel;->mLoaderTask:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-virtual {v0}, Lcom/tudou/detail/DetailModel$LoaderTask;->stopLocked()V

    .line 1192
    :cond_0
    monitor-exit v1

    .line 1193
    return-void

    .line 1192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopVideoRecord(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "stopUrl"    # Ljava/lang/String;
    .param p3, "startTime"    # I
    .param p4, "endTime"    # I
    .param p5, "out"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1903
    sget-object v2, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopVideoRecord videoId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stopUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " endTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    const/4 v8, 0x0

    .line 1905
    .local v8, "ret":Ljava/lang/String;
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/network/IHttpRequest;

    .line 1906
    .local v0, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {p1, p2, p3, p4}, Lcom/youku/http/TudouURLContainer;->getStopVideoRecordUrl(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 1907
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopVideoRecord url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    :try_start_0
    const-string v2, "GET"

    const/4 v3, 0x1

    const/16 v4, 0x2710

    const/16 v5, 0x2710

    invoke-interface/range {v0 .. v5}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;

    move-result-object v7

    .line 1910
    .local v7, "result":Ljava/lang/String;
    sget-object v2, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopVideoRecord result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1912
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1913
    .local v9, "tObject":Lorg/json/JSONObject;
    const-string v2, "code"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1914
    const-string v2, "h5Url"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1915
    const/4 v2, 0x0

    const-string/jumbo v3, "smallPicUrl"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1921
    .end local v7    # "result":Ljava/lang/String;
    .end local v9    # "tObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v8

    .line 1918
    :catch_0
    move-exception v6

    .line 1919
    .local v6, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string/jumbo v3, "stopVideoRecord"

    invoke-static {v2, v3, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateVideoRecordAsyn(Ljava/lang/String;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;)V
    .locals 7
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "l"    # Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;

    .prologue
    const/4 v6, 0x0

    .line 1858
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1859
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getUpdateVideoRecordUrl()Ljava/lang/String;

    move-result-object v2

    .line 1860
    .local v2, "url":Ljava/lang/String;
    sget-object v3, Lcom/tudou/detail/DetailModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVideoRecordAsyn itemCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-static {p1, p2, v6, v6, v6}, Lcom/youku/http/TudouURLContainer;->getUpdateVideoRecordData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1862
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/detail/DetailModel$16;

    invoke-direct {v3, p0, p3}, Lcom/tudou/detail/DetailModel$16;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1881
    return-void
.end method

.method public vote(Ljava/lang/String;IIILcom/tudou/detail/DetailModel$OnVoteComplete;)V
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "widgetId"    # I
    .param p3, "voteId"    # I
    .param p4, "voteType"    # I
    .param p5, "lis"    # Lcom/tudou/detail/DetailModel$OnVoteComplete;

    .prologue
    const/4 v3, 0x1

    .line 1297
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1298
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1, p2, p3, p4, v3}, Lcom/youku/http/TudouURLContainer;->getVideoVote(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1299
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/detail/DetailModel$3;

    invoke-direct {v2, p0, p5, p1, p2}, Lcom/tudou/detail/DetailModel$3;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnVoteComplete;Ljava/lang/String;I)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1327
    return-void
.end method

.method public voteResult(Lcom/tudou/detail/vo/VoteInfo;Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;)V
    .locals 5
    .param p1, "info"    # Lcom/tudou/detail/vo/VoteInfo;
    .param p2, "lis"    # Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;

    .prologue
    const/4 v4, 0x1

    .line 1215
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1216
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    iget-object v2, p1, Lcom/tudou/detail/vo/VoteInfo;->vid:Ljava/lang/String;

    iget v3, p1, Lcom/tudou/detail/vo/VoteInfo;->mWidgetId:I

    invoke-static {v2, v3}, Lcom/youku/http/TudouURLContainer;->getVideoVoteResult(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1217
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/detail/DetailModel$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tudou/detail/DetailModel$1;-><init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/vo/VoteInfo;Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1259
    return-void
.end method
