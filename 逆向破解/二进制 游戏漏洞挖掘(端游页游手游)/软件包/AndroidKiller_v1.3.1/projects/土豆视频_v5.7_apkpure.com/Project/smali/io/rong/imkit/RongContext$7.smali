.class Lio/rong/imkit/RongContext$7;
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
        "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
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

.field notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

.field final synthetic this$0:Lio/rong/imkit/RongContext;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongContext;Lio/rong/imkit/RongContext;I)V
    .locals 1
    .param p2, "x0"    # Lio/rong/imkit/RongContext;
    .param p3, "x1"    # I

    .prologue
    .line 591
    iput-object p1, p0, Lio/rong/imkit/RongContext$7;->this$0:Lio/rong/imkit/RongContext;

    invoke-direct {p0, p2, p3}, Lio/rong/imkit/cache/RongCacheWrap;-><init>(Lio/rong/imkit/RongContext;I)V

    .line 592
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext$7;->mRequests:Ljava/util/Vector;

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/RongContext$7;->notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    return-void
.end method

.method static synthetic access$500(Lio/rong/imkit/RongContext$7;)Lio/rong/imkit/RongContext;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/RongContext$7;

    .prologue
    .line 591
    invoke-virtual {p0}, Lio/rong/imkit/RongContext$7;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public obtainValue(Ljava/lang/String;)Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 598
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    :goto_0
    return-object v0

    .line 601
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongContext$7;->mRequests:Ljava/util/Vector;

    monitor-enter v1

    .line 602
    :try_start_0
    iget-object v2, p0, Lio/rong/imkit/RongContext$7;->mRequests:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    monitor-exit v1

    goto :goto_0

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 604
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/rong/imkit/RongContext$7;->mRequests:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 605
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    iget-object v0, p0, Lio/rong/imkit/RongContext$7;->this$0:Lio/rong/imkit/RongContext;

    iget-object v0, v0, Lio/rong/imkit/RongContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imkit/RongContext$7$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/RongContext$7$1;-><init>(Lio/rong/imkit/RongContext$7;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 640
    iget-object v0, p0, Lio/rong/imkit/RongContext$7;->notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    goto :goto_0
.end method

.method public bridge synthetic obtainValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 591
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongContext$7;->obtainValue(Ljava/lang/String;)Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    move-result-object v0

    return-object v0
.end method
