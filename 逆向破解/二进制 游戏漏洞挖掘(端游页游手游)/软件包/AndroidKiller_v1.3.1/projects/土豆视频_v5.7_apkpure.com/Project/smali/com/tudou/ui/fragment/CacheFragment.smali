.class public Lcom/tudou/ui/fragment/CacheFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "CacheFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;
    }
.end annotation


# static fields
.field public static final CACHED_TAB:I = 0x0

.field public static final CACHING_TAB:I = 0x1

.field private static final CHANGE_PROGRESS:I = 0x1


# instance fields
.field private cacheAll:Landroid/widget/TextView;

.field private cacheEdit:Landroid/widget/TextView;

.field private cacheHandler:Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;

.field private cacheLayout:Landroid/widget/LinearLayout;

.field private cacheTitleHolder:Lcom/youku/vo/CacheTitleHolder;

.field private cachedCount:I

.field private cachingCount:I

.field changeAllBtn:Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;

.field private currentFragmentIndex:I

.field private progressBar:Lcom/youku/widget/CachePageProgressBar;

.field setTitleCacheCount:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

.field private viewPager:Lcom/youku/widget/ViewPager;

.field private viewPagerAdapter:Lcom/tudou/adapter/CacheViewPagerAdapter;

.field private viewpagerIsScrolling:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 44
    iput v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    .line 48
    iput-boolean v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewpagerIsScrolling:Z

    .line 78
    new-instance v0, Lcom/tudou/ui/fragment/CacheFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CacheFragment$1;-><init>(Lcom/tudou/ui/fragment/CacheFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->setTitleCacheCount:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    .line 225
    new-instance v0, Lcom/tudou/ui/fragment/CacheFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CacheFragment$3;-><init>(Lcom/tudou/ui/fragment/CacheFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->changeAllBtn:Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;

    .line 264
    new-instance v0, Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;-><init>(Lcom/tudou/ui/fragment/CacheFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheHandler:Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;

    .line 266
    return-void
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/CacheFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFragment;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/tudou/ui/fragment/CacheFragment;->cachedCount:I

    return p1
.end method

.method static synthetic access$102(Lcom/tudou/ui/fragment/CacheFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFragment;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/tudou/ui/fragment/CacheFragment;->cachingCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/CacheFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFragment;

    .prologue
    .line 35
    iget v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/tudou/ui/fragment/CacheFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFragment;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/CacheFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFragment;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/CacheFragment;->noDataViewByTab(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/youku/vo/CacheTitleHolder;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheTitleHolder:Lcom/youku/vo/CacheTitleHolder;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/CacheFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewpagerIsScrolling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/CacheFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheAll:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/adapter/CacheViewPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPagerAdapter:Lcom/tudou/adapter/CacheViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/CacheFragment;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFragment;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/CacheFragment;->setProgressBar(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheHandler:Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;

    return-object v0
.end method

.method private initViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 101
    new-instance v1, Lcom/tudou/adapter/CacheViewPagerAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tudou/adapter/CacheViewPagerAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPagerAdapter:Lcom/tudou/adapter/CacheViewPagerAdapter;

    .line 102
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPagerAdapter:Lcom/tudou/adapter/CacheViewPagerAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFragment;->setTitleCacheCount:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/CacheViewPagerAdapter;->setOnDataFinishListener(Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;)V

    .line 103
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPagerAdapter:Lcom/tudou/adapter/CacheViewPagerAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFragment;->changeAllBtn:Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/CacheViewPagerAdapter;->setOnNotPauseInfoCountChangeListener(Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;)V

    .line 104
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPager:Lcom/youku/widget/ViewPager;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPagerAdapter:Lcom/tudou/adapter/CacheViewPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/youku/widget/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 105
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cache_tab"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "tab":Ljava/lang/String;
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPager:Lcom/youku/widget/ViewPager;

    new-instance v2, Lcom/tudou/ui/fragment/CacheFragment$2;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/CacheFragment$2;-><init>(Lcom/tudou/ui/fragment/CacheFragment;)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "caching_tab"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v1, v5}, Lcom/youku/widget/ViewPager;->setCurrentItem(I)V

    .line 132
    iput v5, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    .line 133
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheTitleHolder:Lcom/youku/vo/CacheTitleHolder;

    iget v2, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    invoke-virtual {v1, v2}, Lcom/youku/vo/CacheTitleHolder;->selectTab(I)V

    .line 139
    :goto_0
    iget v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/CacheFragment;->noDataViewByTab(I)V

    .line 140
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v1, v4}, Lcom/youku/widget/ViewPager;->setCurrentItem(I)V

    .line 136
    iput v4, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    .line 137
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheTitleHolder:Lcom/youku/vo/CacheTitleHolder;

    iget v2, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    invoke-virtual {v1, v2}, Lcom/youku/vo/CacheTitleHolder;->selectTab(I)V

    goto :goto_0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    new-instance v0, Lcom/youku/vo/CacheTitleHolder;

    invoke-direct {v0, p1, p0}, Lcom/youku/vo/CacheTitleHolder;-><init>(Landroid/view/View;Lcom/tudou/ui/fragment/CacheFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheTitleHolder:Lcom/youku/vo/CacheTitleHolder;

    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheTitleHolder:Lcom/youku/vo/CacheTitleHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheTitleHolder;->cacheEditFinish:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f0c048f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/ViewPager;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPager:Lcom/youku/widget/ViewPager;

    .line 69
    const v0, 0x7f0c048e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheEdit:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0c048d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheAll:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0c048c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheLayout:Landroid/widget/LinearLayout;

    .line 72
    const v0, 0x7f0c0154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/CachePageProgressBar;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->progressBar:Lcom/youku/widget/CachePageProgressBar;

    .line 73
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheEdit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheAll:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method private noDataViewByTab(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 143
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 144
    iget v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cachingCount:I

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFragment;->getEdit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheAll:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheEdit:Landroid/widget/TextView;

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 154
    :cond_2
    iget v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cachedCount:I

    if-nez v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFragment;->getEdit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheAll:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheEdit:Landroid/widget/TextView;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setProgressBar(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 341
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/Room;

    .line 342
    .local v0, "r":Lcom/youku/vo/Room;
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->progressBar:Lcom/youku/widget/CachePageProgressBar;

    invoke-virtual {v1, v0}, Lcom/youku/widget/CachePageProgressBar;->setProgressBar(Lcom/youku/vo/Room;)V

    .line 343
    return-void
.end method


# virtual methods
.method public getEdit()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPagerAdapter:Lcom/tudou/adapter/CacheViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPagerAdapter:Lcom/tudou/adapter/CacheViewPagerAdapter;

    iget v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/CacheViewPagerAdapter;->isEdit(I)Z

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    const-string v3, "cache"

    const-wide/16 v4, 0x12c

    invoke-static {v3, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 198
    :sswitch_1
    iget-boolean v3, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewpagerIsScrolling:Z

    if-nez v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPagerAdapter:Lcom/tudou/adapter/CacheViewPagerAdapter;

    iget v4, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    invoke-virtual {v3, v4}, Lcom/tudou/adapter/CacheViewPagerAdapter;->isEdit(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 201
    .local v0, "tempEdit":Z
    :goto_1
    iget-object v4, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheTitleHolder:Lcom/youku/vo/CacheTitleHolder;

    iget v3, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    if-nez v3, :cond_3

    const-string/jumbo v3, "\u7f16\u8f91\u5df2\u7f13\u5b58"

    :goto_2
    invoke-virtual {v4, v1, v3}, Lcom/youku/vo/CacheTitleHolder;->setEditTitle(ZLjava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v1, v2}, Lcom/youku/widget/ViewPager;->setPagingEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->progressBar:Lcom/youku/widget/CachePageProgressBar;

    invoke-virtual {v1, v6}, Lcom/youku/widget/CachePageProgressBar;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPagerAdapter:Lcom/tudou/adapter/CacheViewPagerAdapter;

    iget v2, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    invoke-virtual {v1, v2, v0}, Lcom/tudou/adapter/CacheViewPagerAdapter;->setEdit(IZ)V

    goto :goto_0

    .end local v0    # "tempEdit":Z
    :cond_2
    move v0, v2

    .line 200
    goto :goto_1

    .line 201
    .restart local v0    # "tempEdit":Z
    :cond_3
    const-string/jumbo v3, "\u7f16\u8f91\u7f13\u5b58\u4e2d"

    goto :goto_2

    .line 210
    .end local v0    # "tempEdit":Z
    :sswitch_2
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFragment;->outEditState()V

    goto :goto_0

    .line 213
    :sswitch_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v1, v2}, Lcom/youku/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 216
    :sswitch_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v2, v1}, Lcom/youku/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 219
    :sswitch_5
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c048d -> :sswitch_0
        0x7f0c048e -> :sswitch_1
        0x7f0c0499 -> :sswitch_5
        0x7f0c049e -> :sswitch_3
        0x7f0c04a2 -> :sswitch_4
        0x7f0c04a7 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFragment;->storeProgress()V

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .line 58
    const v1, 0x7f0300fc

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/CacheFragment;->initViews(Landroid/view/View;)V

    .line 61
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CacheFragment;->initViewPager()V

    .line 62
    return-object v0
.end method

.method public outEditState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheTitleHolder:Lcom/youku/vo/CacheTitleHolder;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/youku/vo/CacheTitleHolder;->setEditTitle(ZLjava/lang/String;)V

    .line 182
    iget v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cachingCount:I

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cachedCount:I

    if-eqz v0, :cond_2

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->cacheLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0, v3}, Lcom/youku/widget/ViewPager;->setPagingEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->progressBar:Lcom/youku/widget/CachePageProgressBar;

    invoke-virtual {v0, v2}, Lcom/youku/widget/CachePageProgressBar;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPagerAdapter:Lcom/tudou/adapter/CacheViewPagerAdapter;

    iget v1, p0, Lcom/tudou/ui/fragment/CacheFragment;->currentFragmentIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/tudou/adapter/CacheViewPagerAdapter;->setEdit(IZ)V

    .line 190
    return-void
.end method

.method public refreshPage(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPagerAdapter:Lcom/tudou/adapter/CacheViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/tudou/adapter/CacheViewPagerAdapter;->refreshData(I)V

    .line 257
    return-void
.end method

.method public setCurrentFragment(I)V
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment;->viewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0, p1}, Lcom/youku/widget/ViewPager;->setCurrentItem(I)V

    .line 261
    return-void
.end method

.method public storeProgress()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/tudou/ui/fragment/CacheFragment$4;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CacheFragment$4;-><init>(Lcom/tudou/ui/fragment/CacheFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFragment$4;->start()V

    .line 338
    return-void
.end method
