.class Lio/rong/imkit/RongContext$7$1;
.super Ljava/lang/Object;
.source "RongContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongContext$7;->obtainValue(Ljava/lang/String;)Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/RongContext$7;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongContext$7;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lio/rong/imkit/RongContext$7$1;->this$1:Lio/rong/imkit/RongContext$7;

    iput-object p2, p0, Lio/rong/imkit/RongContext$7$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 612
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 614
    iget-object v1, p0, Lio/rong/imkit/RongContext$7$1;->val$key:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v0

    .line 616
    .local v0, "conversationKey":Lio/rong/imkit/model/ConversationKey;
    if-eqz v0, :cond_0

    .line 618
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationKey;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationKey;->getTargetId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/RongContext$7$1$1;

    invoke-direct {v4, p0, v0}, Lio/rong/imkit/RongContext$7$1$1;-><init>(Lio/rong/imkit/RongContext$7$1;Lio/rong/imkit/model/ConversationKey;)V

    invoke-virtual {v1, v2, v3, v4}, Lio/rong/imkit/RongIMClientWrapper;->getConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 636
    .end local v0    # "conversationKey":Lio/rong/imkit/model/ConversationKey;
    :cond_0
    return-void
.end method
