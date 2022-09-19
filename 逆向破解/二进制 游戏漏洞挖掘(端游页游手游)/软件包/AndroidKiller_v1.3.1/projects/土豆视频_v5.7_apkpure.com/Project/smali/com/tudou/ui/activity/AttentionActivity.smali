.class public Lcom/tudou/ui/activity/AttentionActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "AttentionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/activity/AttentionActivity$OnBackListener;
    }
.end annotation


# instance fields
.field public onBackListener:Lcom/tudou/ui/activity/AttentionActivity$OnBackListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/AttentionActivity;->requestWindowFeature(I)Z

    .line 21
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/AttentionActivity;->setContentView(I)V

    .line 22
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 33
    iget-object v0, p0, Lcom/tudou/ui/activity/AttentionActivity;->onBackListener:Lcom/tudou/ui/activity/AttentionActivity$OnBackListener;

    invoke-interface {v0}, Lcom/tudou/ui/activity/AttentionActivity$OnBackListener;->onClickBackListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/AttentionActivity;->finish()V

    .line 39
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
