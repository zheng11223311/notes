.class Lio/rong/imkit/RongContext$2;
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
        "Lio/rong/imlib/model/UserInfo;",
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
    .line 323
    iput-object p1, p0, Lio/rong/imkit/RongContext$2;->this$0:Lio/rong/imkit/RongContext;

    invoke-direct {p0, p2, p3}, Lio/rong/imkit/cache/RongCacheWrap;-><init>(Lio/rong/imkit/RongContext;I)V

    .line 325
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext$2;->mRequests:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public obtainValue(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 372
    :cond_0
    :goto_0
    return-object v0

    .line 334
    :cond_1
    const/4 v0, 0x0

    .line 336
    .local v0, "userInfo":Lio/rong/imlib/model/UserInfo;
    iget-object v2, p0, Lio/rong/imkit/RongContext$2;->mRequests:Ljava/util/Vector;

    monitor-enter v2

    .line 337
    :try_start_0
    iget-object v3, p0, Lio/rong/imkit/RongContext$2;->mRequests:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 339
    :cond_2
    iget-object v3, p0, Lio/rong/imkit/RongContext$2;->mRequests:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 340
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    iget-object v2, p0, Lio/rong/imkit/RongContext$2;->this$0:Lio/rong/imkit/RongContext;

    invoke-static {v2}, Lio/rong/imkit/RongContext;->access$000(Lio/rong/imkit/RongContext;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 343
    invoke-virtual {p0, v5}, Lio/rong/imkit/RongContext$2;->setIsSync(Z)V

    .line 346
    :cond_3
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$2;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getUserInfoProvider()Lio/rong/imkit/RongIM$UserInfoProvider;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 348
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$2;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getUserInfoProvider()Lio/rong/imkit/RongIM$UserInfoProvider;

    move-result-object v2

    invoke-interface {v2, p1}, Lio/rong/imkit/RongIM$UserInfoProvider;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    .line 350
    iget-object v2, p0, Lio/rong/imkit/RongContext$2;->mRequests:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 352
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 353
    const-string v2, "UserInfoCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserInfoProvider name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$2;->isIsSync()Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    iget-object v2, p0, Lio/rong/imkit/RongContext$2;->this$0:Lio/rong/imkit/RongContext;

    invoke-static {v2}, Lio/rong/imkit/RongContext;->access$000(Lio/rong/imkit/RongContext;)Z

    move-result v2

    if-ne v2, v5, :cond_4

    .line 357
    invoke-virtual {p0, p1, v0}, Lio/rong/imkit/RongContext$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_4
    iget-object v2, p0, Lio/rong/imkit/RongContext$2;->this$0:Lio/rong/imkit/RongContext;

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    move-object v0, v1

    .line 372
    goto :goto_0

    .line 340
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 364
    :cond_6
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$2;->isIsSync()Z

    move-result v2

    if-nez v2, :cond_7

    .line 365
    iget-object v2, p0, Lio/rong/imkit/RongContext$2;->this$0:Lio/rong/imkit/RongContext;

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-static {p1}, Lio/rong/imkit/model/Event$NotificationUserInfoEvent;->obtain(Ljava/lang/String;)Lio/rong/imkit/model/Event$NotificationUserInfoEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    move-object v0, v1

    .line 367
    goto/16 :goto_0
.end method

.method public bridge synthetic obtainValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 323
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongContext$2;->obtainValue(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    return-object v0
.end method
