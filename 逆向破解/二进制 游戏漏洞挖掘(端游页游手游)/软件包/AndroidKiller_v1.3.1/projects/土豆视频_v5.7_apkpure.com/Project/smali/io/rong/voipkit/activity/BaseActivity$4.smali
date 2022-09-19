.class Lio/rong/voipkit/activity/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/BaseActivity;->onEventBackgroundThread(Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/BaseActivity;

.field final synthetic val$message:Lio/rong/imlib/model/Message;

.field final synthetic val$messageContent:Lio/rong/imlib/model/MessageContent;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/BaseActivity;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/model/Message;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lio/rong/voipkit/activity/BaseActivity$4;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    iput-object p2, p0, Lio/rong/voipkit/activity/BaseActivity$4;->val$messageContent:Lio/rong/imlib/model/MessageContent;

    iput-object p3, p0, Lio/rong/voipkit/activity/BaseActivity$4;->val$message:Lio/rong/imlib/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 349
    const/4 v4, 0x0

    .line 350
    .local v4, "informationMessage":Lio/rong/message/InformationNotificationMessage;
    iget-object v6, p0, Lio/rong/voipkit/activity/BaseActivity$4;->val$messageContent:Lio/rong/imlib/model/MessageContent;

    check-cast v6, Lio/rong/voipkit/message/VoIPFinishMessage;

    .line 351
    .local v6, "vfm":Lio/rong/voipkit/message/VoIPFinishMessage;
    invoke-virtual {v6}, Lio/rong/voipkit/message/VoIPFinishMessage;->getFinish_state()I

    move-result v0

    if-nez v0, :cond_1

    .line 352
    const-string/jumbo v0, "\u5bf9\u65b9\u5df2\u7ecf\u6302\u673a"

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    .line 353
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity$4;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/BaseActivity$4;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rong"

    invoke-virtual/range {v0 .. v5}, Lio/rong/imkit/RongIMClientWrapper;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 354
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity$4;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    invoke-virtual {v0}, Lio/rong/voipkit/activity/BaseActivity;->stopCountTime()V

    .line 359
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity$4;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    invoke-virtual {v0}, Lio/rong/voipkit/activity/BaseActivity;->finish()V

    .line 360
    return-void

    .line 355
    :cond_1
    invoke-virtual {v6}, Lio/rong/voipkit/message/VoIPFinishMessage;->getFinish_state()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 356
    const-string/jumbo v0, "\u5bf9\u65b9\u62d2\u7edd\u901a\u8bdd"

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    .line 357
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity$4;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/BaseActivity$4;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rong"

    invoke-virtual/range {v0 .. v5}, Lio/rong/imkit/RongIMClientWrapper;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method
