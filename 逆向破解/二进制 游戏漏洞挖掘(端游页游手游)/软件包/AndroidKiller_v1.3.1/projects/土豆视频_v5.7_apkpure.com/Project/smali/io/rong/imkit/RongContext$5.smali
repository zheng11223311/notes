.class Lio/rong/imkit/RongContext$5;
.super Lio/rong/imkit/cache/RongCacheWrap;
.source "RongContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongContext;->initCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/cache/RongCacheWrap",
        "<",
        "Ljava/lang/String;",
        "Lio/rong/imlib/model/Discussion;",
        ">;"
    }
.end annotation


# instance fields
.field mRequests:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/rong/imkit/RongContext;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongContext;Lio/rong/imkit/RongContext;I)V
    .locals 1
    .param p2, "x0"    # Lio/rong/imkit/RongContext;
    .param p3, "x1"    # I

    .prologue
    .line 468
    iput-object p1, p0, Lio/rong/imkit/RongContext$5;->this$0:Lio/rong/imkit/RongContext;

    invoke-direct {p0, p2, p3}, Lio/rong/imkit/cache/RongCacheWrap;-><init>(Lio/rong/imkit/RongContext;I)V

    .line 469
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext$5;->mRequests:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$300(Lio/rong/imkit/RongContext$5;)Lio/rong/imkit/RongContext;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/RongContext$5;

    .prologue
    .line 468
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$5;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public obtainValue(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 474
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    :goto_0
    return-object v3

    .line 477
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/RongContext$5;->mRequests:Ljava/util/Vector;

    monitor-enter v2

    .line 478
    :try_start_0
    iget-object v1, p0, Lio/rong/imkit/RongContext$5;->mRequests:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    monitor-exit v2

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 480
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/rong/imkit/RongContext$5;->mRequests:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 481
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    const/4 v0, 0x0

    .line 485
    .local v0, "discussion":Lio/rong/imlib/model/Discussion;
    iget-object v1, p0, Lio/rong/imkit/RongContext$5;->this$0:Lio/rong/imkit/RongContext;

    iget-object v1, v1, Lio/rong/imkit/RongContext;->mHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imkit/RongContext$5$1;

    invoke-direct {v2, p0, p1}, Lio/rong/imkit/RongContext$5$1;-><init>(Lio/rong/imkit/RongContext$5;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic obtainValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 468
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongContext$5;->obtainValue(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;

    move-result-object v0

    return-object v0
.end method
