.class public Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;
.super Landroid/widget/FrameLayout;
.source "OverScrollView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final OVERSHOOT_TENSION:F = 0.75f


# instance fields
.field protected child:Landroid/view/View;

.field hasFailedObtainingScrollFields:Z

.field inflater:Landroid/view/LayoutInflater;

.field isInFlingMode:Z

.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScrollViewMovedFocus:Z

.field mScrollXField:Ljava/lang/reflect/Field;

.field mScrollYField:Ljava/lang/reflect/Field;

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field metrics:Landroid/util/DisplayMetrics;

.field private overScrollerSpringbackTask:Ljava/lang/Runnable;

.field prevScrollY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mContext:Landroid/content/Context;

    .line 156
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->initBounce()V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mContext:Landroid/content/Context;

    .line 164
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->initBounce()V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 80
    iput-boolean v2, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->isInFlingMode:Z

    .line 104
    iput-boolean v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsLayoutDirty:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 118
    iput-boolean v2, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsBeingDragged:Z

    .line 134
    iput-boolean v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mSmoothScrollingEnabled:Z

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mActivePointerId:I

    .line 170
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mContext:Landroid/content/Context;

    .line 172
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->initScrollView()V

    .line 173
    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->setFillViewport(Z)V

    .line 174
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->initBounce()V

    .line 175
    return-void
.end method

