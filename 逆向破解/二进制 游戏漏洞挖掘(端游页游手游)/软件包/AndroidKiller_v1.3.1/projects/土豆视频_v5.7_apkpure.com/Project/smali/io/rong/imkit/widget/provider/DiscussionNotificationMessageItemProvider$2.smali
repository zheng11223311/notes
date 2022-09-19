.class Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$2;
.super Ljava/lang/Object;
.source "DiscussionNotificationMessageItemProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->onEventBackgroundThread(Lio/rong/imlib/model/UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;

.field final synthetic val$userInfo:Lio/rong/imlib/model/UserInfo;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;Lio/rong/imlib/model/UserInfo;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$2;->this$0:Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;

    iput-object p2, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$2;->val$userInfo:Lio/rong/imlib/model/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 401
    const-class v0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;

    const-string v1, "onEventBackgroundThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$2;->val$userInfo:Lio/rong/imlib/model/UserInfo;

    invoke-virtual {v3}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$2;->val$userInfo:Lio/rong/imlib/model/UserInfo;

    invoke-virtual {v1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->isCacheUserId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$2;->val$userInfo:Lio/rong/imlib/model/UserInfo;

    invoke-virtual {v1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->notifyMessageUpdate(Ljava/lang/String;)V

    .line 407
    :cond_0
    return-void
.end method
