.class Lio/rong/imlib/RongIMClient$92;
.super Lio/rong/imlib/OnReceiveMessageListener$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->initMessageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;)V
    .locals 0

    .prologue
    .line 5256
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$92;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {p0}, Lio/rong/imlib/OnReceiveMessageListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Lio/rong/imlib/model/Message;I)Z
    .locals 2
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "left"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5259
    const-string v0, "initMessageReceiver : setOnReceiveMessageListener"

    const-string v1, "onReceived"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 5260
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;

    if-eqz v0, :cond_0

    .line 5261
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->receiveTypingMessage(Lio/rong/imlib/model/Message;)V

    .line 5263
    :cond_0
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$2100()Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5264
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$2100()Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;->onReceived(Lio/rong/imlib/model/Message;I)Z

    move-result v0

    .line 5265
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
