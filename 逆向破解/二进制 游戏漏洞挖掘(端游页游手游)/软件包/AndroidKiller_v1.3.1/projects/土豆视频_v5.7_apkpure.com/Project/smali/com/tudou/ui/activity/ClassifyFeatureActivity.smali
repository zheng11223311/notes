.class public Lcom/tudou/ui/activity/ClassifyFeatureActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "ClassifyFeatureActivity.java"


# static fields
.field public static inSkip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/activity/ClassifyFeatureActivity;->inSkip:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 36
    sget-boolean v1, Lcom/tudou/android/Youku;->sPageStillExist:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/tudou/ui/activity/ClassifyFeatureActivity;->inSkip:Z

    if-eqz v1, :cond_0

    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 39
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 19
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/ClassifyFeatureActivity;->requestWindowFeature(I)Z

    .line 21
    invoke-virtual {p0}, Lcom/tudou/ui/activity/ClassifyFeatureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0302f3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 22
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/ClassifyFeatureActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/tudou/ui/activity/ClassifyFeatureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "skip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/tudou/ui/activity/ClassifyFeatureActivity;->inSkip:Z

    .line 24
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 29
    invoke-virtual {p0}, Lcom/tudou/ui/activity/ClassifyFeatureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 30
    return-void
.end method
