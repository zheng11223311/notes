.class Lcom/tudou/ui/fragment/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment;->getFirstNet(Landroid/os/Handler;)V
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
    .line 244
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$2;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/HomeFragment$2;->val$aHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$2;->val$aHandler:Landroid/os/Handler;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 247
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$2;->val$aHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 248
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "returnStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/youku/vo/IndexPageData;->parseIndexPageData(Ljava/lang/String;)Lcom/youku/vo/IndexPageData;

    move-result-object v2

    sput-object v2, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    .line 250
    sget-object v2, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    invoke-static {v2}, Lcom/tudou/ui/fragment/HomeFragment;->getTargetDetailList(Lcom/youku/vo/IndexPageData;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    .line 251
    const/16 v2, 0x385

    iput v2, v0, Landroid/os/Message;->what:I

    .line 253
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$2;->val$aHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    return-void
.end method
