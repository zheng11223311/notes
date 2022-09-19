.class Lcom/tudou/ui/activity/WelcomeActivity$14;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WelcomeActivity;->getIndexGuessInfo()V
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
    .line 1822
    iput-object p1, p0, Lcom/tudou/ui/activity/WelcomeActivity$14;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1834
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1825
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 1826
    .local v0, "backStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->parseGuessList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1827
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$14;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "guess_sucess"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/WelcomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1830
    :cond_0
    return-void
.end method
