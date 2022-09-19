.class public Lcom/tudou/ui/activity/SearchResultManDetailActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "SearchResultManDetailActivity.java"


# instance fields
.field manager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/SearchResultManDetailActivity;->requestWindowFeature(I)Z

    .line 118
    const v4, 0x7f030051

    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/SearchResultManDetailActivity;->setContentView(I)V

    .line 119
    invoke-virtual {p0}, Lcom/tudou/ui/activity/SearchResultManDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/ui/activity/SearchResultManDetailActivity;->manager:Landroid/support/v4/app/FragmentManager;

    .line 120
    new-instance v1, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;

    invoke-direct {v1}, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;-><init>()V

    .line 121
    .local v1, "fragment":Lcom/tudou/ui/fragment/SearchResultManDetailFragment;
    invoke-virtual {p0}, Lcom/tudou/ui/activity/SearchResultManDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 122
    .local v2, "i":Landroid/content/Intent;
    const-string/jumbo v4, "showitem"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    .line 124
    .local v3, "showItem":Lcom/youku/vo/SearchDirectDaoShowItem;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "showitem"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 126
    const-string/jumbo v4, "title"

    const-string/jumbo v5, "title"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v4, "currentPage"

    const-string v5, "currentPage"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    invoke-virtual {v1, v0}, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 130
    iget-object v4, p0, Lcom/tudou/ui/activity/SearchResultManDetailActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0c01fa

    invoke-virtual {v4, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const-string/jumbo v5, "searchResultManDetailFragment"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 131
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 135
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/tudou/ui/activity/SearchResultManDetailActivity;->finish()V

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
