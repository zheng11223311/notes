.class Lio/rong/imkit/widget/provider/LocationInputProvider$1;
.super Ljava/lang/Object;
.source "LocationInputProvider.java"

# interfaces
.implements Lio/rong/imkit/RongIM$LocationProvider$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/LocationInputProvider;->onPluginClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/LocationInputProvider;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    return-void
.end method

.method public onSuccess(Lio/rong/message/LocationMessage;)V
    .locals 6
    .param p1, "locationMessage"    # Lio/rong/message/LocationMessage;

    .prologue
    .line 61
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/LocationInputProvider;->mCurrentConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/LocationInputProvider;->mCurrentConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;

    invoke-direct {v5, p0, p1}, Lio/rong/imkit/widget/provider/LocationInputProvider$1$1;-><init>(Lio/rong/imkit/widget/provider/LocationInputProvider$1;Lio/rong/message/LocationMessage;)V

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lio/rong/imkit/RongIMClientWrapper;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 82
    return-void
.end method