.method private SetScrollX(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScrollXField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScrollXField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private SetScrollY(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScrollYField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScrollYField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-virtual {p0, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 365
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 368
    .local v1, "childHeight":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 370
    .end local v1    # "childHeight":I
    :cond_0
    return v2
.end method

.method private clamp(III)I
    .locals 1
    .param p1, "n"    # I
    .param p2, "my"    # I
    .param p3, "child"    # I

    .prologue
    .line 1643
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1654
    :cond_0
    const/4 p1, 0x0

    .line 1664
    .end local p1    # "n":I
    :cond_1
    :goto_0
    return p1

    .line 1656
    .restart local p1    # "n":I
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1662
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1119
    if-eqz p1, :cond_0

    .line 1121
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1123
    invoke-virtual {p0, v1, p1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->smoothScrollBy(II)V

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 815
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 816
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 825
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 827
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 828
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 830
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 831
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 832
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 834
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 841
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 843
    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_2

    .line 846
    move-object v1, v5

    .line 847
    move v3, v8

    .line 828
    .end local v8    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 841
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 850
    .restart local v8    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    .line 851
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 853
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 855
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 862
    move-object v1, v5

    goto :goto_2

    .line 851
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 866
    .restart local v7    # "viewIsCloserToBoundary":Z
    :cond_6
    if-eqz v8, :cond_7

    .line 872
    move-object v1, v5

    .line 873
    const/4 v3, 0x1

    goto :goto_2

    .line 874
    :cond_7
    if-eqz v7, :cond_0

    .line 880
    move-object v1, v5

    goto :goto_2

    .line 887
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "preferredFocusable"    # Landroid/view/View;

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 782
    .local v1, "fadingEdgeLength":I
    add-int v2, p2, v1

    .line 783
    .local v2, "topWithoutFadingEdge":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 785
    .local v0, "bottomWithoutFadingEdge":I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 786
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 791
    .end local p3    # "preferredFocusable":Landroid/view/View;
    :goto_0
    return-object p3

    .restart local p3    # "preferredFocusable":Landroid/view/View;
    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private initBounce()V
    .locals 5

    .prologue
    .line 179
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->metrics:Landroid/util/DisplayMetrics;

    .line 183
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    .line 184
    new-instance v1, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$1;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$1;-><init>(Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;)V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->overScrollerSpringbackTask:Ljava/lang/Runnable;

    .line 199
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->prevScrollY:I

    .line 203
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mScrollX"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScrollXField:Ljava/lang/reflect/Field;

    .line 204
    const-class v1, Landroid/view/View;

    const-string v2, "mScrollY"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScrollYField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->hasFailedObtainingScrollFields:Z

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 292
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    .line 293
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->setFocusable(Z)V

    .line 294
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->setDescendantFocusability(I)V

    .line 295
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->setWillNotDraw(Z)V

    .line 296
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 297
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTouchSlop:I

    .line 298
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mMinimumVelocity:I

    .line 299
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mMaximumVelocity:I

    .line 301
    invoke-virtual {p0, p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 303
    new-instance v1, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$2;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$2;-><init>(Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;)V

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->post(Ljava/lang/Runnable;)Z

    .line 310
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1096
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1575
    if-ne p1, p2, :cond_1

    .line 1581
    :cond_0
    :goto_0
    return v1

    .line 1580
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1581
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1106
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1108
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 738
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 739
    .local v1, "pointerId":I
    iget v3, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 744
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 745
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mLastMotionY:F

    .line 746
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mActivePointerId:I

    .line 747
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 749
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 752
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 744
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollView()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1692
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v8

    .line 1694
    .local v8, "displayHeight":I
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 1696
    .local v7, "contentTop":I
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int v6, v0, v3

    .line 1698
    .local v6, "contentBottom":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v2

    .line 1703
    .local v2, "currScrollY":I
    if-ge v2, v7, :cond_0

    .line 1706
    invoke-virtual {p0, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->onOverScroll(I)I

    .line 1707
    sub-int v4, v7, v2

    .line 1734
    .local v4, "scrollBy":I
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    const/16 v5, 0x1f4

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1737
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->overScrollerSpringbackTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->post(Ljava/lang/Runnable;)Z

    .line 1739
    iput v2, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->prevScrollY:I

    move v1, v9

    .line 1742
    .end local v4    # "scrollBy":I
    :goto_1
    return v1

    .line 1708
    :cond_0
    add-int v0, v2, v8

    if-le v0, v6, :cond_2

    .line 1711
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    if-ge v0, v8, :cond_1

    .line 1714
    sub-int v4, v7, v2

    .line 1726
    .restart local v4    # "scrollBy":I
    :goto_2
    invoke-virtual {p0, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->onOverScroll(I)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_0

    .line 1720
    .end local v4    # "scrollBy":I
    :cond_1
    sub-int v0, v6, v8

    sub-int v4, v0, v2

    .restart local v4    # "scrollBy":I
    goto :goto_2

    .line 1731
    .end local v4    # "scrollBy":I
    :cond_2
    iput-boolean v9, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->isInFlingMode:Z

    goto :goto_1
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 989
    const/4 v3, 0x1

    .line 991
    .local v3, "handled":Z
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v4

    .line 992
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v1

    .line 993
    .local v1, "containerTop":I
    add-int v0, v1, v4

    .line 994
    .local v0, "containerBottom":I
    const/16 v9, 0x21

    if-ne p1, v9, :cond_2

    move v6, v7

    .line 996
    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 997
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 999
    move-object v5, p0

    .line 1002
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1004
    const/4 v3, 0x0

    .line 1011
    :goto_1
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1013
    iput-boolean v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScrollViewMovedFocus:Z

    .line 1014
    iput-boolean v8, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScrollViewMovedFocus:Z

    .line 1017
    :cond_1
    return v3

    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    move v6, v8

    .line 994
    goto :goto_0

    .line 1007
    .restart local v5    # "newFocused":Landroid/view/View;
    .restart local v6    # "up":Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1008
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1007
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1312
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1315
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1317
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1319
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 1321
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollBy(II)V

    .line 1323
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1338
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1339
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1341
    if-eqz p2, :cond_2

    .line 1343
    invoke-virtual {p0, v2, v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollBy(II)V

    .line 1349
    :cond_0
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_1
    move v1, v2

    .line 1338
    goto :goto_0

    .line 1346
    .restart local v1    # "scroll":Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 321
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->initChildPointer()V

    .line 322
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 333
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->initChildPointer()V

    .line 334
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 357
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->initChildPointer()V

    .line 346
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1030
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1031
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1032
    const/4 v0, 0x0

    .line 1034
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1036
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1038
    .local v3, "maxJump":I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1040
    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1041
    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1042
    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1043
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->doScrollY(I)V

    .line 1044
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1074
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1082
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1083
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->setDescendantFocusability(I)V

    .line 1084
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->requestFocus()Z

    .line 1085
    invoke-virtual {p0, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->setDescendantFocusability(I)V

    .line 1087
    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1048
    .end local v6    # "scrollDelta":I
    :cond_3
    move v6, v3

    .line 1050
    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1052
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v6

    .line 1067
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1071
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->doScrollY(I)V

    goto :goto_0

    .line 1053
    :cond_5
    if-ne p1, v10, :cond_4

    .line 1055
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1057
    invoke-virtual {p0, v7}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1059
    .local v1, "daBottom":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v9

    add-int v5, v8, v9

    .line 1061
    .local v5, "screenBottom":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1063
    sub-int v6, v1, v5

    goto :goto_1

    .line 1071
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    .line 1249
    iget-boolean v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->hasFailedObtainingScrollFields:Z

    if-eqz v5, :cond_1

    .line 1251
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1278
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollX()I

    move-result v1

    .line 1279
    .local v1, "oldX":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v2

    .line 1280
    .local v2, "oldY":I
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 1281
    .local v3, "x":I
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1283
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 1285
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1286
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->clamp(III)I

    move-result v3

    .line 1287
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->clamp(III)I

    move-result v4

    .line 1288
    if-ne v3, v1, :cond_2

    if-eq v4, v2, :cond_3

    .line 1290
    :cond_2
    invoke-direct {p0, v3}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->SetScrollX(I)V

    .line 1292
    invoke-direct {p0, v4}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->SetScrollY(I)V

    .line 1294
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->onScrollChanged(IIII)V

    .line 1297
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->awakenScrollBars()Z

    .line 1300
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->postInvalidate()V

    goto :goto_0
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1363
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1428
    :cond_0
    :goto_0
    return v6

    .line 1366
    :cond_1
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v3

    .line 1367
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v5

    .line 1368
    .local v5, "screenTop":I
    add-int v4, v5, v3

    .line 1370
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1373
    .local v2, "fadingEdge":I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1375
    add-int/2addr v5, v2

    .line 1380
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1382
    sub-int/2addr v4, v2

    .line 1385
    :cond_3
    const/4 v6, 0x0

    .line 1387
    .local v6, "scrollYDelta":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 1393
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1396
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1404
    :goto_1
    invoke-virtual {p0, v7}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1405
    .local v0, "bottom":I
    sub-int v1, v0, v4

    .line 1406
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1408
    goto :goto_0

    .line 1400
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1408
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1414
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1417
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1426
    :goto_2
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 1421
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1213
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v1

    .line 1201
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 1202
    .local v0, "contentHeight":I
    if-nez v1, :cond_0

    .line 1207
    .end local v0    # "contentHeight":I
    :goto_0
    return v0

    .restart local v0    # "contentHeight":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 472
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 474
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 479
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 480
    const/4 v0, 0x0

    .line 481
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 482
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 516
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 487
    :cond_2
    const/4 v1, 0x0

    .line 488
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 490
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 516
    goto :goto_0

    .line 493
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 495
    invoke-virtual {p0, v4}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 498
    :cond_4
    invoke-virtual {p0, v4}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->fullScroll(I)Z

    move-result v1

    .line 500
    goto :goto_1

    .line 502
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 504
    invoke-virtual {p0, v5}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 507
    :cond_5
    invoke-virtual {p0, v5}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->fullScroll(I)Z

    move-result v1

    .line 509
    goto :goto_1

    .line 511
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 490
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .param p1, "velocityY"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 1594
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1596
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingTop()I

    move-result v1

    sub-int v10, v0, v1

    .line 1597
    .local v10, "height":I
    invoke-virtual {p0, v3}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 1599
    .local v9, "bottom":I
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v2

    sub-int v4, v9, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1601
    if-lez p1, :cond_3

    move v11, v13

    .line 1603
    .local v11, "movingDown":Z
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v12

    .line 1604
    .local v12, "newFocused":Landroid/view/View;
    if-nez v12, :cond_0

    .line 1606
    move-object v12, p0

    .line 1609
    :cond_0
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v12, v0, :cond_1

    if-eqz v11, :cond_4

    const/16 v0, 0x82

    :goto_1
    invoke-virtual {v12, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1611
    iput-boolean v13, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScrollViewMovedFocus:Z

    .line 1612
    iput-boolean v3, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScrollViewMovedFocus:Z

    .line 1615
    :cond_1
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->invalidate()V

    .line 1617
    .end local v9    # "bottom":I
    .end local v10    # "height":I
    .end local v11    # "movingDown":Z
    .end local v12    # "newFocused":Landroid/view/View;
    :cond_2
    return-void

    .restart local v9    # "bottom":I
    .restart local v10    # "height":I
    :cond_3
    move v11, v3

    .line 1601
    goto :goto_0

    .line 1609
    .restart local v11    # "movingDown":Z
    .restart local v12    # "newFocused":Landroid/view/View;
    :cond_4
    const/16 v0, 0x21

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 950
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 951
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v2

    .line 953
    .local v2, "height":I
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 954
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 956
    if-eqz v1, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v0

    .line 959
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 961
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 962
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 963
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 967
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 950
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 267
    const/4 v3, 0x0

    .line 278
    :goto_0
    return v3

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 271
    .local v1, "length":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 272
    .local v0, "bottomEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 273
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    .line 275
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 278
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 287
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 250
    const/4 v1, 0x0

    .line 259
    :goto_0
    return v1

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 254
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 259
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v1

    .line 524
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 525
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 527
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_0
    return v2
.end method

.method public initChildPointer()V
    .locals 3

    .prologue
    const/16 v2, 0x5dc

    const/4 v1, 0x0

    .line 240
    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    .line 241
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 243
    return-void
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mFillViewport:Z

    return v0
.end method

.method public isOverScrolled()Z
    .locals 3

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 1219
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1224
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1226
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1228
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1229
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 1235
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1237
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1239
    .local v1, "childWidthMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1241
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1242
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 544
    .local v0, "action":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    iget-boolean v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_0

    .line 622
    :goto_0
    return v5

    .line 549
    :cond_0
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 622
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 563
    :pswitch_1
    iget v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mActivePointerId:I

    .line 564
    .local v1, "activePointerId":I
    if-eq v1, v8, :cond_1

    .line 571
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 572
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 573
    .local v3, "y":F
    iget v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mLastMotionY:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v4, v6

    .line 574
    .local v4, "yDiff":I
    iget v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTouchSlop:I

    if-le v4, v6, :cond_1

    .line 576
    iput-boolean v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsBeingDragged:Z

    .line 577
    iput v3, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mLastMotionY:F

    goto :goto_1

    .line 584
    .end local v1    # "activePointerId":I
    .end local v2    # "pointerIndex":I
    .end local v3    # "y":F
    .end local v4    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 585
    .restart local v3    # "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    float-to-int v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->inChild(II)Z

    move-result v7

    if-nez v7, :cond_2

    .line 587
    iput-boolean v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 595
    :cond_2
    iput v3, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mLastMotionY:F

    .line 596
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mActivePointerId:I

    .line 603
    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    iput-boolean v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    .line 610
    .end local v3    # "y":F
    :pswitch_3
    iput-boolean v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsBeingDragged:Z

    .line 611
    iput v8, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mActivePointerId:I

    goto :goto_1

    .line 614
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1505
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsLayoutDirty:Z

    .line 1508
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1512
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1515
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollTo(II)V

    .line 1516
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 423
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 425
    iget-boolean v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 431
    .local v4, "heightMode":I
    if-eqz v4, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 438
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 439
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getMeasuredHeight()I

    move-result v3

    .line 440
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 444
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 445
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    .line 446
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    .line 447
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 449
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScroll(I)I
    .locals 1
    .param p1, "scrollY"    # I

    .prologue
    .line 1748
    const/4 v0, 0x0

    return v0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 1462
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1464
    const/16 p1, 0x82

    .line 1470
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1473
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1483
    :cond_1
    :goto_2
    return v1

    .line 1465
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1467
    const/16 p1, 0x21

    goto :goto_0

    .line 1471
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1478
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1483
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onScrollChanged(IIII)V
    .locals 9
    .param p1, "leftOfVisibleView"    # I
    .param p2, "topOfVisibleView"    # I
    .param p3, "oldLeftOfVisibleView"    # I
    .param p4, "oldTopOfVisibleView"    # I

    .prologue
    const/16 v5, 0x3e8

    const/4 v1, 0x0

    .line 1542
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v7

    .line 1543
    .local v7, "displayHeight":I
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 1544
    .local v8, "paddingTop":I
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v6, v0, v2

    .line 1546
    .local v6, "contentBottom":I
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->isInFlingMode:Z

    if-eqz v0, :cond_3

    .line 1549
    if-lt p2, v8, :cond_0

    sub-int v0, v6, v7

    if-le p2, v0, :cond_3

    .line 1551
    :cond_0
    if-ge p2, v8, :cond_2

    .line 1553
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    sub-int v4, v8, p2

    move v2, p2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1560
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->overScrollerSpringbackTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->post(Ljava/lang/Runnable;)Z

    .line 1561
    iput-boolean v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->isInFlingMode:Z

    .line 1567
    :goto_1
    return-void

    .line 1554
    :cond_2
    sub-int v0, v6, v7

    if-le p2, v0, :cond_1

    .line 1556
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    sub-int v2, v6, v7

    sub-int v4, v2, p2

    move v2, p2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1566
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1521
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1523
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1524
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1537
    :cond_0
    :goto_0
    return-void

    .line 1530
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1532
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1533
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1534
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1535
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1671
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1673
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->overScrollerSpringbackTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1675
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1677
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->overScrollView()Z

    move-result v0

    .line 1685
    :goto_0
    return v0

    .line 1680
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1682
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->overScrollView()Z

    move-result v0

    goto :goto_0

    .line 1685
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v7

    if-eqz v7, :cond_1

    .line 727
    :cond_0
    :goto_0
    return v6

    .line 637
    :cond_1
    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_2

    .line 639
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 641
    :cond_2
    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 645
    .local v0, "action":I
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 727
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v6, 0x1

    goto :goto_0

    .line 649
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 650
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    float-to-int v8, v5

    invoke-virtual {p0, v7, v8}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->inChild(II)Z

    move-result v7

    iput-boolean v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_0

    .line 659
    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    .line 661
    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 665
    :cond_4
    iput v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mLastMotionY:F

    .line 666
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mActivePointerId:I

    goto :goto_1

    .line 670
    .end local v5    # "y":F
    :pswitch_2
    iget-boolean v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    .line 673
    iget v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 674
    .local v1, "activePointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 675
    .restart local v5    # "y":F
    iget v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mLastMotionY:F

    sub-float/2addr v7, v5

    float-to-int v2, v7

    .line 676
    .local v2, "deltaY":I
    iput v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mLastMotionY:F

    .line 678
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->isOverScrolled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 682
    div-int/lit8 v7, v2, 0x2

    invoke-virtual {p0, v6, v7}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollBy(II)V

    goto :goto_1

    .line 685
    :cond_5
    invoke-virtual {p0, v6, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollBy(II)V

    goto :goto_1

    .line 690
    .end local v1    # "activePointerIndex":I
    .end local v2    # "deltaY":I
    .end local v5    # "y":F
    :pswitch_3
    iget-boolean v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    .line 692
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 693
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v7, 0x3e8

    iget v8, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 694
    iget v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mActivePointerId:I

    invoke-virtual {v4, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    float-to-int v3, v7

    .line 696
    .local v3, "initialVelocity":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mMinimumVelocity:I

    if-le v7, v8, :cond_6

    .line 698
    neg-int v7, v3

    invoke-virtual {p0, v7}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->fling(I)V

    .line 701
    :cond_6
    iput v9, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mActivePointerId:I

    .line 702
    iput-boolean v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsBeingDragged:Z

    .line 704
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3

    .line 706
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 707
    iput-object v10, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 712
    .end local v3    # "initialVelocity":I
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    iget-boolean v7, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 714
    iput v9, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mActivePointerId:I

    .line 715
    iput-boolean v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsBeingDragged:Z

    .line 716
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3

    .line 718
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 719
    iput-object v10, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 724
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 645
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 906
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 907
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v2

    .line 909
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 911
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 912
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v0

    .line 913
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 915
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 916
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 918
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 929
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 931
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 906
    goto :goto_0

    .line 923
    .restart local v1    # "down":Z
    .restart local v2    # "height":I
    :cond_2
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 924
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 926
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1434
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1436
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1438
    invoke-direct {p0, p2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1446
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1447
    return-void

    .line 1443
    :cond_1
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1490
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1492
    invoke-direct {p0, p2, p3}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mIsLayoutDirty:Z

    .line 1499
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1500
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1631
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1632
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->clamp(III)I

    move-result p1

    .line 1633
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->clamp(III)I

    move-result p2

    .line 1634
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollX()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 1636
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1639
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 396
    iput-boolean p1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mFillViewport:Z

    .line 397
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->requestLayout()V

    .line 399
    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mSmoothScrollingEnabled:Z

    .line 418
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1141
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1146
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mLastScroll:J

    sub-long v2, v6, v8

    .line 1147
    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 1149
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getPaddingTop()I

    move-result v7

    sub-int v1, v6, v7

    .line 1150
    .local v1, "height":I
    invoke-virtual {p0, v10}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1151
    .local v0, "bottom":I
    sub-int v6, v0, v1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1152
    .local v4, "maxY":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v5

    .line 1153
    .local v5, "scrollY":I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1155
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1156
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->invalidate()V

    .line 1165
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mLastScroll:J

    goto :goto_0

    .line 1159
    :cond_1
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1161
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1163
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1188
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->smoothScrollBy(II)V

    .line 1189
    return-void
.end method

.method public final smoothScrollToBottom()V
    .locals 3

    .prologue
    .line 1175
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->smoothScrollTo(II)V

    .line 1176
    return-void
.end method

.method public final smoothScrollToTop()V
    .locals 2

    .prologue
    .line 1170
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->smoothScrollTo(II)V

    .line 1171
    return-void
.end method
