.class Lio/rong/imkit/RongContext$3;
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
        "Lio/rong/imkit/model/GroupUserInfo;",
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
    .line 376
    iput-object p1, p0, Lio/rong/imkit/RongContext$3;->this$0:Lio/rong/imkit/RongContext;

    invoke-direct {p0, p2, p3}, Lio/rong/imkit/cache/RongCacheWrap;-><init>(Lio/rong/imkit/RongContext;I)V

    .line 377
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext$3;->mRequests:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public obtainValue(Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 420
    :cond_0
    :goto_0
    return-object v2

    .line 384
    :cond_1
    const/4 v2, 0x0

    .line 385
    .local v2, "userInfo":Lio/rong/imkit/model/GroupUserInfo;
    iget-object v4, p0, Lio/rong/imkit/RongContext$3;->mRequests:Ljava/util/Vector;

    monitor-enter v4

    .line 386
    :try_start_0
    iget-object v5, p0, Lio/rong/imkit/RongContext$3;->mRequests:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 387
    monitor-exit v4

    move-object v2, v3

    goto :goto_0

    .line 388
    :cond_2
    iget-object v5, p0, Lio/rong/imkit/RongContext$3;->mRequests:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 389
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object v4, p0, Lio/rong/imkit/RongContext$3;->this$0:Lio/rong/imkit/RongContext;

    invoke-static {v4}, Lio/rong/imkit/RongContext;->access$100(Lio/rong/imkit/RongContext;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 392
    invoke-virtual {p0, v7}, Lio/rong/imkit/RongContext$3;->setIsSync(Z)V

    .line 395
    :cond_3
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$3;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getGroupUserInfoProvider()Lio/rong/imkit/RongIM$GroupUserInfoProvider;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 396
    invoke-static {p1}, Lio/rong/imkit/utils/StringUtils;->getArg1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "arg1":Ljava/lang/String;
    invoke-static {p1}, Lio/rong/imkit/utils/StringUtils;->getArg2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "arg2":Ljava/lang/String;
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$3;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getGroupUserInfoProvider()Lio/rong/imkit/RongIM$GroupUserInfoProvider;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lio/rong/imkit/RongIM$GroupUserInfoProvider;->getGroupUserInfo(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v2

    .line 399
    iget-object v4, p0, Lio/rong/imkit/RongContext$3;->mRequests:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 401
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lio/rong/imkit/model/GroupUserInfo;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/imkit/utils/StringUtils;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 402
    const-string v4, "GroupUserInfoCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getGroupUserInfoProvider name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$3;->isIsSync()Z

    move-result v4

    if-nez v4, :cond_0

    .line 405
    iget-object v4, p0, Lio/rong/imkit/RongContext$3;->this$0:Lio/rong/imkit/RongContext;

    invoke-static {v4}, Lio/rong/imkit/RongContext;->access$100(Lio/rong/imkit/RongContext;)Z

    move-result v4

    if-ne v4, v7, :cond_4

    .line 406
    invoke-virtual {p0, p1, v2}, Lio/rong/imkit/RongContext$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_4
    iget-object v4, p0, Lio/rong/imkit/RongContext$3;->this$0:Lio/rong/imkit/RongContext;

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v4

    invoke-static {v2}, Lio/rong/imkit/model/Event$GroupUserInfoEvent;->obtain(Lio/rong/imkit/model/GroupUserInfo;)Lio/rong/imkit/model/Event$GroupUserInfoEvent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .end local v0    # "arg1":Ljava/lang/String;
    .end local v1    # "arg2":Ljava/lang/String;
    :cond_5
    :goto_1
    move-object v2, v3

    .line 420
    goto/16 :goto_0

    .line 389
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 413
    .restart local v0    # "arg1":Ljava/lang/String;
    .restart local v1    # "arg2":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$3;->isIsSync()Z

    move-result v4

    if-nez v4, :cond_7

    .line 414
    iget-object v4, p0, Lio/rong/imkit/RongContext$3;->this$0:Lio/rong/imkit/RongContext;

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v4

    invoke-static {p1}, Lio/rong/imkit/model/Event$NotificationUserInfoEvent;->obtain(Ljava/lang/String;)Lio/rong/imkit/model/Event$NotificationUserInfoEvent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    move-object v2, v3

    .line 416
    goto/16 :goto_0
.end method

.method public bridge synthetic obtainValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 376
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongContext$3;->obtainValue(Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v0

    return-object v0
.end method
