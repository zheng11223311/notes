.class public Lcom/tudou/detail/widget/DetailContentPanel;
.super Landroid/widget/ScrollView;
.source "DetailContentPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/widget/DetailContentPanel$Callbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TRANSITION_DURATION:I = 0x15e


# instance fields
.field public isChildExpand:Z

.field private isExpandAnimRunning:Z

.field private mBriefBar:Lcom/tudou/detail/widget/VideoBriefBar;

.field private mCallbacks:Lcom/tudou/detail/widget/DetailContentPanel$Callbacks;

.field private mCommentBar:Lcom/tudou/detail/widget/VideoCommentBar;

.field private mEasterEggsBar:Lcom/tudou/detail/widget/VideoEasterEggsBar;

.field private mExpandChangeTime:J

.field private mFavCacheBar:Lcom/tudou/detail/widget/VideoFavCacheBar;

.field private mFeatureBar:Lcom/tudou/detail/widget/VideoFeatureBar;

.field private mGoodsBar:Lcom/tudou/detail/widget/VideoGoodsBar;

.field private mHtml5Bar_0:Lcom/tudou/detail/widget/VideoHtml5Bar;

.field private mHtml5Bar_1:Lcom/tudou/detail/widget/VideoHtml5Bar;

.field private mHtml5Bar_2:Lcom/tudou/detail/widget/VideoHtml5Bar;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInnerView:Landroid/widget/LinearLayout;

.field private mOriPlaylistBarHeight:I

.field private mOriScrollY:I

.field private mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

.field private mRecommendBar:Lcom/tudou/detail/widget/VideoRecommendBar;

.field private mScrollRangeY:I

.field private mSelectnessBar:Lcom/tudou/detail/widget/VideoSelectnessBar;

.field private mSliderBar:Lcom/tudou/detail/widget/VideoSliderBar;

.field private mSpecialTopicBar:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

.field private mVideoActorsBar:Lcom/tudou/detail/widget/VideoActorsBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/DetailContentPanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-boolean v2, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isChildExpand:Z

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mExpandChangeTime:J

    .line 70
    iput-boolean v2, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isExpandAnimRunning:Z

    .line 104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/widget/DetailContentPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/DetailContentPanel;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailContentPanel;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/widget/DetailContentPanel;)Lcom/tudou/detail/widget/VideoPlaylistBar;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/DetailContentPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tudou/detail/widget/DetailContentPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/DetailContentPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isExpandAnimRunning:Z

    return p1
.end method


# virtual methods
.method public addSliderItem(Lcom/tudou/detail/vo/SliderInfo;)V
    .locals 1
    .param p1, "slider"    # Lcom/tudou/detail/vo/SliderInfo;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSliderBar:Lcom/tudou/detail/widget/VideoSliderBar;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSliderBar:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/widget/VideoSliderBar;->addSliderBarItem(Lcom/tudou/detail/vo/SliderInfo;)V

    .line 146
    :cond_0
    return-void
.end method

