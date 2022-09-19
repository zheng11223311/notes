.class Lcom/tudou/adapter/AttentionAdapter$2;
.super Ljava/lang/Object;
.source "AttentionAdapter.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/AttentionAdapter;->removeAttentions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/AttentionAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/AttentionAdapter;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/tudou/adapter/AttentionAdapter$2;->this$0:Lcom/tudou/adapter/AttentionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter$2;->this$0:Lcom/tudou/adapter/AttentionAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/AttentionAdapter;->access$200(Lcom/tudou/adapter/AttentionAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 482
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 473
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "str":Ljava/lang/String;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 475
    .local v0, "message":Landroid/os/Message;
    const/16 v2, 0x4e21

    iput v2, v0, Landroid/os/Message;->what:I

    .line 476
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$2;->this$0:Lcom/tudou/adapter/AttentionAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/AttentionAdapter;->access$200(Lcom/tudou/adapter/AttentionAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 477
    return-void
.end method
