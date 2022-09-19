.class public Lcom/tudou/detail/widget/VideoPlaylistBar;
.super Landroid/widget/FrameLayout;
.source "VideoPlaylistBar.java"

# interfaces
.implements Lcom/tudou/detail/widget/ContentPanelTransitionable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/widget/VideoPlaylistBar$AlphaAnim;
    }
.end annotation


# static fields
.field private static final MUSIC_ALBUM:Ljava/lang/String; = "album"

.field private static final MUSIC_NAME:Ljava/lang/String; = "name"

.field private static final MUSIC_SINGER:Ljava/lang/String; = "singer"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "cn.kuwo.player"

.field private static final SEARCH_MUSIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public isExpanded:Z

.field private isTransition:Z

.field private mBtnExpand:Landroid/widget/ImageView;

.field private mCurVideoTitle:Landroid/widget/TextView;

.field private mEpisodeTotal:Landroid/widget/TextView;

.field private mFootView:Landroid/widget/LinearLayout;

.field private mHorizontalAdapter:Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

.field private mHorizontalList:Landroid/support/v7/widget/RecyclerView;

.field private mLine:Landroid/view/View;

.field private mPlayListGrid:Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

.field private mPlayListGridPreview:Landroid/widget/TextView;

.field private mPlayListGridScrollState:I

.field private mPlaylistAdapter:Lcom/tudou/detail/adapter/PlaylistAdapter;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleLayout:Landroid/view/View;

.field private mVideoList:Lcom/tudou/detail/vo/VideoList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/VideoPlaylistBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/tudou/detail/widget/VideoPlaylistBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/widget/VideoPlaylistBar;)Lcom/tudou/detail/vo/VideoList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mBtnExpand:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/detail/widget/VideoPlaylistBar;)Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGrid:Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/detail/widget/VideoPlaylistBar;)Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalAdapter:Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/detail/widget/VideoPlaylistBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;

    .prologue
    .line 46
    iget v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGridScrollState:I

    return v0
.end method

