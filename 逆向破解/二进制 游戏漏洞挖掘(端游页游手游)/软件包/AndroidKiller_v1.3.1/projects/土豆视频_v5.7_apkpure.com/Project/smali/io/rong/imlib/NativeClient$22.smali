.class Lio/rong/imlib/NativeClient$22;
.super Lio/rong/imlib/NativeObject$ReceiveMessageListener;
.source "NativeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->setOnReceiveMessageListener(Lio/rong/imlib/NativeClient$OnReceiveMessageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$listener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OnReceiveMessageListener;)V
    .locals 0

    .prologue
    .line 1754
    iput-object p1, p0, Lio/rong/imlib/NativeClient$22;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$22;->val$listener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;

    invoke-direct {p0}, Lio/rong/imlib/NativeObject$ReceiveMessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Lio/rong/imlib/NativeObject$Message;I)V
    .locals 6
    .param p1, "nativeMessage"    # Lio/rong/imlib/NativeObject$Message;
    .param p2, "left"    # I

    .prologue
    .line 1758
    new-instance v2, Lio/rong/imlib/model/Message;

    invoke-direct {v2, p1}, Lio/rong/imlib/model/Message;-><init>(Lio/rong/imlib/NativeObject$Message;)V

    .line 1759
    .local v2, "message":Lio/rong/imlib/model/Message;
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getContent()[B

    move-result-object v4

    invoke-static {v3, v4, v2}, Lio/rong/imlib/NativeClient;->access$500(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 1760
    .local v0, "content":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {v2, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 1762
    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    instance-of v3, v3, Lio/rong/imlib/model/UnknownMessage;

    if-eqz v3, :cond_1

    .line 1763
    const-string/jumbo v3, "setOnReceiveMessageListener"

    const-string v4, "onReceived: UnknownMessage!"

    invoke-static {p0, v3, v4}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_0
    :goto_0
    return-void

    .line 1767
    :cond_1
    const-string/jumbo v3, "setOnReceiveMessageListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceived: type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const/4 v1, 0x0

    .line 1770
    .local v1, "handled":Z
    iget-object v3, p0, Lio/rong/imlib/NativeClient$22;->this$0:Lio/rong/imlib/NativeClient;

    invoke-static {v3}, Lio/rong/imlib/NativeClient;->access$600(Lio/rong/imlib/NativeClient;)Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1771
    iget-object v3, p0, Lio/rong/imlib/NativeClient$22;->this$0:Lio/rong/imlib/NativeClient;

    invoke-static {v3}, Lio/rong/imlib/NativeClient;->access$600(Lio/rong/imlib/NativeClient;)Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;

    move-result-object v3

    invoke-interface {v3, v2, p2}, Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;->onReceived(Lio/rong/imlib/model/Message;I)Z

    move-result v1

    .line 1774
    :cond_2
    iget-object v3, p0, Lio/rong/imlib/NativeClient$22;->val$listener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 1775
    iget-object v3, p0, Lio/rong/imlib/NativeClient$22;->val$listener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;

    invoke-interface {v3, v2, p2}, Lio/rong/imlib/NativeClient$OnReceiveMessageListener;->onReceived(Lio/rong/imlib/model/Message;I)V

    goto :goto_0
.end method
