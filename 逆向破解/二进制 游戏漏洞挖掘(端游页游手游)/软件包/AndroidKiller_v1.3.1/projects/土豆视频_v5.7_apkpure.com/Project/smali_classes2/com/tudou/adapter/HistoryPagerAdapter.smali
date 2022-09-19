.class public Lcom/tudou/adapter/HistoryPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "HistoryPagerAdapter.java"


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mHistoryEpisodeFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

.field private mWholeHistoryFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "aBaseActivity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->views:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->mContext:Landroid/app/Activity;

    .line 31
    invoke-direct {p0}, Lcom/tudou/adapter/HistoryPagerAdapter;->initView()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->views:Ljava/util/List;

    .line 26
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->mHistoryEpisodeFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iput-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->mHistoryEpisodeFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->mWholeHistoryFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iput-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->mWholeHistoryFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->mWholeHistoryFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->mHistoryEpisodeFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    return v0
.end method

.method public getEditable()Z
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryManagerFragment;

    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0}, Lcom/youku/widget/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->mWholeHistoryFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->getEditable()Z

    move-result v0

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->mHistoryEpisodeFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->getEditable()Z

    move-result v0

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->views:Ljava/util/List;

    rem-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public setEditable(Z)V
    .locals 1
    .param p1, "editable"    # Z

    .prologue
    .line 59
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryManagerFragment;

    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0}, Lcom/youku/widget/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->mWholeHistoryFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-virtual {v0, p1}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->setEditable(Z)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/adapter/HistoryPagerAdapter;->mHistoryEpisodeFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-virtual {v0, p1}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->setEditable(Z)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
