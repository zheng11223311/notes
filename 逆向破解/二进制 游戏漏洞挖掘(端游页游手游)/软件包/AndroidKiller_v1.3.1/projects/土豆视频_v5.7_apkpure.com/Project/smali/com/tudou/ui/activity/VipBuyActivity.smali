.class public Lcom/tudou/ui/activity/VipBuyActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "VipBuyActivity.java"


# instance fields
.field private mFragment:Lcom/tudou/ui/fragment/VipBuyFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 17
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/VipBuyActivity;->requestWindowFeature(I)Z

    .line 19
    const v2, 0x7f030060

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/VipBuyActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcom/tudou/ui/activity/VipBuyActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f0302f3

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 21
    invoke-virtual {p0}, Lcom/tudou/ui/activity/VipBuyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 22
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 23
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-direct {v2}, Lcom/tudou/ui/fragment/VipBuyFragment;-><init>()V

    iput-object v2, p0, Lcom/tudou/ui/activity/VipBuyActivity;->mFragment:Lcom/tudou/ui/fragment/VipBuyFragment;

    .line 24
    const v2, 0x7f0c00b1

    iget-object v3, p0, Lcom/tudou/ui/activity/VipBuyActivity;->mFragment:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 25
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 26
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 30
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/tudou/ui/activity/VipBuyActivity;->mFragment:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/VipBuyFragment;->finish()V

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
