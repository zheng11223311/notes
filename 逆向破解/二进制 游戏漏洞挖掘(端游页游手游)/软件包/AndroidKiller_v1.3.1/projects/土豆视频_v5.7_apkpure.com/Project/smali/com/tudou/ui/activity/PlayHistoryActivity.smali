.class public Lcom/tudou/ui/activity/PlayHistoryActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "PlayHistoryActivity.java"


# instance fields
.field public hisFragment:Lcom/tudou/ui/fragment/HistoryFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/PlayHistoryActivity;->requestWindowFeature(I)Z

    .line 19
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/PlayHistoryActivity;->setContentView(I)V

    .line 20
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/tudou/ui/activity/PlayHistoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c01de

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/HistoryFragment;

    iput-object v0, p0, Lcom/tudou/ui/activity/PlayHistoryActivity;->hisFragment:Lcom/tudou/ui/fragment/HistoryFragment;

    .line 26
    iget-object v0, p0, Lcom/tudou/ui/activity/PlayHistoryActivity;->hisFragment:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryFragment;->getEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/tudou/ui/activity/PlayHistoryActivity;->hisFragment:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryFragment;->quitEditState()V

    .line 28
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
