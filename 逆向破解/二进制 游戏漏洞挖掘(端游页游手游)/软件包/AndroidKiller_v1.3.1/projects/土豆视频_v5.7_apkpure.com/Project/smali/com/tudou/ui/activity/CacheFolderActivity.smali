.class public Lcom/tudou/ui/activity/CacheFolderActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "CacheFolderActivity.java"


# instance fields
.field fragment:Lcom/tudou/ui/fragment/CacheFolderFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptClickEvent(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 662
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 635
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 636
    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/CacheFolderActivity;->setRequestedOrientation(I)V

    .line 637
    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/CacheFolderActivity;->requestWindowFeature(I)Z

    .line 638
    const v2, 0x7f030012

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/CacheFolderActivity;->setContentView(I)V

    .line 639
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CacheFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "showId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, "showId":Ljava/lang/String;
    new-instance v2, Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-direct {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;-><init>()V

    iput-object v2, p0, Lcom/tudou/ui/activity/CacheFolderActivity;->fragment:Lcom/tudou/ui/fragment/CacheFolderFragment;

    .line 641
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 642
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "showId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v2, p0, Lcom/tudou/ui/activity/CacheFolderActivity;->fragment:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-virtual {v2, v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->setArguments(Landroid/os/Bundle;)V

    .line 644
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CacheFolderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0c00ed

    iget-object v4, p0, Lcom/tudou/ui/activity/CacheFolderActivity;->fragment:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 645
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 649
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 650
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheFolderActivity;->fragment:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-boolean v1, v1, Lcom/tudou/ui/fragment/CacheFolderFragment;->isEdit:Z

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheFolderActivity;->fragment:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->setEditAble()V

    .line 658
    :goto_0
    return v0

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheFolderActivity;->fragment:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->isShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 654
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheFolderActivity;->fragment:Lcom/tudou/ui/fragment/CacheFolderFragment;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->showMoreCacheOrNot(I)V

    goto :goto_0

    .line 658
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
