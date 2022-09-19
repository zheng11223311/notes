.class public Lcom/tudou/ui/activity/SelectedDetailActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "SelectedDetailActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/SelectedDetailActivity;->requestWindowFeature(I)Z

    .line 20
    const v3, 0x7f0302ce

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/SelectedDetailActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/tudou/ui/activity/SelectedDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 22
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 23
    .local v2, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v0, Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-direct {v0}, Lcom/tudou/ui/fragment/SelectedDetailFragment;-><init>()V

    .line 24
    .local v0, "fragment":Lcom/tudou/ui/fragment/SelectedDetailFragment;
    const v3, 0x7f0c00b1

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 25
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 26
    return-void
.end method
