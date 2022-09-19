.class public Lcom/tudou/ui/activity/MyFavoriteActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "MyFavoriteActivity.java"


# instance fields
.field private fg:Lcom/tudou/ui/fragment/MyFavoriteFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 16
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/MyFavoriteActivity;->requestWindowFeature(I)Z

    .line 18
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/MyFavoriteActivity;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lcom/tudou/ui/activity/MyFavoriteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0302f3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 20
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/tudou/ui/activity/MyFavoriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0c0131

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/MyFavoriteFragment;

    iput-object v0, p0, Lcom/tudou/ui/activity/MyFavoriteActivity;->fg:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    .line 26
    iget-object v0, p0, Lcom/tudou/ui/activity/MyFavoriteActivity;->fg:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0}, Lcom/youku/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/tudou/ui/activity/MyFavoriteActivity;->fg:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getVedioEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/tudou/ui/activity/MyFavoriteActivity;->fg:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v0, v3}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->setVedioEdit(Z)V

    move v0, v1

    .line 42
    :goto_0
    return v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/MyFavoriteActivity;->finish()V

    .line 42
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/activity/MyFavoriteActivity;->fg:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getPlaylistEdit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    iget-object v0, p0, Lcom/tudou/ui/activity/MyFavoriteActivity;->fg:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v0, v3}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->setPlaylistEdit(Z)V

    move v0, v1

    .line 36
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p0}, Lcom/tudou/ui/activity/MyFavoriteActivity;->finish()V

    goto :goto_1
.end method
