.class public Lcom/tudou/ui/fragment/SearchTudouActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "SearchTudouActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak",
        "NewApi",
        "ResourceAsColor"
    }
.end annotation


# instance fields
.field public fragment:Lcom/tudou/ui/fragment/SearchTudouFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 599
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 600
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/SearchTudouActivity;->requestWindowFeature(I)Z

    .line 601
    const v1, 0x7f030052

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/SearchTudouActivity;->setContentView(I)V

    .line 602
    new-instance v1, Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-direct {v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;-><init>()V

    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouActivity;->fragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    .line 603
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "search_word"

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "search_word"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouActivity;->fragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v1, v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->setArguments(Landroid/os/Bundle;)V

    .line 606
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c00b1

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchTudouActivity;->fragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "searchFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 607
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 613
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouActivity;->finish()V

    .line 616
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
