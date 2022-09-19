.class Lcom/tudou/ui/activity/WelcomeActivity$13;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WelcomeActivity;->getIndexNet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/tudou/ui/activity/WelcomeActivity$13;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$13;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "index_failed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1811
    const-string v0, "TAG_TUDOU"

    const-string/jumbo v1, "\u9996\u9875\u6570\u636e==\u6b22\u8fce====\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/activity/WelcomeActivity;->isHomeDataReturn:Z

    .line 1813
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1800
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, "returnStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/youku/vo/IndexPageData;->parseIndexPageData(Ljava/lang/String;)Lcom/youku/vo/IndexPageData;

    move-result-object v1

    sput-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    .line 1802
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HomeFragment;->getTargetDetailList(Lcom/youku/vo/IndexPageData;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    .line 1803
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$13;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "index_sucess"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/WelcomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1804
    const-string v1, "TAG_TUDOU"

    const-string/jumbo v2, "\u9996\u9875\u6570\u636e==\u6b22\u8fce====\u6210\u529f"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/activity/WelcomeActivity;->isHomeDataReturn:Z

    .line 1806
    return-void
.end method
