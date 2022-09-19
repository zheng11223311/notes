.class Lcom/tudou/android/chat/ChatManager$3;
.super Lio/rong/imlib/RongIMClient$ConnectCallback;
.source "ChatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatManager;->connect(Landroid/content/Context;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isCreate:Z

.field final synthetic val$isFromDetailActivity:Z


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatManager;Landroid/content/Context;ZZ)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager$3;->this$0:Lcom/tudou/android/chat/ChatManager;

    iput-object p2, p0, Lcom/tudou/android/chat/ChatManager$3;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/tudou/android/chat/ChatManager$3;->val$isCreate:Z

    iput-boolean p4, p0, Lcom/tudou/android/chat/ChatManager$3;->val$isFromDetailActivity:Z

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ConnectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 303
    const-string v1, "byron"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--onError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-boolean v1, p0, Lcom/tudou/android/chat/ChatManager$3;->val$isFromDetailActivity:Z

    if-eqz v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$3;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$3;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$CallBacks;

    .line 307
    .local v0, "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/tudou/android/chat/ChatManager$3;->val$isCreate:Z

    invoke-interface {v0, v1}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onConnectFailed(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 265
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tudou/android/chat/ChatManager$3;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string v1, "byron"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--onSuccess"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; isFromDetailActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tudou/android/chat/ChatManager$3;->val$isFromDetailActivity:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v1, "byron"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWeakRefCallBacks = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/android/chat/ChatManager$3;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v3}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$3;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1, p1}, Lcom/tudou/android/chat/ChatManager;->access$302(Lcom/tudou/android/chat/ChatManager;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$3;->this$0:Lcom/tudou/android/chat/ChatManager;

    const-string v2, "chat_user_id"

    invoke-static {v1, p1, v2}, Lcom/tudou/android/chat/ChatManager;->access$400(Lcom/tudou/android/chat/ChatManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-boolean v1, p0, Lcom/tudou/android/chat/ChatManager$3;->val$isFromDetailActivity:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$3;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$500(Lcom/tudou/android/chat/ChatManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$3;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$3;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$CallBacks;

    .line 293
    .local v0, "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/tudou/android/chat/ChatManager$3;->val$isCreate:Z

    invoke-interface {v0, p1, v1}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onConnectSuccess(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onTokenIncorrect()V
    .locals 3

    .prologue
    .line 271
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--onTokenIncorrect"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "byron"

    const-string v1, "--onTokenIncorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v0, "rongyun_token"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager$3;->this$0:Lcom/tudou/android/chat/ChatManager;

    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$3;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/tudou/android/chat/ChatManager$3;->val$isCreate:Z

    invoke-virtual {v0, v1, v2}, Lcom/tudou/android/chat/ChatManager;->getTokenAndConnect(Landroid/content/Context;Z)V

    .line 277
    return-void
.end method
