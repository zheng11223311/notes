.class Lcom/tudou/android/chat/ChatManager$1;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "ChatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatManager;->quitChatRoom()V
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
    .line 98
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager$1;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 110
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quitChatRoom(): errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 101
    const-string v1, "\u5df2\u9000\u51fa\u623f\u95f4"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$1;->this$0:Lcom/tudou/android/chat/ChatManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tudou/android/chat/ChatManager;->access$002(Lcom/tudou/android/chat/ChatManager;Z)Z

    .line 103
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$1;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$1;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$CallBacks;

    .line 105
    .local v0, "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onQuitChatRoom()V

    goto :goto_0
.end method
