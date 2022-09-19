.class Lcom/tudou/ui/fragment/ChannelSquareFragment$4;
.super Ljava/lang/Object;
.source "ChannelSquareFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ChannelSquareFragment;->getClassifiesInfos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ChannelSquareFragment;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mHandler:Landroid/os/Handler;

    const v1, 0x186a2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 224
    :try_start_0
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return str====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/youku/vo/ChannelSquareClassfy;

    invoke-direct {v3}, Lcom/youku/vo/ChannelSquareClassfy;-><init>()V

    invoke-static {v1, v3}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelSquareClassfy;

    invoke-static {v2, v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$402(Lcom/tudou/ui/fragment/ChannelSquareFragment;Lcom/youku/vo/ChannelSquareClassfy;)Lcom/youku/vo/ChannelSquareClassfy;

    .line 228
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/ChannelSquareFragment;->mHandler:Landroid/os/Handler;

    const v2, 0x186a1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
