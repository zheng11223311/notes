.class Lcom/tudou/android/chat/ChatManager$13;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "ChatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatManager;->getChatRoomInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/ChatRoomInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatManager;

.field final synthetic val$isReceivedInformationMessage:Z


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatManager;Z)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager$13;->this$0:Lcom/tudou/android/chat/ChatManager;

    iput-boolean p2, p0, Lcom/tudou/android/chat/ChatManager$13;->val$isReceivedInformationMessage:Z

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 734
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChatRoomInfo(): onError(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/ChatRoomInfo;)V
    .locals 4
    .param p1, "chatRoomInfo"    # Lio/rong/imlib/model/ChatRoomInfo;

    .prologue
    .line 723
    const-string v2, "byron"

    const-string v3, "getChatRoomInfo(): onSuccess();"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager$13;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v2}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager$13;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v2}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$CallBacks;

    .line 726
    .local v0, "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    iget-boolean v2, p0, Lcom/tudou/android/chat/ChatManager$13;->val$isReceivedInformationMessage:Z

    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {p1}, Lio/rong/imlib/model/ChatRoomInfo;->getTotalMemberCount()I

    move-result v1

    .line 728
    .local v1, "chatPeopleCount":I
    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onPeopleCountChanged(I)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 720
    check-cast p1, Lio/rong/imlib/model/ChatRoomInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tudou/android/chat/ChatManager$13;->onSuccess(Lio/rong/imlib/model/ChatRoomInfo;)V

    return-void
.end method
