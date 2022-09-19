.class public Lcom/tudou/ui/activity/ChannelSquareActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "ChannelSquareActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
    .line 41
    invoke-static {p1, p2, p3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->onActivityResults(IILandroid/content/Intent;)V

    .line 43
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/ChannelSquareActivity;->requestWindowFeature(I)Z

    .line 16
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/ChannelSquareActivity;->setContentView(I)V

    .line 17
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onPause()V

    .line 27
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onRestart()V

    .line 32
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onStart()V

    .line 22
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onStop()V

    .line 37
    return-void
.end method
