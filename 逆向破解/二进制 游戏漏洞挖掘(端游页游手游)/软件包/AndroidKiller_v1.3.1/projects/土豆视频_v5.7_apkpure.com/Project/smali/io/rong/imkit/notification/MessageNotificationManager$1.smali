.class Lio/rong/imkit/notification/MessageNotificationManager$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "MessageNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/notification/MessageNotificationManager;->notifyIfNeed(Landroid/content/Context;Lio/rong/imlib/model/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/notification/MessageNotificationManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$left:I

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imkit/notification/MessageNotificationManager;Landroid/content/Context;Lio/rong/imlib/model/Message;I)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lio/rong/imkit/notification/MessageNotificationManager$1;->this$0:Lio/rong/imkit/notification/MessageNotificationManager;

    iput-object p2, p0, Lio/rong/imkit/notification/MessageNotificationManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/rong/imkit/notification/MessageNotificationManager$1;->val$message:Lio/rong/imlib/model/Message;

    iput p4, p0, Lio/rong/imkit/notification/MessageNotificationManager$1;->val$left:I

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 85
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V
    .locals 4
    .param p1, "status"    # Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    .prologue
    .line 77
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->NOTIFY:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    if-ne v0, p1, :cond_0

    .line 78
    invoke-static {}, Lio/rong/imkit/notification/MessageNotificationManager;->getInstance()Lio/rong/imkit/notification/MessageNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/notification/MessageNotificationManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lio/rong/imkit/notification/MessageNotificationManager$1;->val$message:Lio/rong/imlib/model/Message;

    iget v3, p0, Lio/rong/imkit/notification/MessageNotificationManager$1;->val$left:I

    invoke-static {v0, v1, v2, v3}, Lio/rong/imkit/notification/MessageNotificationManager;->access$000(Lio/rong/imkit/notification/MessageNotificationManager;Landroid/content/Context;Lio/rong/imlib/model/Message;I)V

    .line 80
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/notification/MessageNotificationManager$1;->onSuccess(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    return-void
.end method
