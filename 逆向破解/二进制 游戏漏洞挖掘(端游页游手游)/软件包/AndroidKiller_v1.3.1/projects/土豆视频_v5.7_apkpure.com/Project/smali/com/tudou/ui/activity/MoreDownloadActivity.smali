.class public Lcom/tudou/ui/activity/MoreDownloadActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "MoreDownloadActivity.java"


# instance fields
.field private bodyview:Landroid/view/View;

.field fragment:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

.field private newVideodetail:Lcom/youku/vo/NewVideoDetail;

.field private title_layout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .prologue
    .line 57
    const v4, 0x7f0c01bc

    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/MoreDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 58
    .local v3, "titleView":Landroid/view/View;
    const v4, 0x7f0c024f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    .local v0, "leftImg":Landroid/widget/ImageView;
    const v4, 0x7f0c0251

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "right":Landroid/view/View;
    const v4, 0x7f0c06b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    .local v2, "titleTV":Landroid/widget/TextView;
    const v4, 0x7f0208e1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v4, p0, Lcom/tudou/ui/activity/MoreDownloadActivity;->newVideodetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v4, Lcom/tudou/ui/activity/MoreDownloadActivity$1;

    invoke-direct {v4, p0}, Lcom/tudou/ui/activity/MoreDownloadActivity$1;-><init>(Lcom/tudou/ui/activity/MoreDownloadActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const v3, 0x7f0c01bd

    .line 33
    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/MoreDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/activity/MoreDownloadActivity;->bodyview:Landroid/view/View;

    .line 34
    invoke-virtual {p0}, Lcom/tudou/ui/activity/MoreDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "detail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/NewVideoDetail;

    iput-object v1, p0, Lcom/tudou/ui/activity/MoreDownloadActivity;->newVideodetail:Lcom/youku/vo/NewVideoDetail;

    .line 36
    const-class v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iput-object v1, p0, Lcom/tudou/ui/activity/MoreDownloadActivity;->fragment:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .line 38
    iget-object v1, p0, Lcom/tudou/ui/activity/MoreDownloadActivity;->fragment:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-virtual {v1, v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->initData(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/tudou/ui/activity/MoreDownloadActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/activity/MoreDownloadActivity;->fragment:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 41
    invoke-direct {p0}, Lcom/tudou/ui/activity/MoreDownloadActivity;->initTitle()V

    .line 42
    iget-object v1, p0, Lcom/tudou/ui/activity/MoreDownloadActivity;->fragment:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->onSelected()V

    .line 43
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/MoreDownloadActivity;->requestWindowFeature(I)Z

    .line 28
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/MoreDownloadActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/tudou/ui/activity/MoreDownloadActivity;->initView()V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onDestroy()V

    .line 48
    invoke-static {}, Lcom/tudou/detail/DetailSeriesShareData;->clear()V

    .line 49
    invoke-static {}, Lcom/tudou/detail/DetailPlaylistShareData;->clear()V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onResume()V

    .line 55
    return-void
.end method
