.class Lcom/tudou/ui/fragment/MyTicketsBindFragment$2;
.super Ljava/lang/Object;
.source "MyTicketsBindFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MyTicketsBindFragment;->verify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$600(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v4, 0x2

    .line 153
    :try_start_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Lcom/youku/vo/CaptchaResult;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/CaptchaResult;

    invoke-static {v3, v2}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$002(Lcom/tudou/ui/fragment/MyTicketsBindFragment;Lcom/youku/vo/CaptchaResult;)Lcom/youku/vo/CaptchaResult;

    .line 154
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Lcom/youku/vo/CaptchaResult;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/CaptchaResult;->msg:Ljava/lang/String;

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$600(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 158
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 159
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$600(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$600(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
