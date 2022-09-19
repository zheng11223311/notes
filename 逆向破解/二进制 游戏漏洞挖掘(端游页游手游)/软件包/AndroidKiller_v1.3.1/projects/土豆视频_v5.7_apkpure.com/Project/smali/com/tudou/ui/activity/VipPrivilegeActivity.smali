.class public Lcom/tudou/ui/activity/VipPrivilegeActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "VipPrivilegeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/VipPrivilegeActivity;->requestWindowFeature(I)Z

    .line 17
    const v3, 0x7f030324

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/VipPrivilegeActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/tudou/ui/activity/VipPrivilegeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 19
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 20
    .local v2, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v0, Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-direct {v0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;-><init>()V

    .line 21
    .local v0, "fragment":Lcom/tudou/ui/fragment/VipPrivilegeFragment;
    const v3, 0x7f0c0db3

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 22
    return-void
.end method
