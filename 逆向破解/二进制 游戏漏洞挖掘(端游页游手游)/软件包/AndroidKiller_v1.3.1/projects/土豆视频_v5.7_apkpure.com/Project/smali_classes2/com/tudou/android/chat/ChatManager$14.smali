.class Lcom/tudou/android/chat/ChatManager$14;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatManager;->setOnReceiveMessageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatManager;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatManager;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager$14;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Lio/rong/imlib/model/Message;I)Z
    .locals 6
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "left"    # I

    .prologue
    const/4 v3, 0x1

    .line 747
    const-string v2, "byron"

    const-string v4, "setOnReceiveMessageListener(): onReceived();"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v2, "byron"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOnReceiveMessageListener(): isChatRoomForgound = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/android/chat/ChatManager$14;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v5}, Lcom/tudou/android/chat/ChatManager;->access$1100(Lcom/tudou/android/chat/ChatManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager$14;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v2}, Lcom/tudou/android/chat/ChatManager;->access$1100(Lcom/tudou/android/chat/ChatManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 750
    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager$14;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v2, v3}, Lcom/tudou/android/chat/ChatManager;->access$1202(Lcom/tudou/android/chat/ChatManager;Z)Z

    .line 751
    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager$14;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v2}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager$14;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v2}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager$14;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v2}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/android/chat/ChatManager$CallBacks;

    invoke-interface {v2}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onUnReadMessage()V

    .line 755
    :cond_0
    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager$14;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v2}, Lcom/tudou/android/chat/ChatManager;->access$1300(Lcom/tudou/android/chat/ChatManager;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 762
    :goto_0
    return v2

    .line 756
    :cond_1
    const-string v2, "byron"

    const-string v4, "isReceivedMessage true;"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    .line 758
    .local v1, "messageContent":Lio/rong/imlib/model/MessageContent;
    instance-of v2, v1, Lio/rong/message/InformationNotificationMessage;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 759
    check-cast v0, Lio/rong/message/InformationNotificationMessage;

    .line 760
    .local v0, "i":Lio/rong/message/InformationNotificationMessage;
    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager$14;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-virtual {v2, v3}, Lcom/tudou/android/chat/ChatManager;->getChatRoomInfo(Z)V

    .line 762
    .end local v0    # "i":Lio/rong/message/InformationNotificationMessage;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
