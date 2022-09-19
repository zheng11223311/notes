.class Lcom/tudou/android/chat/ChatManager$5;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "ChatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatManager;->joinChatRoom(Ljava/lang/String;)V
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
    .line 368
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager$5;->this$0:Lcom/tudou/android/chat/ChatManager;

    iput-object p2, p0, Lcom/tudou/android/chat/ChatManager$5;->val$roomId:Ljava/lang/String;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    const/4 v2, 0x0

    .line 380
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$5;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 391
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$5;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$CallBacks;

    .line 382
    .local v0, "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CHATROOM_NOT_EXIST:Lio/rong/imlib/RongIMClient$ErrorCode;

    if-ne p1, v1, :cond_2

    .line 383
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onJoinChatRoomFailed(I)V

    .line 389
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$5;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1, v2}, Lcom/tudou/android/chat/ChatManager;->access$002(Lcom/tudou/android/chat/ChatManager;Z)Z

    .line 390
    const-string v1, "byron"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "joinChatRoom(): onError(): errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_2
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CHATROOM_IS_FULL:Lio/rong/imlib/RongIMClient$ErrorCode;

    if-ne p1, v1, :cond_3

    .line 385
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onJoinChatRoomFailed(I)V

    goto :goto_1

    .line 387
    :cond_3
    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onJoinChatRoomFailed(I)V

    goto :goto_1
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 371
    const-string v1, "byron"

    const-string v2, "joinChatRoom(): onSuccess();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$5;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 376
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$5;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$CallBacks;

    .line 374
    .local v0, "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$5;->val$roomId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onJoinChatRoomSuccess(Ljava/lang/String;)V

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$5;->this$0:Lcom/tudou/android/chat/ChatManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tudou/android/chat/ChatManager;->access$002(Lcom/tudou/android/chat/ChatManager;Z)Z

    goto :goto_0
.end method
