.class public Lcom/tudou/ui/activity/BuildInBrowserActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "BuildInBrowserActivity.java"


# instance fields
.field fragment:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

.field manager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 194
    const/4 v0, 0x0

    const v1, 0x7f04000a

    invoke-static {p0, v0, v1}, Lcom/youku/widget/YoukuAnimation;->activityClose(Landroid/content/Context;II)V

    .line 195
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 165
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/BuildInBrowserActivity;->requestWindowFeature(I)Z

    .line 167
    const v1, 0x7f030010

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/BuildInBrowserActivity;->setContentView(I)V

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    invoke-virtual {p0}, Lcom/tudou/ui/activity/BuildInBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "from"

    invoke-virtual {p0}, Lcom/tudou/ui/activity/BuildInBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/tudou/ui/activity/BuildInBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "title_change"

    invoke-virtual {p0}, Lcom/tudou/ui/activity/BuildInBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "title_change"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    const-string v1, "isSetUserAgent"

    invoke-virtual {p0}, Lcom/tudou/ui/activity/BuildInBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isSetUserAgent"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    new-instance v1, Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    invoke-direct {v1}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;-><init>()V

    iput-object v1, p0, Lcom/tudou/ui/activity/BuildInBrowserActivity;->fragment:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    .line 175
    iget-object v1, p0, Lcom/tudou/ui/activity/BuildInBrowserActivity;->fragment:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    invoke-virtual {v1, v0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/tudou/ui/activity/BuildInBrowserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/activity/BuildInBrowserActivity;->manager:Landroid/support/v4/app/FragmentManager;

    .line 177
    iget-object v1, p0, Lcom/tudou/ui/activity/BuildInBrowserActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c0066

    iget-object v3, p0, Lcom/tudou/ui/activity/BuildInBrowserActivity;->fragment:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "BuildInBrowserFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 178
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tudou/ui/activity/BuildInBrowserActivity;->fragment:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/activity/BuildInBrowserActivity;->fragment:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    invoke-virtual {v0, p1, p2}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->canBack(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    .line 185
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/tudou/ui/activity/BuildInBrowserActivity;->finish()V

    .line 188
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
