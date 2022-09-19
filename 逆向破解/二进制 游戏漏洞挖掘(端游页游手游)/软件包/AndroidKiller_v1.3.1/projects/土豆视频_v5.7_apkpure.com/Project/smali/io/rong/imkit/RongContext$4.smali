.class Lio/rong/imkit/RongContext$4;
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
        "Lio/rong/imlib/model/Group;",
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
    .line 424
    iput-object p1, p0, Lio/rong/imkit/RongContext$4;->this$0:Lio/rong/imkit/RongContext;

    invoke-direct {p0, p2, p3}, Lio/rong/imkit/cache/RongCacheWrap;-><init>(Lio/rong/imkit/RongContext;I)V

    .line 426
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext$4;->mRequests:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public obtainValue(Ljava/lang/String;)Lio/rong/imlib/model/Group;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 464
    :cond_0
    :goto_0
    return-object v0

    .line 434
    :cond_1
    const/4 v0, 0x0

    .line 436
    .local v0, "group":Lio/rong/imlib/model/Group;
    iget-object v2, p0, Lio/rong/imkit/RongContext$4;->mRequests:Ljava/util/Vector;

    monitor-enter v2

    .line 437
    :try_start_0
    iget-object v3, p0, Lio/rong/imkit/RongContext$4;->mRequests:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 439
    :cond_2
    iget-object v3, p0, Lio/rong/imkit/RongContext$4;->mRequests:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 440
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$4;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getGroupInfoProvider()Lio/rong/imkit/RongIM$GroupInfoProvider;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 443
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$4;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getGroupInfoProvider()Lio/rong/imkit/RongIM$GroupInfoProvider;

    move-result-object v2

    invoke-interface {v2, p1}, Lio/rong/imkit/RongIM$GroupInfoProvider;->getGroupInfo(Ljava/lang/String;)Lio/rong/imlib/model/Group;

    move-result-object v0

    .line 444
    iget-object v2, p0, Lio/rong/imkit/RongContext$4;->mRequests:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 447
    :cond_3
    iget-object v2, p0, Lio/rong/imkit/RongContext$4;->this$0:Lio/rong/imkit/RongContext;

    invoke-static {v2}, Lio/rong/imkit/RongContext;->access$200(Lio/rong/imkit/RongContext;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 448
    invoke-virtual {p0, v4}, Lio/rong/imkit/RongContext$4;->setIsSync(Z)V

    .line 451
    :cond_4
    if-eqz v0, :cond_6

    .line 452
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$4;->isIsSync()Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    iget-object v2, p0, Lio/rong/imkit/RongContext$4;->this$0:Lio/rong/imkit/RongContext;

    invoke-static {v2}, Lio/rong/imkit/RongContext;->access$200(Lio/rong/imkit/RongContext;)Z

    move-result v2

    if-ne v2, v4, :cond_5

    .line 454
    invoke-virtual {p0, p1, v0}, Lio/rong/imkit/RongContext$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_5
    iget-object v2, p0, Lio/rong/imkit/RongContext$4;->this$0:Lio/rong/imkit/RongContext;

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :goto_1
    move-object v0, v1

    .line 464
    goto :goto_0

    .line 440
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 461
    :cond_6
    iget-object v2, p0, Lio/rong/imkit/RongContext$4;->this$0:Lio/rong/imkit/RongContext;

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-static {p1}, Lio/rong/imkit/model/Event$NotificationGroupInfoEvent;->obtain(Ljava/lang/String;)Lio/rong/imkit/model/Event$NotificationGroupInfoEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public bridge synthetic obtainValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 424
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongContext$4;->obtainValue(Ljava/lang/String;)Lio/rong/imlib/model/Group;

    move-result-object v0

    return-object v0
.end method