.method public buildAndAddActorsBar(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/NewVideoDetail$Detail$Actor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "actors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/NewVideoDetail$Detail$Actor;>;"
    const v1, 0x7f0c0115

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 127
    .local v0, "tActorsWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03009d

    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/VideoActorsBar;

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mVideoActorsBar:Lcom/tudou/detail/widget/VideoActorsBar;

    .line 129
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mVideoActorsBar:Lcom/tudou/detail/widget/VideoActorsBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mVideoActorsBar:Lcom/tudou/detail/widget/VideoActorsBar;

    invoke-virtual {v1, p1}, Lcom/tudou/detail/widget/VideoActorsBar;->setActors(Ljava/util/ArrayList;)V

    .line 132
    return-void
.end method

.method public buildAndAddBriefBar(Lcom/youku/vo/NewVideoDetail;)V
    .locals 5
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 117
    const v1, 0x7f0c010c

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    .local v0, "tBriefWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03009e

    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/VideoBriefBar;

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mBriefBar:Lcom/tudou/detail/widget/VideoBriefBar;

    .line 120
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mBriefBar:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mBriefBar:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-virtual {v1, p1}, Lcom/tudou/detail/widget/VideoBriefBar;->setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V

    .line 123
    return-void
.end method

.method public buildAndAddCommentBar(Ljava/lang/String;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V
    .locals 5
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "news"    # Lcom/tudou/detail/vo/CommentsInfo;
    .param p3, "hots"    # Lcom/tudou/detail/vo/CommentsInfo;

    .prologue
    .line 246
    const v1, 0x7f0c0118

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 247
    .local v0, "tCommentWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03009f

    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/VideoCommentBar;

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mCommentBar:Lcom/tudou/detail/widget/VideoCommentBar;

    .line 249
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mCommentBar:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mCommentBar:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v1, p1, p2, p3}, Lcom/tudou/detail/widget/VideoCommentBar;->setCommentsInfo(Ljava/lang/String;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V

    .line 252
    return-void
.end method

.method public buildAndAddEasterEggs(Lcom/tudou/detail/vo/EasterEggs;)V
    .locals 5
    .param p1, "eggs"    # Lcom/tudou/detail/vo/EasterEggs;

    .prologue
    .line 277
    const v1, 0x7f0c011a

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 278
    .local v0, "tEggsWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300a1

    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/VideoEasterEggsBar;

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mEasterEggsBar:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    .line 280
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mEasterEggsBar:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mEasterEggsBar:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    invoke-virtual {v1, p1}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->setEasterEggs(Lcom/tudou/detail/vo/EasterEggs;)V

    .line 283
    return-void
.end method

.method public buildAndAddFavCacheBar(Lcom/youku/vo/NewVideoDetail;)V
    .locals 5
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 108
    const v1, 0x7f0c010d

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 109
    .local v0, "tBriefWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300a2

    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/VideoFavCacheBar;

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFavCacheBar:Lcom/tudou/detail/widget/VideoFavCacheBar;

    .line 111
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFavCacheBar:Lcom/tudou/detail/widget/VideoFavCacheBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFavCacheBar:Lcom/tudou/detail/widget/VideoFavCacheBar;

    invoke-virtual {v1, p1}, Lcom/tudou/detail/widget/VideoFavCacheBar;->setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V

    .line 114
    return-void
.end method

.method public buildAndAddFeatureBar(Lcom/tudou/detail/vo/DetailFeature;Ljava/lang/String;)V
    .locals 5
    .param p1, "feature"    # Lcom/tudou/detail/vo/DetailFeature;
    .param p2, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 255
    const v1, 0x7f0c0116

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 256
    .local v0, "tCommentWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030321

    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/VideoFeatureBar;

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFeatureBar:Lcom/tudou/detail/widget/VideoFeatureBar;

    .line 258
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFeatureBar:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFeatureBar:Lcom/tudou/detail/widget/VideoFeatureBar;

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFeatureBar:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-virtual {v1, p1}, Lcom/tudou/detail/widget/VideoFeatureBar;->setFeature(Lcom/tudou/detail/vo/DetailFeature;)V

    .line 262
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFeatureBar:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-virtual {v1, p2}, Lcom/tudou/detail/widget/VideoFeatureBar;->setSelection(Ljava/lang/String;)V

    .line 264
    :cond_1
    return-void
.end method

.method public buildAndAddGoodsBar(Lcom/tudou/detail/vo/GoodsInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/tudou/detail/vo/GoodsInfo;

    .prologue
    .line 229
    const v1, 0x7f0c0117

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 230
    .local v0, "tGoodsWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300a4

    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/VideoGoodsBar;

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mGoodsBar:Lcom/tudou/detail/widget/VideoGoodsBar;

    .line 232
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mGoodsBar:Lcom/tudou/detail/widget/VideoGoodsBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mGoodsBar:Lcom/tudou/detail/widget/VideoGoodsBar;

    invoke-virtual {v1, p1}, Lcom/tudou/detail/widget/VideoGoodsBar;->setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V

    .line 235
    return-void
.end method

.method public buildAndAddHtml5(ILcom/tudou/detail/vo/Interactive$Html5;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "html5"    # Lcom/tudou/detail/vo/Interactive$Html5;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "tHtml5Wrap":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .line 169
    .local v0, "tHtml5Bar":Lcom/tudou/detail/widget/VideoHtml5Bar;
    if-ne p1, v6, :cond_2

    .line 170
    const v2, 0x7f0c010e

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tHtml5Wrap":Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 176
    .restart local v1    # "tHtml5Wrap":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 177
    iget-object v2, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300a6

    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tHtml5Bar":Lcom/tudou/detail/widget/VideoHtml5Bar;
    check-cast v0, Lcom/tudou/detail/widget/VideoHtml5Bar;

    .line 178
    .restart local v0    # "tHtml5Bar":Lcom/tudou/detail/widget/VideoHtml5Bar;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 182
    :goto_1
    if-ne p1, v6, :cond_5

    .line 183
    iput-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mHtml5Bar_0:Lcom/tudou/detail/widget/VideoHtml5Bar;

    .line 189
    :cond_1
    :goto_2
    invoke-virtual {v0, p2}, Lcom/tudou/detail/widget/VideoHtml5Bar;->setInteractive(Lcom/tudou/detail/vo/Interactive$Html5;)V

    .line 190
    return-void

    .line 171
    :cond_2
    if-ne p1, v7, :cond_3

    .line 172
    const v2, 0x7f0c0110

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tHtml5Wrap":Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .restart local v1    # "tHtml5Wrap":Landroid/view/ViewGroup;
    goto :goto_0

    .line 173
    :cond_3
    if-ne p1, v8, :cond_0

    .line 174
    const v2, 0x7f0c0112

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tHtml5Wrap":Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .restart local v1    # "tHtml5Wrap":Landroid/view/ViewGroup;
    goto :goto_0

    .line 180
    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tHtml5Bar":Lcom/tudou/detail/widget/VideoHtml5Bar;
    check-cast v0, Lcom/tudou/detail/widget/VideoHtml5Bar;

    .restart local v0    # "tHtml5Bar":Lcom/tudou/detail/widget/VideoHtml5Bar;
    goto :goto_1

    .line 184
    :cond_5
    if-ne p1, v7, :cond_6

    .line 185
    iput-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mHtml5Bar_1:Lcom/tudou/detail/widget/VideoHtml5Bar;

    goto :goto_2

    .line 186
    :cond_6
    if-ne p1, v8, :cond_1

    .line 187
    iput-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mHtml5Bar_2:Lcom/tudou/detail/widget/VideoHtml5Bar;

    goto :goto_2
.end method

.method public buildAndAddPlaylistBar(Lcom/youku/vo/NewVideoDetail;Lcom/tudou/detail/vo/VideoList;)V
    .locals 5
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 214
    const v1, 0x7f0c0111

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 215
    .local v0, "tPlaylistWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300a8

    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/VideoPlaylistBar;

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    .line 217
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 219
    :cond_0
    if-eqz p2, :cond_1

    .line 221
    :try_start_0
    invoke-virtual {p2}, Lcom/tudou/detail/vo/VideoList;->copy()Lcom/tudou/detail/vo/VideoList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 225
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v1, p1, p2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->setVideoPlaylistInfo(Lcom/youku/vo/NewVideoDetail;Lcom/tudou/detail/vo/VideoList;)V

    .line 226
    return-void

    .line 222
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public buildAndAddRecommendBar(Lcom/youku/vo/NewVideoDetail;Lcom/youku/vo/DetailRecomment;)V
    .locals 5
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "recommend"    # Lcom/youku/vo/DetailRecomment;

    .prologue
    .line 267
    const v1, 0x7f0c0119

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 268
    .local v0, "tRecommendWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300ae

    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/VideoRecommendBar;

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mRecommendBar:Lcom/tudou/detail/widget/VideoRecommendBar;

    .line 270
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mRecommendBar:Lcom/tudou/detail/widget/VideoRecommendBar;

    iget-object v2, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mCallbacks:Lcom/tudou/detail/widget/DetailContentPanel$Callbacks;

    iput-object v2, v1, Lcom/tudou/detail/widget/VideoRecommendBar;->mCallbacks:Lcom/tudou/detail/widget/DetailContentPanel$Callbacks;

    .line 271
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mRecommendBar:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mRecommendBar:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-virtual {v1, p1, p2}, Lcom/tudou/detail/widget/VideoRecommendBar;->setRecommendInfo(Lcom/youku/vo/NewVideoDetail;Lcom/youku/vo/DetailRecomment;)V

    .line 274
    return-void
.end method

.method public buildAndAddSelectness(Lcom/tudou/detail/vo/Interactive;)V
    .locals 5
    .param p1, "interactive"    # Lcom/tudou/detail/vo/Interactive;

    .prologue
    .line 158
    const v1, 0x7f0c0114

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 159
    .local v0, "tSelectnessBarWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300b1

    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/VideoSelectnessBar;

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSelectnessBar:Lcom/tudou/detail/widget/VideoSelectnessBar;

    .line 161
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSelectnessBar:Lcom/tudou/detail/widget/VideoSelectnessBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSelectnessBar:Lcom/tudou/detail/widget/VideoSelectnessBar;

    invoke-virtual {v1, p1}, Lcom/tudou/detail/widget/VideoSelectnessBar;->setInteractive(Lcom/tudou/detail/vo/Interactive;)V

    .line 164
    return-void
.end method

.method public buildAndAddSlider(ILcom/youku/vo/NewVideoDetail;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "num"    # I
    .param p2, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/youku/vo/NewVideoDetail;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/SliderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p3, "sliders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/SliderInfo;>;"
    const v1, 0x7f0c010f

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 194
    .local v0, "tSliderWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300b3

    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/VideoSliderBar;

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSliderBar:Lcom/tudou/detail/widget/VideoSliderBar;

    .line 196
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSliderBar:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSliderBar:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-virtual {v1, p1, p3}, Lcom/tudou/detail/widget/VideoSliderBar;->setSliderInfo(ILjava/util/ArrayList;)V

    .line 199
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSliderBar:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-virtual {v1, p2}, Lcom/tudou/detail/widget/VideoSliderBar;->setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V

    .line 200
    return-void
.end method

.method public buildAndAddSpecialTopic(Lcom/tudou/detail/vo/Interactive;)V
    .locals 5
    .param p1, "interactive"    # Lcom/tudou/detail/vo/Interactive;

    .prologue
    .line 149
    const v1, 0x7f0c0113

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 150
    .local v0, "tInteractiveWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300b5

    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSpecialTopicBar:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    .line 152
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSpecialTopicBar:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSpecialTopicBar:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    invoke-virtual {v1, p1}, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->setInteractive(Lcom/tudou/detail/vo/Interactive;)V

    .line 155
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isExpandAnimRunning:Z

    if-eqz v0, :cond_0

    .line 488
    const/4 v0, 0x1

    .line 490
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSliderBarCount()I
    .locals 4

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "count":I
    :try_start_0
    iget-object v2, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSliderBar:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/VideoSliderBar;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 210
    :goto_0
    return v0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public hidePlayList(Z)V
    .locals 12
    .param p1, "anim"    # Z

    .prologue
    const/4 v10, 0x0

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mExpandChangeTime:J

    .line 495
    iput-boolean v10, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isChildExpand:Z

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isExpandAnimRunning:Z

    .line 497
    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailContentPanel;->getScrollY()I

    move-result v5

    .line 498
    .local v5, "startScrollY":I
    iget v6, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mOriScrollY:I

    .line 500
    .local v6, "endScrollY":I
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getHeight()I

    move-result v2

    .line 501
    .local v2, "startHeight":I
    iget v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mOriPlaylistBarHeight:I

    .line 503
    .local v3, "endHeight":I
    const/4 v8, 0x0

    .line 504
    .local v8, "startPadding":I
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v4

    .line 506
    .local v4, "endPadding":I
    sget-object v0, Lcom/tudou/detail/widget/DetailContentPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hidePlayList startHeight = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", endHeight = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", startPadding = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", endPadding = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " startScrollY = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", endScrollY = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    if-eqz p1, :cond_0

    .line 510
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v10, 0x15e

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 511
    .local v7, "scale":Landroid/animation/ValueAnimator;
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 512
    new-instance v0, Lcom/tudou/detail/widget/DetailContentPanel$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tudou/detail/widget/DetailContentPanel$4;-><init>(Lcom/tudou/detail/widget/DetailContentPanel;IIIII)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 527
    new-instance v0, Lcom/tudou/detail/widget/DetailContentPanel$5;

    invoke-direct {v0, p0}, Lcom/tudou/detail/widget/DetailContentPanel$5;-><init>(Lcom/tudou/detail/widget/DetailContentPanel;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 543
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 552
    .end local v7    # "scale":Landroid/animation/ValueAnimator;
    :goto_0
    return-void

    .line 545
    :cond_0
    invoke-virtual {p0, v6}, Lcom/tudou/detail/widget/DetailContentPanel;->setScrollY(I)V

    .line 546
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 547
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->requestLayout()V

    .line 548
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailContentPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1, v0, v10}, Lcom/tudou/detail/widget/VideoPlaylistBar;->onTransitionStart(Lcom/tudou/ui/activity/DetailActivity;Z)V

    .line 549
    iput-boolean v10, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isExpandAnimRunning:Z

    .line 550
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailContentPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1, v0, v10}, Lcom/tudou/detail/widget/VideoPlaylistBar;->onTransitionEnd(Lcom/tudou/ui/activity/DetailActivity;Z)V

    goto :goto_0

    .line 510
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isExpandAnimRunning()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isExpandAnimRunning:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "handle":Z
    iget-boolean v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isChildExpand:Z

    if-eqz v1, :cond_0

    .line 337
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->hidePlayList(Z)V

    .line 338
    const/4 v0, 0x1

    .line 340
    :cond_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 408
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 410
    const v0, 0x7f0c010b

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    .line 411
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mExpandChangeTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isChildExpand:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mCommentBar:Lcom/tudou/detail/widget/VideoCommentBar;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mCommentBar:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/VideoCommentBar;->onPause()V

    .line 558
    :cond_0
    return-void
.end method

.method public onSendComment(ZLjava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mCommentBar:Lcom/tudou/detail/widget/VideoCommentBar;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mCommentBar:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v0, p2}, Lcom/tudou/detail/widget/VideoCommentBar;->addToCommentList(Ljava/lang/String;)V

    .line 319
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 346
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 367
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 351
    :pswitch_1
    sget-object v3, Lcom/tudou/detail/widget/DetailContentPanel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent onKeyUp mScrollRangeY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mScrollRangeY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentScrollY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailContentPanel;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mEasterEggsBar:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailContentPanel;->getScrollY()I

    move-result v3

    iget v4, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mScrollRangeY:I

    if-le v3, v4, :cond_0

    .line 353
    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mEasterEggsBar:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    invoke-virtual {v3}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->isShowDirectly()Z

    move-result v2

    .line 354
    .local v2, "isShowDirectly":Z
    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mEasterEggsBar:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    invoke-virtual {v3}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->isLoaded()Z

    move-result v1

    .line 355
    .local v1, "isLoaded":Z
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 356
    iget-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mEasterEggsBar:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    new-instance v4, Lcom/tudou/detail/widget/DetailContentPanel$1;

    invoke-direct {v4, p0}, Lcom/tudou/detail/widget/DetailContentPanel$1;-><init>(Lcom/tudou/detail/widget/DetailContentPanel;)V

    invoke-virtual {v3, v4}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->showContent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeActorsBar()V
    .locals 2

    .prologue
    .line 135
    const v1, 0x7f0c0115

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 136
    .local v0, "tActorsWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mVideoActorsBar:Lcom/tudou/detail/widget/VideoActorsBar;

    .line 140
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 81
    iget-object v2, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 82
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 83
    iget-object v2, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iput-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFavCacheBar:Lcom/tudou/detail/widget/VideoFavCacheBar;

    .line 86
    iput-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mBriefBar:Lcom/tudou/detail/widget/VideoBriefBar;

    .line 87
    iput-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSliderBar:Lcom/tudou/detail/widget/VideoSliderBar;

    .line 88
    iput-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    .line 89
    iput-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mVideoActorsBar:Lcom/tudou/detail/widget/VideoActorsBar;

    .line 90
    iput-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSpecialTopicBar:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    .line 91
    iput-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSelectnessBar:Lcom/tudou/detail/widget/VideoSelectnessBar;

    .line 92
    iput-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mHtml5Bar_0:Lcom/tudou/detail/widget/VideoHtml5Bar;

    .line 93
    iput-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mHtml5Bar_1:Lcom/tudou/detail/widget/VideoHtml5Bar;

    .line 94
    iput-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mHtml5Bar_2:Lcom/tudou/detail/widget/VideoHtml5Bar;

    .line 95
    iput-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mGoodsBar:Lcom/tudou/detail/widget/VideoGoodsBar;

    .line 96
    iput-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mCommentBar:Lcom/tudou/detail/widget/VideoCommentBar;

    .line 97
    iput-object v3, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mRecommendBar:Lcom/tudou/detail/widget/VideoRecommendBar;

    .line 98
    iput-boolean v4, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isChildExpand:Z

    .line 99
    iput-boolean v4, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isExpandAnimRunning:Z

    .line 100
    return-void
.end method

.method public removeGoodsBar()V
    .locals 2

    .prologue
    .line 238
    const v1, 0x7f0c0117

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 239
    .local v0, "tGoodsWrap":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mGoodsBar:Lcom/tudou/detail/widget/VideoGoodsBar;

    .line 243
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 374
    return-void
.end method

.method public scrollBy(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 378
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 380
    sget-object v0, Lcom/tudou/detail/widget/DetailContentPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scrollBy y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    return-void
.end method

.method public setCallbacks(Lcom/tudou/detail/widget/DetailContentPanel$Callbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/tudou/detail/widget/DetailContentPanel$Callbacks;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mCallbacks:Lcom/tudou/detail/widget/DetailContentPanel$Callbacks;

    .line 77
    return-void
.end method

.method public setCurVideoFav(Z)V
    .locals 1
    .param p1, "fav"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFavCacheBar:Lcom/tudou/detail/widget/VideoFavCacheBar;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFavCacheBar:Lcom/tudou/detail/widget/VideoFavCacheBar;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/widget/VideoFavCacheBar;->setFav(Z)V

    .line 313
    :cond_0
    return-void
.end method

.method public setCurrentVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/widget/VideoPlaylistBar;->setSelection(Ljava/lang/String;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFeatureBar:Lcom/tudou/detail/widget/VideoFeatureBar;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFeatureBar:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/widget/VideoFeatureBar;->setSelection(Ljava/lang/String;)V

    .line 292
    :cond_1
    return-void
.end method

.method public setLoginState(ZLcom/youku/vo/UserBean;)V
    .locals 1
    .param p1, "login"    # Z
    .param p2, "bean"    # Lcom/youku/vo/UserBean;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mCommentBar:Lcom/tudou/detail/widget/VideoCommentBar;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mCommentBar:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v0, p1, p2}, Lcom/tudou/detail/widget/VideoCommentBar;->setLoginState(ZLcom/youku/vo/UserBean;)V

    .line 332
    :cond_0
    return-void
.end method

.method public setVideoState(Lcom/tudou/detail/vo/VideoState;)V
    .locals 1
    .param p1, "state"    # Lcom/tudou/detail/vo/VideoState;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSliderBar:Lcom/tudou/detail/widget/VideoSliderBar;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mSliderBar:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/widget/VideoSliderBar;->setVideoState(Lcom/tudou/detail/vo/VideoState;)V

    .line 326
    :cond_0
    return-void
.end method

.method public showFeatureBar()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 295
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    iget-boolean v4, v4, Lcom/tudou/detail/widget/VideoPlaylistBar;->isExpanded:Z

    if-eqz v4, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFeatureBar:Lcom/tudou/detail/widget/VideoFeatureBar;

    if-eqz v4, :cond_0

    .line 299
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFeatureBar:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-virtual {v4}, Lcom/tudou/detail/widget/VideoFeatureBar;->getTop()I

    move-result v3

    .line 300
    .local v3, "top":I
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mFeatureBar:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-virtual {v4}, Lcom/tudou/detail/widget/VideoFeatureBar;->getHeight()I

    move-result v0

    .line 301
    .local v0, "height":I
    const v4, 0x7f0c0116

    invoke-virtual {p0, v4}, Lcom/tudou/detail/widget/DetailContentPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 302
    .local v2, "tCommentWrap":Landroid/view/ViewGroup;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailContentPanel;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailContentPanel;->getHeight()I

    move-result v5

    invoke-direct {v1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 303
    .local v1, "r":Landroid/graphics/Rect;
    sget-object v4, Lcom/tudou/detail/widget/DetailContentPanel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showFeatureBar r = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v4}, Lcom/tudou/detail/widget/DetailContentPanel;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    goto :goto_0
.end method

.method public showPlaylist()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 414
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mExpandChangeTime:J

    .line 415
    iput-boolean v11, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isChildExpand:Z

    .line 416
    iput-boolean v11, p0, Lcom/tudou/detail/widget/DetailContentPanel;->isExpandAnimRunning:Z

    .line 417
    new-array v7, v12, [I

    .line 418
    .local v7, "location":[I
    new-array v6, v12, [I

    .line 420
    .local v6, "mPlaylistBarLocation":[I
    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailContentPanel;->getHeight()I

    move-result v3

    .line 421
    .local v3, "endHeight":I
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getHeight()I

    move-result v2

    .line 423
    .local v2, "startheight":I
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v4

    .line 424
    .local v4, "startPadding":I
    const/4 v8, 0x0

    .line 426
    .local v8, "endPadding":I
    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailContentPanel;->getScrollY()I

    move-result v5

    .line 428
    .local v5, "startScrollY":I
    iput v2, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mOriPlaylistBarHeight:I

    .line 429
    iput v5, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mOriScrollY:I

    .line 430
    sget-object v0, Lcom/tudou/detail/widget/DetailContentPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showPlayList startHeight = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", endHeight = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", startPadding = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", endPadding = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " startScrollY = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", endScrollY = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v10, v6, v11

    aget v11, v7, v11

    sub-int/2addr v10, v11

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0, v7}, Lcom/tudou/detail/widget/DetailContentPanel;->getLocationOnScreen([I)V

    .line 434
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel;->mPlaylistBar:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v0, v6}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getLocationOnScreen([I)V

    .line 436
    new-array v0, v12, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v10, 0x15e

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 437
    .local v9, "scale":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/tudou/detail/widget/DetailContentPanel$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/tudou/detail/widget/DetailContentPanel$2;-><init>(Lcom/tudou/detail/widget/DetailContentPanel;IIII[I[I)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 454
    new-instance v0, Lcom/tudou/detail/widget/DetailContentPanel$3;

    invoke-direct {v0, p0}, Lcom/tudou/detail/widget/DetailContentPanel$3;-><init>(Lcom/tudou/detail/widget/DetailContentPanel;)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 470
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 471
    return-void

    .line 436
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
