.class public Lcom/tudou/ui/activity/MessageDetailActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "MessageDetailActivity.java"


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
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 313
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/MessageDetailActivity;->requestWindowFeature(I)Z

    .line 314
    const v3, 0x7f030038

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/MessageDetailActivity;->setContentView(I)V

    .line 315
    invoke-virtual {p0}, Lcom/tudou/ui/activity/MessageDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 316
    .local v2, "manager":Landroid/support/v4/app/FragmentManager;
    new-instance v1, Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-direct {v1}, Lcom/tudou/ui/fragment/MessageDetailFragment;-><init>()V

    .line 317
    .local v1, "fragment":Lcom/tudou/ui/fragment/MessageDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "lastTimeMsg"

    invoke-virtual {p0}, Lcom/tudou/ui/activity/MessageDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lastTimeMsg"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 319
    invoke-virtual {v1, v0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 320
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0c01b8

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "messageDetailFragment"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 321
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 325
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/tudou/ui/activity/MessageDetailActivity;->finish()V

    .line 328
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
