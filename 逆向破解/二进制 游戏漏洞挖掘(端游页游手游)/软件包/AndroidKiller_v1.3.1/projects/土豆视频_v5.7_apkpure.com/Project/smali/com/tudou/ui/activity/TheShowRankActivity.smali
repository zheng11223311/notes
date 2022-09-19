.class public Lcom/tudou/ui/activity/TheShowRankActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "TheShowRankActivity.java"


# instance fields
.field private mFragment:Lcom/tudou/ui/fragment/TheShowRankFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/TheShowRankActivity;->requestWindowFeature(I)Z

    .line 20
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/TheShowRankActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/tudou/ui/activity/TheShowRankActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c021c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/TheShowRankFragment;

    iput-object v0, p0, Lcom/tudou/ui/activity/TheShowRankActivity;->mFragment:Lcom/tudou/ui/fragment/TheShowRankFragment;

    .line 22
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 26
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/activity/TheShowRankActivity;->mFragment:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
