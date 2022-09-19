.class Lcom/tudou/ui/fragment/HomeFragment$3;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment;->getGuessInfo(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;

.field final synthetic val$aHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$3;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/HomeFragment$3;->val$aHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$3;->val$aHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 271
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$3;->val$aHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 272
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "backStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->parseGuessList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 278
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$3;->val$aHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 279
    return-void

    .line 276
    :cond_0
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0
.end method
