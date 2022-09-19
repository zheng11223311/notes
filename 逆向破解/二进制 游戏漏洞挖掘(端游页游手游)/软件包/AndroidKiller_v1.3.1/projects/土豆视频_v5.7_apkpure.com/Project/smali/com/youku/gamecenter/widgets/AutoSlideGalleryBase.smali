.class public abstract Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;
.super Landroid/widget/FrameLayout;
.source "AutoSlideGalleryBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase$OnGalleryHandleActionListener;
    }
.end annotation


# instance fields
.field public POSTER_IMAGE_COUNT:I

.field mContext:Landroid/content/Context;

.field mPointContainer:Landroid/widget/LinearLayout;

.field mPointImageViews:[Landroid/widget/ImageView;

.field mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

.field mYoukuGallery:Lcom/youku/gamecenter/widgets/YoukuGallery;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->POSTER_IMAGE_COUNT:I

    .line 33
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public cancelAutoSlide()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mYoukuGallery:Lcom/youku/gamecenter/widgets/YoukuGallery;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/YoukuGallery;->cancelAutoSlide()V

    .line 68
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iput-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

    .line 132
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mYoukuGallery:Lcom/youku/gamecenter/widgets/YoukuGallery;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mYoukuGallery:Lcom/youku/gamecenter/widgets/YoukuGallery;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/YoukuGallery;->cancelAutoSlide()V

    .line 134
    iput-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mYoukuGallery:Lcom/youku/gamecenter/widgets/YoukuGallery;

    .line 136
    :cond_0
    iput-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPointImageViews:[Landroid/widget/ImageView;

    .line 137
    iput-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    .line 138
    return-void
.end method

.method public containsGame(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/adapter/PosterAdapter;->containsGame(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 86
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/youku/gamecenter/GameCenterHomeActivity;

    if-eqz v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/youku/gamecenter/GameCenterHomeActivity;

    .line 88
    .local v0, "activity":Lcom/youku/gamecenter/GameCenterHomeActivity;
    iget-object v1, v0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 89
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 97
    .end local v0    # "activity":Lcom/youku/gamecenter/GameCenterHomeActivity;
    :goto_0
    return v1

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/youku/gamecenter/GameNetActivity;

    if-eqz v1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/youku/gamecenter/GameNetActivity;

    .line 93
    .local v0, "activity":Lcom/youku/gamecenter/GameNetActivity;
    iget-object v1, v0, Lcom/youku/gamecenter/GameNetActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 94
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 97
    .end local v0    # "activity":Lcom/youku/gamecenter/GameNetActivity;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public abstract handleItemSelected(I)V
.end method

.method public init(Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase$OnGalleryHandleActionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase$OnGalleryHandleActionListener;

    .prologue
    const/4 v2, -0x1

    .line 38
    sget v1, Lcom/youku/gamecenter/R$id;->poster:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/widgets/YoukuGallery;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mYoukuGallery:Lcom/youku/gamecenter/widgets/YoukuGallery;

    .line 39
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mYoukuGallery:Lcom/youku/gamecenter/widgets/YoukuGallery;

    invoke-virtual {v1, p1}, Lcom/youku/gamecenter/widgets/YoukuGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 40
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mYoukuGallery:Lcom/youku/gamecenter/widgets/YoukuGallery;

    invoke-virtual {v1, p1}, Lcom/youku/gamecenter/widgets/YoukuGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    sget v1, Lcom/youku/gamecenter/R$id;->point_container:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPointContainer:Landroid/widget/LinearLayout;

    .line 43
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 45
    .local v0, "LP":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    return-void
.end method

.method public abstract initPoints(I)V
.end method

.method public initViewByOrientation()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public notifyDataChanged()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/PosterAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/youku/gamecenter/GameCenterHomeActivity;

    if-eqz v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/youku/gamecenter/GameCenterHomeActivity;

    .line 104
    .local v0, "activity":Lcom/youku/gamecenter/GameCenterHomeActivity;
    iget-object v1, v0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 105
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 112
    .end local v0    # "activity":Lcom/youku/gamecenter/GameCenterHomeActivity;
    :goto_0
    return v1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/youku/gamecenter/GameNetActivity;

    if-eqz v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/youku/gamecenter/GameNetActivity;

    .line 109
    .local v0, "activity":Lcom/youku/gamecenter/GameNetActivity;
    iget-object v1, v0, Lcom/youku/gamecenter/GameNetActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 110
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 112
    .end local v0    # "activity":Lcom/youku/gamecenter/GameNetActivity;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 117
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/youku/gamecenter/GameCenterHomeActivity;

    if-eqz v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/youku/gamecenter/GameCenterHomeActivity;

    .line 119
    .local v0, "activity":Lcom/youku/gamecenter/GameCenterHomeActivity;
    iget-object v1, v0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 120
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 127
    .end local v0    # "activity":Lcom/youku/gamecenter/GameCenterHomeActivity;
    :goto_0
    return v1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/youku/gamecenter/GameNetActivity;

    if-eqz v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/youku/gamecenter/GameNetActivity;

    .line 124
    .local v0, "activity":Lcom/youku/gamecenter/GameNetActivity;
    iget-object v1, v0, Lcom/youku/gamecenter/GameNetActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 125
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 127
    .end local v0    # "activity":Lcom/youku/gamecenter/GameNetActivity;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setAdapterData(Lcom/youku/gamecenter/fragment/GameBaseFragment;Ljava/util/List;Ljava/lang/String;I)V
    .locals 3
    .param p1, "gameBaseFragment"    # Lcom/youku/gamecenter/fragment/GameBaseFragment;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "actBtnMarginRightResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/gamecenter/fragment/GameBaseFragment;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, "allGames":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    const v2, 0x3fffffff    # 1.9999999f

    .line 73
    new-instance v0, Lcom/youku/gamecenter/adapter/PosterAdapter;

    invoke-direct {v0, p1, p3, p4}, Lcom/youku/gamecenter/adapter/PosterAdapter;-><init>(Lcom/youku/gamecenter/fragment/GameBaseFragment;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

    .line 74
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

    invoke-virtual {v0, p2}, Lcom/youku/gamecenter/adapter/PosterAdapter;->setData(Ljava/util/List;)V

    .line 75
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mYoukuGallery:Lcom/youku/gamecenter/widgets/YoukuGallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/YoukuGallery;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mYoukuGallery:Lcom/youku/gamecenter/widgets/YoukuGallery;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/YoukuGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/PosterAdapter;->getPicCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mYoukuGallery:Lcom/youku/gamecenter/widgets/YoukuGallery;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/YoukuGallery;->startAutoSlide()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mYoukuGallery:Lcom/youku/gamecenter/widgets/YoukuGallery;

    iget v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->POSTER_IMAGE_COUNT:I

    rem-int v1, v2, v1

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/YoukuGallery;->setSelection(I)V

    .line 82
    return-void
.end method

.method public startAutoSlide()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/PosterAdapter;->getPicCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mYoukuGallery:Lcom/youku/gamecenter/widgets/YoukuGallery;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/YoukuGallery;->startAutoSlide()V

    .line 60
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->mPosterAdapter:Lcom/youku/gamecenter/adapter/PosterAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/PosterAdapter;->notifyDataSetChanged()V

    .line 62
    :cond_0
    return-void
.end method
