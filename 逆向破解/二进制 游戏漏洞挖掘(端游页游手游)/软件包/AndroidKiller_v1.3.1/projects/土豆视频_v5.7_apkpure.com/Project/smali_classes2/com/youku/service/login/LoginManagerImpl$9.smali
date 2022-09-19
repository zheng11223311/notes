.class Lcom/youku/service/login/LoginManagerImpl$9;
.super Ljava/lang/Object;
.source "LoginManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/service/login/LoginManagerImpl;->reversePassword(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/service/login/LoginManagerImpl;


# direct methods
.method constructor <init>(Lcom/youku/service/login/LoginManagerImpl;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/youku/service/login/LoginManagerImpl$9;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 573
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 574
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 575
    const/16 v1, 0x90

    iput v1, v0, Landroid/os/Message;->what:I

    .line 576
    iget-object v1, p0, Lcom/youku/service/login/LoginManagerImpl$9;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-static {v1}, Lcom/youku/service/login/LoginManagerImpl;->access$700(Lcom/youku/service/login/LoginManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 577
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 562
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "str":Ljava/lang/String;
    const-string v2, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4fee\u6539\u5bc6\u7801\u6210\u529f===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/youku/service/login/LoginManagerImpl$9;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-static {v2}, Lcom/youku/service/login/LoginManagerImpl;->access$000(Lcom/youku/service/login/LoginManagerImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 565
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0xc8

    iput v2, v0, Landroid/os/Message;->what:I

    .line 566
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 567
    iget-object v2, p0, Lcom/youku/service/login/LoginManagerImpl$9;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-static {v2}, Lcom/youku/service/login/LoginManagerImpl;->access$700(Lcom/youku/service/login/LoginManagerImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 569
    return-void
.end method
