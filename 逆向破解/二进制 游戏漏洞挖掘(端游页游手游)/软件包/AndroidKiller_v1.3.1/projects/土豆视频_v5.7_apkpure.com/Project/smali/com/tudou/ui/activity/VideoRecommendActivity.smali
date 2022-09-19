.class public Lcom/tudou/ui/activity/VideoRecommendActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "VideoRecommendActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/tudou/ui/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/VideoRecommendActivity;->requestWindowFeature(I)Z

    .line 22
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/VideoRecommendActivity;->setContentView(I)V

    .line 23
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onPause()V

    .line 33
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onRestart()V

    .line 38
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onStart()V

    .line 28
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onStop()V

    .line 43
    return-void
.end method
