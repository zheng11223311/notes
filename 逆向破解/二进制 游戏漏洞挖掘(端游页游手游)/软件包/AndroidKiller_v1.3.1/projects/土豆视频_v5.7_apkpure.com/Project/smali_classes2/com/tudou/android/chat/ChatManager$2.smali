.class Lcom/tudou/android/chat/ChatManager$2;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatManager;->getTokenAndConnect(Landroid/content/Context;ZZ)V
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
    .line 214
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager$2;->this$0:Lcom/tudou/android/chat/ChatManager;

    iput-object p2, p0, Lcom/tudou/android/chat/ChatManager$2;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/tudou/android/chat/ChatManager$2;->val$isCreate:Z

    iput-boolean p4, p0, Lcom/tudou/android/chat/ChatManager$2;->val$isFromDetailActivity:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 243
    const-string v1, "\u83b7\u53d6token\u9519\u8bef"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getToken(): failReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-boolean v1, p0, Lcom/tudou/android/chat/ChatManager$2;->val$isFromDetailActivity:Z

    if-eqz v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$2;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$2;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v1}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$CallBacks;

    .line 248
    .local v0, "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/tudou/android/chat/ChatManager$2;->val$isCreate:Z

    invoke-interface {v0, v1}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onConnectFailed(Z)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 9
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 219
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 221
    const-string v5, "byron"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-class v5, Lcom/tudou/android/chat/ChatTokenBean;

    invoke-static {v3, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/android/chat/ChatTokenBean;

    .line 223
    .local v1, "chatTokenBean":Lcom/tudou/android/chat/ChatTokenBean;
    iget-object v4, v1, Lcom/tudou/android/chat/ChatTokenBean;->token:Ljava/lang/String;

    .line 224
    .local v4, "token":Ljava/lang/String;
    const-string v5, "rongyun_token"

    invoke-static {v5, v4}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v5, p0, Lcom/tudou/android/chat/ChatManager$2;->this$0:Lcom/tudou/android/chat/ChatManager;

    iget-object v6, p0, Lcom/tudou/android/chat/ChatManager$2;->val$context:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/tudou/android/chat/ChatManager$2;->val$isCreate:Z

    iget-boolean v8, p0, Lcom/tudou/android/chat/ChatManager$2;->val$isFromDetailActivity:Z

    invoke-virtual {v5, v6, v4, v7, v8}, Lcom/tudou/android/chat/ChatManager;->connect(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 239
    .end local v1    # "chatTokenBean":Lcom/tudou/android/chat/ChatTokenBean;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 227
    .restart local v3    # "str":Ljava/lang/String;
    :cond_1
    const-string v5, "\u83b7\u53d6token\u9519\u8bef"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 228
    iget-object v5, p0, Lcom/tudou/android/chat/ChatManager$2;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v5}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 229
    iget-object v5, p0, Lcom/tudou/android/chat/ChatManager$2;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v5}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$CallBacks;

    .line 230
    .local v0, "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/tudou/android/chat/ChatManager$2;->val$isCreate:Z

    invoke-interface {v0, v5}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onConnectFailed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    .end local v0    # "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "\u83b7\u53d6token\u9519\u8bef"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "catch a exception."

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v5, p0, Lcom/tudou/android/chat/ChatManager$2;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v5}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 236
    iget-object v5, p0, Lcom/tudou/android/chat/ChatManager$2;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v5}, Lcom/tudou/android/chat/ChatManager;->access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$CallBacks;

    .line 237
    .restart local v0    # "callBacks":Lcom/tudou/android/chat/ChatManager$CallBacks;
    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/tudou/android/chat/ChatManager$2;->val$isCreate:Z

    invoke-interface {v0, v5}, Lcom/tudou/android/chat/ChatManager$CallBacks;->onConnectFailed(Z)V

    goto :goto_0
.end method
