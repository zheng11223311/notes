.class Lcom/tudou/android/chat/ChatManager$7;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatManager;->getChatNameAndIcon()V
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
    .line 443
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager$7;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 461
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChatNameAndIcon(): onFailed(): failReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager$7;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatManager;->access$700(Lcom/tudou/android/chat/ChatManager;)V

    .line 463
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 448
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    iget-object v3, p0, Lcom/tudou/android/chat/ChatManager$7;->this$0:Lcom/tudou/android/chat/ChatManager;

    const-class v2, Lcom/tudou/android/chat/ChatNameAndIconBean;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/android/chat/ChatNameAndIconBean;

    invoke-static {v3, v2}, Lcom/tudou/android/chat/ChatManager;->access$602(Lcom/tudou/android/chat/ChatManager;Lcom/tudou/android/chat/ChatNameAndIconBean;)Lcom/tudou/android/chat/ChatNameAndIconBean;

    .line 451
    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager$7;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-virtual {v2}, Lcom/tudou/android/chat/ChatManager;->generateNameAndIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager$7;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-static {v2}, Lcom/tudou/android/chat/ChatManager;->access$700(Lcom/tudou/android/chat/ChatManager;)V

    goto :goto_0
.end method
