.class public Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "RecommendHomeAdapter.java"

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

.field private mCallback:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;

.field private mContext:Landroid/support/v4/app/FragmentActivity;

.field private mNewRecommendPosterFragment:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

.field private mPager:Lcom/youtu/apps/widget/YoutuViewPager;

.field private mTopGameFragment:Lcom/youtu/apps/recommend/fragment/TopGameFragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/youtu/apps/widget/YoutuViewPager;Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;Ljava/lang/String;Ljava/lang/String;ILcom/youtu/apps/recommend/vo/AllNewRecommend;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "pager"    # Lcom/youtu/apps/widget/YoutuViewPager;
    .param p3, "callback"    # Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;
    .param p4, "tag0"    # Ljava/lang/String;
    .param p5, "tag1"    # Ljava/lang/String;
    .param p6, "selectTab"    # I
    .param p7, "newRecommend"    # Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->fragments:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    .line 34
    iput-object p2, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mPager:Lcom/youtu/apps/widget/YoutuViewPager;

    .line 35
    iput-object p3, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mCallback:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;

    .line 36
    if-eqz p4, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    iput-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mNewRecommendPosterFragment:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mNewRecommendPosterFragment:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    const-class v1, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    iput-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mNewRecommendPosterFragment:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    .line 45
    :cond_1
    if-eqz p5, :cond_2

    .line 46
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;

    iput-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mTopGameFragment:Lcom/youtu/apps/recommend/fragment/TopGameFragment;

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mTopGameFragment:Lcom/youtu/apps/recommend/fragment/TopGameFragment;

    if-nez v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    const-class v1, Lcom/youtu/apps/recommend/fragment/TopGameFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;

    iput-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mTopGameFragment:Lcom/youtu/apps/recommend/fragment/TopGameFragment;

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mNewRecommendPosterFragment:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mTopGameFragment:Lcom/youtu/apps/recommend/fragment/TopGameFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p2, p0}, Lcom/youtu/apps/widget/YoutuViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 57
    invoke-virtual {p2, p0}, Lcom/youtu/apps/widget/YoutuViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mNewRecommendPosterFragment:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    iget-object v1, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mPager:Lcom/youtu/apps/widget/YoutuViewPager;

    invoke-virtual {v0, v1}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->setViewPager(Lcom/youtu/apps/widget/YoutuViewPager;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->fragments:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mNewRecommendPosterFragment:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mNewRecommendPosterFragment:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->clear()V

    .line 103
    iput-object v1, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mNewRecommendPosterFragment:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mTopGameFragment:Lcom/youtu/apps/recommend/fragment/TopGameFragment;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mTopGameFragment:Lcom/youtu/apps/recommend/fragment/TopGameFragment;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->clear()V

    .line 107
    iput-object v1, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mTopGameFragment:Lcom/youtu/apps/recommend/fragment/TopGameFragment;

    .line 109
    :cond_1
    iput-object v1, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mCallback:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;

    .line 110
    iput-object v1, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mPager:Lcom/youtu/apps/widget/YoutuViewPager;

    .line 111
    iput-object v1, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    .line 112
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->fragments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->fragments:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->fragments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->fragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mCallback:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mCallback:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;

    iget-object v1, p0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->mPager:Lcom/youtu/apps/widget/YoutuViewPager;

    invoke-virtual {v1}, Lcom/youtu/apps/widget/YoutuViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;->StateChanged(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 72
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 77
    return-void
.end method
