.class public Lcom/tudou/ui/fragment/MyFavoriteFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "MyFavoriteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBackView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mPlaylistTab:Landroid/widget/TextView;

.field private mStateTextView:Landroid/widget/TextView;

.field private mSwitchTabLayout:Landroid/widget/LinearLayout;

.field private mTabBottomLine:Landroid/view/View;

.field private mVedioTab:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field public mViewPager:Lcom/youku/widget/ViewPager;

.field private mViewPagerIsScrolling:Z

.field public pagerAdapter:Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPagerIsScrolling:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/MyFavoriteFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyFavoriteFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/MyFavoriteFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyFavoriteFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mVedioTab:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/MyFavoriteFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyFavoriteFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mPlaylistTab:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tudou/ui/fragment/MyFavoriteFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyFavoriteFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPagerIsScrolling:Z

    return p1
.end method

.method private eventView()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mVedioTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mPlaylistTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    new-instance v0, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;-><init>(Landroid/content/Context;Lcom/tudou/ui/fragment/MyFavoriteFragment;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->pagerAdapter:Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;

    .line 154
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->pagerAdapter:Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 155
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    new-instance v1, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;-><init>(Lcom/tudou/ui/fragment/MyFavoriteFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 183
    return-void
.end method

.method private getPlaylistCount()I
    .locals 3

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->pagerAdapter:Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/FavouritePlaylistAdapter;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 94
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPlaylistListView()Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 3

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->pagerAdapter:Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSelectState()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0}, Lcom/youku/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getVedioEdit()Z

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getPlaylistEdit()Z

    move-result v0

    goto :goto_0
.end method

.method private getSelectTabCount()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0}, Lcom/youku/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getVedioCount()I

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getPlaylistCount()I

    move-result v0

    goto :goto_0
.end method

.method private getVedioCount()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->pagerAdapter:Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/FavouriteVedioAdapter;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 76
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 76
    goto :goto_0
.end method

.method private getVedioListView()Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 3

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->pagerAdapter:Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "mStatusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 141
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mSwitchTabLayout:Landroid/widget/LinearLayout;

    .line 142
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mVedioTab:Landroid/widget/TextView;

    .line 143
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mPlaylistTab:Landroid/widget/TextView;

    .line 144
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0458

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mTabBottomLine:Landroid/view/View;

    .line 146
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0148

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/ViewPager;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    .line 147
    return-void
.end method

.method private setEditState(Z)V
    .locals 4
    .param p1, "isEdit"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mStateTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mSwitchTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mTabBottomLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0, v2}, Lcom/youku/widget/ViewPager;->setPagingEnabled(Z)V

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mStateTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mSwitchTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mTabBottomLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setPagingEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getPlaylistEdit()Z
    .locals 3

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->pagerAdapter:Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    iget-boolean v1, v1, Lcom/tudou/adapter/FavouritePlaylistAdapter;->isEdit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVedioEdit()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->pagerAdapter:Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    iget-boolean v1, v1, Lcom/tudou/adapter/FavouriteVedioAdapter;->isEdit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 49
    goto :goto_0
.end method

.method public initTitle()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mBackView:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mBackView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mStateTextView:Landroid/widget/TextView;

    .line 190
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mStateTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0e00fd

    const v4, 0x7f0e00fc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 198
    :sswitch_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 201
    :sswitch_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    .line 202
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mVedioTab:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 203
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mPlaylistTab:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 204
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v2, v1}, Lcom/youku/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 207
    :sswitch_2
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    .line 208
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mVedioTab:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 209
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mPlaylistTab:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 210
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v1, v2}, Lcom/youku/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 214
    :sswitch_3
    iget-boolean v3, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPagerIsScrolling:Z

    if-nez v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v3}, Lcom/youku/widget/ViewPager;->getCurrentItem()I

    move-result v3

    if-nez v3, :cond_3

    .line 218
    sput-boolean v2, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mRefreshKey:Z

    .line 219
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getVedioEdit()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->setVedioEdit(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getVedioEdit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    :try_start_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getVedioListView()Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getVedioListView()Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getVedioCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getVedioListView()Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getVedioCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 219
    goto :goto_1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sput-boolean v2, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    .line 230
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getPlaylistEdit()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_3
    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->setPlaylistEdit(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getPlaylistEdit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :try_start_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getPlaylistListView()Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getPlaylistListView()Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getPlaylistCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getPlaylistListView()Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getPlaylistCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 235
    :catch_1
    move-exception v0

    .line 236
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    move v1, v2

    .line 230
    goto :goto_3

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x7f0c00a7 -> :sswitch_0
        0x7f0c0223 -> :sswitch_3
        0x7f0c04f6 -> :sswitch_2
        0x7f0c04f7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mContext:Landroid/content/Context;

    .line 123
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 128
    const v0, 0x7f030118

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mView:Landroid/view/View;

    .line 130
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->initTitle()V

    .line 131
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->initView()V

    .line 132
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->eventView()V

    .line 133
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public refreshEdit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 247
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getSelectState()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->setEditState(Z)V

    .line 249
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getSelectTabCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mViewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0}, Lcom/youku/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_4

    .line 255
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getVedioListView()Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getVedioListView()Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    :cond_0
    :goto_1
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 259
    :cond_2
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getVedioCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 266
    :cond_4
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getPlaylistListView()Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getPlaylistListView()Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 270
    :cond_5
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->getPlaylistCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 271
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 273
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setPlaylistEdit(Z)V
    .locals 5
    .param p1, "isEdit"    # Z

    .prologue
    .line 111
    :try_start_0
    const-string/jumbo v2, "\u6211\u7684\u6536\u85cf\uff08\u8c46\u5355\uff09\u7f16\u8f91\u6309\u94ae\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u6211\u7684\u6536\u85cf\uff08\u8c46\u5355\uff09\u7f16\u8f91\u6309\u94ae"

    invoke-static {v2, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->pagerAdapter:Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v0, v2, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    .line 113
    .local v0, "adapter":Lcom/tudou/adapter/FavouritePlaylistAdapter;
    iput-boolean p1, v0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->isEdit:Z

    .line 114
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->pagerAdapter:Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-virtual {v2, p1}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->setEdit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "adapter":Lcom/tudou/adapter/FavouritePlaylistAdapter;
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setVedioEdit(Z)V
    .locals 5
    .param p1, "isEdit"    # Z

    .prologue
    .line 100
    :try_start_0
    const-string/jumbo v2, "\u6211\u7684\u6536\u85cf\uff08\u89c6\u9891\uff09\u7f16\u8f91\u6309\u94ae\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u6211\u7684\u6536\u85cf\uff08\u89c6\u9891\uff09\u7f16\u8f91\u6309\u94ae"

    invoke-static {v2, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->pagerAdapter:Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v0, v2, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    .line 102
    .local v0, "adapter":Lcom/tudou/adapter/FavouriteVedioAdapter;
    iput-boolean p1, v0, Lcom/tudou/adapter/FavouriteVedioAdapter;->isEdit:Z

    .line 103
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment;->pagerAdapter:Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-virtual {v2, p1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->setEdit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "adapter":Lcom/tudou/adapter/FavouriteVedioAdapter;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
