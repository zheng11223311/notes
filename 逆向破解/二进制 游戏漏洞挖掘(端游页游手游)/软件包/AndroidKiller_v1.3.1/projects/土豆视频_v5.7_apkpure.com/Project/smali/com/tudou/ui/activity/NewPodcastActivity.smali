.class public Lcom/tudou/ui/activity/NewPodcastActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "NewPodcastActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/activity/NewPodcastActivity$OnBackListener;
    }
.end annotation


# instance fields
.field public onBackListener:Lcom/tudou/ui/activity/NewPodcastActivity$OnBackListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/NewPodcastActivity;->requestWindowFeature(I)Z

    .line 12
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/NewPodcastActivity;->setContentView(I)V

    .line 13
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/tudou/ui/activity/NewPodcastActivity;->onBackListener:Lcom/tudou/ui/activity/NewPodcastActivity$OnBackListener;

    invoke-interface {v0}, Lcom/tudou/ui/activity/NewPodcastActivity$OnBackListener;->onClickBackListener()V

    .line 26
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
