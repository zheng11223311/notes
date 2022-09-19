.class public Lcom/tudou/ui/activity/CrashActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "CrashActivity.java"


# instance fields
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
    .line 143
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/CrashActivity;->requestWindowFeature(I)Z

    .line 145
    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/CrashActivity;->setContentView(I)V

    .line 146
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CrashActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/activity/CrashActivity;->manager:Landroid/support/v4/app/FragmentManager;

    .line 147
    new-instance v0, Lcom/tudou/ui/fragment/CrashFragment;

    invoke-direct {v0}, Lcom/tudou/ui/fragment/CrashFragment;-><init>()V

    .line 148
    .local v0, "fragment":Lcom/tudou/ui/fragment/CrashFragment;
    iget-object v1, p0, Lcom/tudou/ui/activity/CrashActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c0104

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "crashFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 149
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 153
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CrashActivity;->finish()V

    .line 156
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
