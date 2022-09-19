.class Lio/rong/imkit/RongContext$6;
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
        "Lio/rong/imlib/model/PublicServiceProfile;",
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
    .line 516
    iput-object p1, p0, Lio/rong/imkit/RongContext$6;->this$0:Lio/rong/imkit/RongContext;

    invoke-direct {p0, p2, p3}, Lio/rong/imkit/cache/RongCacheWrap;-><init>(Lio/rong/imkit/RongContext;I)V

    .line 517
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext$6;->mRequests:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$400(Lio/rong/imkit/RongContext$6;)Lio/rong/imkit/RongContext;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/RongContext$6;

    .prologue
    .line 516
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$6;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public obtainValue(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 521
    const/4 v2, 0x0

    .line 523
    .local v2, "strs":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 524
    const-string v4, "#@6RONG_CLOUD9@#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 526
    array-length v4, v2

    if-lt v4, v5, :cond_0

    aget-object v4, v2, v6

    if-eqz v4, :cond_0

    aget-object v4, v2, v5

    if-eqz v4, :cond_0

    aget-object v4, v2, v6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-object v7

    .line 536
    :cond_1
    aget-object v0, v2, v6

    .line 537
    .local v0, "id":Ljava/lang/String;
    aget-object v3, v2, v5

    .line 539
    .local v3, "type":Ljava/lang/String;
    const-string v4, "PublicServiceInfoCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v5, p0, Lio/rong/imkit/RongContext$6;->mRequests:Ljava/util/Vector;

    monitor-enter v5

    .line 541
    :try_start_0
    iget-object v4, p0, Lio/rong/imkit/RongContext$6;->mRequests:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 542
    monitor-exit v5

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 543
    :cond_2
    :try_start_1
    iget-object v4, p0, Lio/rong/imkit/RongContext$6;->mRequests:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 544
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    const/4 v1, 0x0

    .line 548
    .local v1, "publicAccountInfo":Lio/rong/imlib/model/PublicServiceProfile;
    iget-object v4, p0, Lio/rong/imkit/RongContext$6;->this$0:Lio/rong/imkit/RongContext;

    iget-object v4, v4, Lio/rong/imkit/RongContext;->mHandler:Landroid/os/Handler;

    new-instance v5, Lio/rong/imkit/RongContext$6$1;

    invoke-direct {v5, p0, v3, v0, p1}, Lio/rong/imkit/RongContext$6$1;-><init>(Lio/rong/imkit/RongContext$6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic obtainValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 516
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongContext$6;->obtainValue(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v0

    return-object v0
.end method
