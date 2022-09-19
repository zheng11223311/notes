.class public Lcom/tudou/ui/activity/MessageActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "MessageActivity.java"


# instance fields
.field fragment:Lcom/tudou/ui/fragment/MessageFragment;

.field manager:Landroid/support/v4/app/FragmentManager;


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
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/MessageActivity;->requestWindowFeature(I)Z

    .line 234
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/MessageActivity;->setContentView(I)V

    .line 235
    invoke-virtual {p0}, Lcom/tudou/ui/activity/MessageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/MessageActivity;->manager:Landroid/support/v4/app/FragmentManager;

    .line 236
    new-instance v0, Lcom/tudou/ui/fragment/MessageFragment;

    invoke-direct {v0}, Lcom/tudou/ui/fragment/MessageFragment;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/activity/MessageActivity;->fragment:Lcom/tudou/ui/fragment/MessageFragment;

    .line 237
    iget-object v0, p0, Lcom/tudou/ui/activity/MessageActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01b7

    iget-object v2, p0, Lcom/tudou/ui/activity/MessageActivity;->fragment:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "messageFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 238
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/tudou/ui/activity/MessageActivity;->fragment:Lcom/tudou/ui/fragment/MessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/activity/MessageActivity;->fragment:Lcom/tudou/ui/fragment/MessageFragment;

    iget-boolean v0, v0, Lcom/tudou/ui/fragment/MessageFragment;->isEdit:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/tudou/ui/activity/MessageActivity;->fragment:Lcom/tudou/ui/fragment/MessageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/MessageFragment;->setEdit(Z)V

    .line 244
    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    .line 246
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/tudou/ui/activity/MessageActivity;->finish()V

    .line 248
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
