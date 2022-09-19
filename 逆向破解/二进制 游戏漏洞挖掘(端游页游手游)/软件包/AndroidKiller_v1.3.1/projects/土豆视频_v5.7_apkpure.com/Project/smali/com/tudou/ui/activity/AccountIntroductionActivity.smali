.class public Lcom/tudou/ui/activity/AccountIntroductionActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "AccountIntroductionActivity.java"


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
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/AccountIntroductionActivity;->requestWindowFeature(I)Z

    .line 19
    const v4, 0x7f030005

    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/AccountIntroductionActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcom/tudou/ui/activity/AccountIntroductionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 21
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/tudou/ui/activity/AccountIntroductionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 22
    .local v2, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 23
    .local v3, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-direct {v1}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;-><init>()V

    .line 24
    .local v1, "fragment":Lcom/tudou/ui/fragment/AccountIntroductionFragment;
    const v4, 0x7f0c00b1

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 25
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 26
    return-void
.end method
