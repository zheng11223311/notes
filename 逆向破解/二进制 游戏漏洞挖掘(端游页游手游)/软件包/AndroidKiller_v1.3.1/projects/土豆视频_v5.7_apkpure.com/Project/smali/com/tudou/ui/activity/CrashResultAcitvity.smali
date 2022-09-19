.class public Lcom/tudou/ui/activity/CrashResultAcitvity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "CrashResultAcitvity.java"


# instance fields
.field manager:Landroid/support/v4/app/FragmentManager;


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
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/tudou/ui/activity/CrashResultAcitvity;->requestWindowFeature(I)Z

    .line 235
    const v5, 0x7f03001d

    invoke-virtual {p0, v5}, Lcom/tudou/ui/activity/CrashResultAcitvity;->setContentView(I)V

    .line 236
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CrashResultAcitvity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    iput-object v5, p0, Lcom/tudou/ui/activity/CrashResultAcitvity;->manager:Landroid/support/v4/app/FragmentManager;

    .line 237
    new-instance v3, Lcom/tudou/ui/fragment/CrashResultFragment;

    invoke-direct {v3}, Lcom/tudou/ui/fragment/CrashResultFragment;-><init>()V

    .line 238
    .local v3, "fragment":Lcom/tudou/ui/fragment/CrashResultFragment;
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CrashResultAcitvity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 239
    .local v4, "i":Landroid/content/Intent;
    if-eqz v4, :cond_1

    .line 240
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 241
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 242
    const-string v5, "crash"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Crash;

    .line 243
    .local v2, "crash":Lcom/youku/vo/Crash;
    if-eqz v2, :cond_0

    .line 244
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v1, "b1":Landroid/os/Bundle;
    const-string v5, "crash"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 246
    invoke-virtual {v3, v1}, Lcom/tudou/ui/fragment/CrashResultFragment;->setArguments(Landroid/os/Bundle;)V

    .line 249
    .end local v1    # "b1":Landroid/os/Bundle;
    .end local v2    # "crash":Lcom/youku/vo/Crash;
    :cond_0
    iget-object v5, p0, Lcom/tudou/ui/activity/CrashResultAcitvity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f0c0105

    invoke-virtual {v5, v6, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const-string v6, "crashResultFragment"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 251
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 255
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CrashResultAcitvity;->finish()V

    .line 258
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
