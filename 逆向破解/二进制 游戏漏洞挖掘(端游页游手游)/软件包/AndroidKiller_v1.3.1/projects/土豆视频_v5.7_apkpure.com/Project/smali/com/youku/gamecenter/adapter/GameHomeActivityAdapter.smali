.class public Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "GameHomeActivityAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/youku/gamecenter/GameCenterHomeActivity;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->fragments:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/youku/gamecenter/GameCenterHomeActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 4
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "activity"    # Lcom/youku/gamecenter/GameCenterHomeActivity;
    .param p3, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->fragments:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->mActivity:Lcom/youku/gamecenter/GameCenterHomeActivity;

    .line 31
    iput-object p3, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 32
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 34
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->mActivity:Lcom/youku/gamecenter/GameCenterHomeActivity;

    iget-object v2, v2, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/TabInfo;

    .line 35
    .local v1, "info":Lcom/youku/gamecenter/data/TabInfo;
    iget v2, v1, Lcom/youku/gamecenter/data/TabInfo;->id:I

    packed-switch v2, :pswitch_data_0

    .line 51
    :goto_1
    sget v2, Lcom/youku/gamecenter/GameCenterHomeActivity;->sCurrentFocusFragmentId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 52
    iget v2, v1, Lcom/youku/gamecenter/data/TabInfo;->id:I

    sput v2, Lcom/youku/gamecenter/GameCenterHomeActivity;->sCurrentFocusFragmentId:I

    goto :goto_0

    .line 37
    :pswitch_0
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->fragments:Ljava/util/List;

    iget v3, v1, Lcom/youku/gamecenter/data/TabInfo;->id:I

    invoke-static {v3}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->newInstance(I)Lcom/youku/gamecenter/fragment/GameBaseFragment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :pswitch_1
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->fragments:Ljava/util/List;

    iget v3, v1, Lcom/youku/gamecenter/data/TabInfo;->id:I

    invoke-static {v3}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->newInstance(I)Lcom/youku/gamecenter/fragment/GameBaseFragment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    :pswitch_2
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->fragments:Ljava/util/List;

    iget v3, v1, Lcom/youku/gamecenter/data/TabInfo;->id:I

    invoke-static {v3}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->newInstance(I)Lcom/youku/gamecenter/fragment/GameBaseFragment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    :pswitch_3
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->fragments:Ljava/util/List;

    iget v3, v1, Lcom/youku/gamecenter/data/TabInfo;->id:I

    invoke-static {v3}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->newInstance(I)Lcom/youku/gamecenter/fragment/GameBaseFragment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    :pswitch_4
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->fragments:Ljava/util/List;

    iget v3, v1, Lcom/youku/gamecenter/data/TabInfo;->id:I

    invoke-static {v3}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->newInstance(I)Lcom/youku/gamecenter/fragment/GameBaseFragment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    .end local v1    # "info":Lcom/youku/gamecenter/data/TabInfo;
    :cond_1
    return-void

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private scrollToPage()V
    .locals 4

    .prologue
    .line 85
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->mActivity:Lcom/youku/gamecenter/GameCenterHomeActivity;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/GameCenterHomeActivity;->updateTabColor(I)V

    .line 86
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/fragment/GameBaseFragment;

    iget v0, v1, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mId:I

    .line 88
    .local v0, "id":I
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->loadDatas()V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->mActivity:Lcom/youku/gamecenter/GameCenterHomeActivity;

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/GameCenterHomeActivity;->sCurrentFocusFragmentId:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageClick(Landroid/content/Context;II)V

    .line 96
    sput v0, Lcom/youku/gamecenter/GameCenterHomeActivity;->sCurrentFocusFragmentId:I

    .line 97
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->notifyFragmentFocused()V

    .line 98
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 59
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->scrollToPage()V

    .line 62
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 67
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->scrollToPage()V

    .line 72
    return-void
.end method
