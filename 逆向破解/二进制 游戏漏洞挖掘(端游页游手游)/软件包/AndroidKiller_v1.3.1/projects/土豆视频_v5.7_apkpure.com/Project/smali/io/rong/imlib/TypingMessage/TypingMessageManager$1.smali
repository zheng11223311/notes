.class Lio/rong/imlib/TypingMessage/TypingMessageManager$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "TypingMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/TypingMessage/TypingMessageManager;->sendTypingMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$Callback;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/TypingMessage/TypingMessageManager;Lio/rong/imlib/RongIMClient$Callback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$1;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    iput-object p2, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$1;->val$callback:Lio/rong/imlib/RongIMClient$Callback;

    iput-object p3, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 94
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$1;->val$callback:Lio/rong/imlib/RongIMClient$Callback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$Callback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 95
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 4
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 82
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$1;->val$callback:Lio/rong/imlib/RongIMClient$Callback;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$Callback;->onSuccess()V

    .line 83
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$1;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    invoke-static {v0}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$000(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$1;->val$key:Ljava/lang/String;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$1;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    invoke-static {v0}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$200(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/rong/imlib/TypingMessage/TypingMessageManager$1$1;

    invoke-direct {v1, p0}, Lio/rong/imlib/TypingMessage/TypingMessageManager$1$1;-><init>(Lio/rong/imlib/TypingMessage/TypingMessageManager$1;)V

    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$100()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, Lio/rong/imlib/model/Message;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imlib/TypingMessage/TypingMessageManager$1;->onSuccess(Lio/rong/imlib/model/Message;)V

    return-void
.end method