.method static synthetic access$202(Lcom/tudou/detail/widget/VideoPlaylistBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGridScrollState:I

    return p1
.end method

.method static synthetic access$300(Lcom/tudou/detail/widget/VideoPlaylistBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->isTransition:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tudou/detail/widget/VideoPlaylistBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->isTransition:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGridPreview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/detail/widget/VideoPlaylistBar;)Lcom/tudou/detail/adapter/PlaylistAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlaylistAdapter:Lcom/tudou/detail/adapter/PlaylistAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mCurVideoTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoPlaylistBar;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 95
    const v2, 0x7f0c0332

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mTitleLayout:Landroid/view/View;

    .line 96
    const v2, 0x7f0c0334

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mTitle:Landroid/widget/TextView;

    .line 97
    const v2, 0x7f0c0333

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mCurVideoTitle:Landroid/widget/TextView;

    .line 98
    const v2, 0x7f0c0335

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mEpisodeTotal:Landroid/widget/TextView;

    .line 99
    const v2, 0x7f0c0336

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mBtnExpand:Landroid/widget/ImageView;

    .line 100
    const v2, 0x7f0c0337

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalList:Landroid/support/v7/widget/RecyclerView;

    .line 102
    const v2, 0x7f0c0338

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mLine:Landroid/view/View;

    .line 104
    const v2, 0x7f0c033a

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGridPreview:Landroid/widget/TextView;

    .line 105
    const v2, 0x7f0c0339

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGrid:Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    .line 107
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGrid:Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    new-instance v3, Lcom/tudou/detail/widget/VideoPlaylistBar$1;

    invoke-direct {v3, p0}, Lcom/tudou/detail/widget/VideoPlaylistBar$1;-><init>(Lcom/tudou/detail/widget/VideoPlaylistBar;)V

    invoke-virtual {v2, v3}, Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGrid:Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    new-instance v3, Lcom/tudou/detail/widget/VideoPlaylistBar$2;

    invoke-direct {v3, p0}, Lcom/tudou/detail/widget/VideoPlaylistBar$2;-><init>(Lcom/tudou/detail/widget/VideoPlaylistBar;)V

    invoke-virtual {v2, v3}, Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 213
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mTitleLayout:Landroid/view/View;

    new-instance v3, Lcom/tudou/detail/widget/VideoPlaylistBar$3;

    invoke-direct {v3, p0}, Lcom/tudou/detail/widget/VideoPlaylistBar$3;-><init>(Lcom/tudou/detail/widget/VideoPlaylistBar;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 245
    .local v1, "tLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 246
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 248
    new-instance v0, Lcom/tudou/detail/widget/VideoPlaylistBar$4;

    invoke-direct {v0, p0}, Lcom/tudou/detail/widget/VideoPlaylistBar$4;-><init>(Lcom/tudou/detail/widget/VideoPlaylistBar;)V

    .line 259
    .local v0, "tDecoration":Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 260
    return-void
.end method

.method public onTransitionEnd(Lcom/tudou/ui/activity/DetailActivity;Z)V
    .locals 5
    .param p1, "a"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p2, "toPlaylist"    # Z

    .prologue
    .line 264
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mTitleLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 265
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGridPreview:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    if-eqz p2, :cond_0

    .line 267
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGrid:Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    new-instance v1, Lcom/tudou/detail/widget/VideoPlaylistBar$AlphaAnim;

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-direct {v1, p0, v2}, Lcom/tudou/detail/widget/VideoPlaylistBar$AlphaAnim;-><init>(Lcom/tudou/detail/widget/VideoPlaylistBar;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 268
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGrid:Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;->startLayoutAnimation()V

    .line 270
    :cond_0
    new-instance v0, Lcom/tudou/detail/widget/VideoPlaylistBar$5;

    invoke-direct {v0, p0}, Lcom/tudou/detail/widget/VideoPlaylistBar$5;-><init>(Lcom/tudou/detail/widget/VideoPlaylistBar;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/tudou/detail/widget/VideoPlaylistBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    return-void
.end method

.method public onTransitionStart(Lcom/tudou/ui/activity/DetailActivity;Z)V
    .locals 8
    .param p1, "a"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p2, "toPlaylist"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 280
    iput-boolean v5, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->isTransition:Z

    .line 281
    iput-boolean p2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->isExpanded:Z

    .line 282
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 283
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGridPreview:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 285
    .local v1, "values":[F
    if-eqz p2, :cond_0

    .line 286
    aput v6, v1, v4

    .line 287
    aput v7, v1, v5

    .line 292
    :goto_0
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mBtnExpand:Landroid/widget/ImageView;

    const-wide v4, 0x3fd6666666666666L    # 0.35

    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mBtnExpand:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 293
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mBtnExpand:Landroid/widget/ImageView;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mBtnExpand:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 294
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 295
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/tudou/detail/widget/VideoPlaylistBar$6;

    invoke-direct {v2, p0}, Lcom/tudou/detail/widget/VideoPlaylistBar$6;-><init>(Lcom/tudou/detail/widget/VideoPlaylistBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 306
    new-instance v2, Lcom/tudou/detail/widget/VideoPlaylistBar$7;

    invoke-direct {v2, p0, p2}, Lcom/tudou/detail/widget/VideoPlaylistBar$7;-><init>(Lcom/tudou/detail/widget/VideoPlaylistBar;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 331
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 332
    return-void

    .line 289
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    aput v7, v1, v4

    .line 290
    aput v6, v1, v5

    goto :goto_0
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 2
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v1, p1}, Lcom/tudou/detail/vo/VideoList;->getIndexByVideoId(Ljava/lang/String;)I

    move-result v0

    .line 338
    .local v0, "index":I
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalAdapter:Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    invoke-virtual {v1, v0}, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->setSelection(I)V

    .line 339
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalAdapter:Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    invoke-virtual {v1}, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->notifyDataSetChanged()V

    .line 340
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlaylistAdapter:Lcom/tudou/detail/adapter/PlaylistAdapter;

    invoke-virtual {v1, v0}, Lcom/tudou/detail/adapter/PlaylistAdapter;->setSelection(I)V

    .line 341
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlaylistAdapter:Lcom/tudou/detail/adapter/PlaylistAdapter;

    invoke-virtual {v1}, Lcom/tudou/detail/adapter/PlaylistAdapter;->notifyDataSetChanged()V

    .line 342
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 344
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGrid:Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    invoke-virtual {v1, v0}, Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;->setSelection(I)V

    .line 348
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public setVideoPlaylistInfo(Lcom/youku/vo/NewVideoDetail;Lcom/tudou/detail/vo/VideoList;)V
    .locals 7
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    const/4 v6, 0x1

    .line 357
    sget-object v3, Lcom/tudou/detail/widget/VideoPlaylistBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVideoPlaylistInfo list = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iput-object p2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    .line 359
    if-eqz p2, :cond_3

    .line 360
    sget-object v3, Lcom/tudou/detail/widget/VideoPlaylistBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVideoPlaylistInfo cid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/tudou/detail/vo/VideoList;->getChannelId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Youku.isKuwo_show = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/tudou/android/Youku;->isKuwo_show:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {p1}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    .line 363
    .local v1, "type":Lcom/tudou/android/Youku$VideoType;
    if-eqz v1, :cond_4

    sget-object v3, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v1, v3, :cond_4

    .line 364
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tudou/detail/vo/VideoList;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :goto_0
    const-string v3, "number"

    iget-object v4, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v4}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 370
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 371
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 372
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGrid:Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;->setNumColumns(I)V

    .line 379
    :goto_1
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mFootView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 380
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGrid:Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    iget-object v4, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;->removeFooterView(Landroid/view/View;)Z

    .line 382
    :cond_0
    invoke-virtual {p2}, Lcom/tudou/detail/vo/VideoList;->getChannelId()I

    move-result v3

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_1

    invoke-virtual {p2}, Lcom/tudou/detail/vo/VideoList;->getChannelId()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_6

    .line 383
    :cond_1
    sget-boolean v3, Lcom/tudou/android/Youku;->isKuwo_show:Z

    if-eqz v3, :cond_2

    .line 384
    new-instance v2, Lcom/tudou/detail/vo/Video;

    invoke-direct {v2}, Lcom/tudou/detail/vo/Video;-><init>()V

    .line 385
    .local v2, "vKuwo":Lcom/tudou/detail/vo/Video;
    const-string v3, "\u4e3b\u9898\u66f2"

    iput-object v3, v2, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    .line 386
    iput-boolean v6, v2, Lcom/tudou/detail/vo/Video;->isKuwo:Z

    .line 388
    invoke-virtual {p2}, Lcom/tudou/detail/vo/VideoList;->getVideoList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .end local v2    # "vKuwo":Lcom/tudou/detail/vo/Video;
    :cond_2
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mEpisodeTotal:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->stripe_bottom:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :goto_2
    new-instance v3, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;-><init>(Landroid/content/Context;Lcom/tudou/detail/vo/VideoList;)V

    iput-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalAdapter:Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    .line 409
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalAdapter:Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    new-instance v4, Lcom/tudou/detail/widget/VideoPlaylistBar$8;

    invoke-direct {v4, p0, p2}, Lcom/tudou/detail/widget/VideoPlaylistBar$8;-><init>(Lcom/tudou/detail/widget/VideoPlaylistBar;Lcom/tudou/detail/vo/VideoList;)V

    invoke-virtual {v3, v4}, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 468
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalList:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalAdapter:Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 470
    new-instance v3, Lcom/tudou/detail/adapter/PlaylistAdapter;

    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/tudou/detail/adapter/PlaylistAdapter;-><init>(Landroid/content/Context;Lcom/tudou/detail/vo/VideoList;)V

    iput-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlaylistAdapter:Lcom/tudou/detail/adapter/PlaylistAdapter;

    .line 471
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGrid:Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    iget-object v4, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlaylistAdapter:Lcom/tudou/detail/adapter/PlaylistAdapter;

    invoke-virtual {v3, v4}, Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 473
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "type":Lcom/tudou/android/Youku$VideoType;
    :cond_3
    return-void

    .line 366
    .restart local v1    # "type":Lcom/tudou/android/Youku$VideoType;
    :cond_4
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mTitle:Landroid/widget/TextView;

    const-string v4, "\u9009\u96c6"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 374
    :cond_5
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mHorizontalList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 375
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v3, 0x42a40000    # 82.0f

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 376
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mPlayListGrid:Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;

    invoke-virtual {v3, v6}, Lcom/tudou/detail/widget/GridViewWithHeaderAndFooter;->setNumColumns(I)V

    goto/16 :goto_1

    .line 401
    :cond_6
    invoke-virtual {p2}, Lcom/tudou/detail/vo/VideoList;->getEpisodeTotal()I

    move-result v3

    if-lez v3, :cond_7

    .line 402
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mEpisodeTotal:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tudou/detail/vo/VideoList;->getEpisodeTotal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4e2a\u89c6\u9891"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 404
    :cond_7
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar;->mEpisodeTotal:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
