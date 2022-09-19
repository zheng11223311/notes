.class Lcom/tudou/android/chat/ChatManager$4;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "ChatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatManager;->createChatRoom(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatManager;

.field final synthetic val$roomId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager$4;->this$0:Lcom/tudou/android/chat/ChatManager;

    iput-object p2, p0, Lcom/tudou/android/chat/ChatManager$4;->val$roomId:Ljava/lang/String;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 343
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$4;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 347
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$4;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$CallBacks;

    .line 345
    .local v0, "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onCreateChatRoomFailed(I)V

    .line 346
    :cond_1
    const-string v1, "byron"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createChatRoom(): onError(): errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 334
    const-string v1, "byron"

    const-string v2, "createChatRoom(): onSuccess();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$4;->this$0:Lcom/tudou/android/chat/ChatManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tudou/android/chat/ChatManager;->access$002(Lcom/tudou/android/chat/ChatManager;Z)Z

    .line 336
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$4;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$4;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$CallBacks;

    .line 338
    .local v0, "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$4;->val$roomId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onCreateChatRoomSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method
