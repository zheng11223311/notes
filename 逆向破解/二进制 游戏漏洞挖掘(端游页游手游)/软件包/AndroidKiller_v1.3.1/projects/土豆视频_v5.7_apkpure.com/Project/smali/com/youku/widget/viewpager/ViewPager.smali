.class public Lcom/youku/widget/viewpager/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/viewpager/ViewPager$DataSetObserver;,
        Lcom/youku/widget/viewpager/ViewPager$SavedState;,
        Lcom/youku/widget/viewpager/ViewPager$SimpleOnPageChangeListener;,
        Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;,
        Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/youku/widget/viewpager/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private DEFAULT_OFFSCREEN_PAGES:I

.field private isstartAnimation:Z

.field private mActivePointerId:I

.field private mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

.field private mBaseLineFlingVelocity:F

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCurItem:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFlingVelocityInfluence:F

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/widget/viewpager/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/youku/widget/viewpager/ViewPager$1;

    invoke-direct {v0}, Lcom/youku/widget/viewpager/ViewPager$1;-><init>()V

    sput-object v0, Lcom/youku/widget/viewpager/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 99
    new-instance v0, Lcom/youku/widget/viewpager/ViewPager$2;

    invoke-direct {v0}, Lcom/youku/widget/viewpager/ViewPager$2;-><init>()V

    sput-object v0, Lcom/youku/widget/viewpager/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 260
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 78
    iput v1, p0, Lcom/youku/widget/viewpager/ViewPager;->DEFAULT_OFFSCREEN_PAGES:I

    .line 84
    iput-boolean v1, p0, Lcom/youku/widget/viewpager/ViewPager;->isstartAnimation:Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 112
    iput v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredCurItem:I

    .line 113
    iput-object v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 114
    iput-object v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 128
    iget v0, p0, Lcom/youku/widget/viewpager/ViewPager;->DEFAULT_OFFSCREEN_PAGES:I

    iput v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 143
    iput v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    .line 165
    iput-boolean v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mFirstLayout:Z

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mScrollState:I

    .line 261
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->initViewPager()V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 265
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput v1, p0, Lcom/youku/widget/viewpager/ViewPager;->DEFAULT_OFFSCREEN_PAGES:I

    .line 84
    iput-boolean v1, p0, Lcom/youku/widget/viewpager/ViewPager;->isstartAnimation:Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 112
    iput v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredCurItem:I

    .line 113
    iput-object v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 114
    iput-object v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 128
    iget v0, p0, Lcom/youku/widget/viewpager/ViewPager;->DEFAULT_OFFSCREEN_PAGES:I

    iput v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 143
    iput v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    .line 165
    iput-boolean v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mFirstLayout:Z

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mScrollState:I

    .line 266
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->initViewPager()V

    .line 267
    return-void
.end method

.method private completeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1058
    iget-boolean v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mScrolling:Z

    .line 1059
    .local v2, "needPopulate":Z
    if-eqz v2, :cond_2

    .line 1061
    invoke-direct {p0, v8}, Lcom/youku/widget/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1062
    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1063
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollX()I

    move-result v3

    .line 1064
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollY()I

    move-result v4

    .line 1065
    .local v4, "oldY":I
    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1066
    .local v5, "x":I
    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1067
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1068
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/youku/widget/viewpager/ViewPager;->scrollTo(II)V

    .line 1070
    :cond_1
    invoke-direct {p0, v8}, Lcom/youku/widget/viewpager/ViewPager;->setScrollState(I)V

    .line 1072
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    iput-boolean v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mPopulatePending:Z

    .line 1073
    iput-boolean v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mScrolling:Z

    .line 1074
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 1075
    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    .line 1076
    .local v1, "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    iget-boolean v7, v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v7, :cond_3

    .line 1077
    const/4 v2, 0x1

    .line 1078
    iput-boolean v8, v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->scrolling:Z

    .line 1074
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1081
    .end local v1    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    :cond_4
    if-eqz v2, :cond_5

    .line 1082
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->populate()V

    .line 1084
    :cond_5
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1596
    iput-boolean v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 1597
    iput-boolean v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mIsUnableToDrag:Z

    .line 1599
    iget-object v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1603
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1580
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1581
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1582
    .local v1, "pointerId":I
    iget v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1585
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1586
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    .line 1587
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    .line 1589
    iget-object v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1590
    iget-object v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1593
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1585
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    const/4 v2, 0x0

    .line 965
    add-int v10, p1, p3

    .line 966
    .local v10, "widthWithMargin":I
    if-lez p2, :cond_1

    .line 967
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollX()I

    move-result v7

    .line 968
    .local v7, "oldScrollPos":I
    add-int v8, p2, p4

    .line 969
    .local v8, "oldwwm":I
    div-int v6, v7, v8

    .line 970
    .local v6, "oldScrollItem":I
    rem-int v0, v7, v8

    int-to-float v0, v0

    int-to-float v3, v8

    div-float v9, v0, v3

    .line 971
    .local v9, "scrollOffset":F
    int-to-float v0, v6

    add-float/2addr v0, v9

    int-to-float v3, v10

    mul-float/2addr v0, v3

    float-to-int v1, v0

    .line 972
    .local v1, "scrollPos":I
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/youku/widget/viewpager/ViewPager;->scrollTo(II)V

    .line 973
    iget-object v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 978
    .local v5, "newDuration":I
    iget-object v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    mul-int/2addr v3, v10

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 988
    .end local v5    # "newDuration":I
    .end local v6    # "oldScrollItem":I
    .end local v7    # "oldScrollPos":I
    .end local v8    # "oldwwm":I
    .end local v9    # "scrollOffset":F
    :cond_0
    :goto_0
    return-void

    .line 982
    .end local v1    # "scrollPos":I
    :cond_1
    iget v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    mul-int v1, v0, v10

    .line 983
    .restart local v1    # "scrollPos":I
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 984
    invoke-direct {p0}, Lcom/youku/widget/viewpager/ViewPager;->completeScroll()V

    .line 985
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/youku/widget/viewpager/ViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 289
    iget v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iput p1, p0, Lcom/youku/widget/viewpager/ViewPager;->mScrollState:I

    .line 294
    iget-object v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1606
    iget-boolean v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1607
    iput-boolean p1, p0, Lcom/youku/widget/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    .line 1618
    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1768
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1770
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 1772
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 1773
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1774
    invoke-virtual {p0, v3}, Lcom/youku/widget/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1775
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1776
    invoke-virtual {p0, v0}, Lcom/youku/widget/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    move-result-object v4

    .line 1777
    .local v4, "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 1778
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1773
    .end local v4    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1789
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 1794
    :cond_2
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1805
    :cond_3
    :goto_1
    return-void

    .line 1797
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1801
    :cond_5
    if-eqz p1, :cond_3

    .line 1802
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 617
    new-instance v0, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;-><init>()V

    .line 618
    .local v0, "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    iput p1, v0, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    .line 619
    iget-object v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/youku/widget/viewpager/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 620
    if-gez p2, :cond_0

    .line 621
    iget-object v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1815
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1816
    invoke-virtual {p0, v1}, Lcom/youku/widget/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1817
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1818
    invoke-virtual {p0, v0}, Lcom/youku/widget/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    move-result-object v2

    .line 1819
    .local v2, "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 1820
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1815
    .end local v2    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1824
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 875
    iget-boolean v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {p0, p1, p2, p3}, Lcom/youku/widget/viewpager/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 877
    iget v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mChildWidthMeasureSpec:I

    iget v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 889
    :goto_0
    return-void

    .line 879
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 1702
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1703
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1704
    const/4 v0, 0x0

    .line 1706
    :cond_0
    const/4 v1, 0x0

    .line 1708
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1710
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_6

    .line 1711
    if-ne p1, v4, :cond_4

    .line 1715
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 1717
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->pageLeft()Z

    move-result v1

    .line 1739
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1740
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/youku/widget/viewpager/ViewPager;->playSoundEffect(I)V

    .line 1743
    :cond_2
    return v1

    .line 1719
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1721
    :cond_4
    if-ne p1, v5, :cond_1

    .line 1725
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 1727
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_0

    .line 1729
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1732
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v3, 0x1

    if-ne p1, v3, :cond_8

    .line 1734
    :cond_7
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_0

    .line 1735
    :cond_8
    if-eq p1, v5, :cond_9

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1737
    :cond_9
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1466
    iget-boolean v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 1483
    :goto_0
    return v4

    .line 1469
    :cond_0
    iput-boolean v9, p0, Lcom/youku/widget/viewpager/ViewPager;->mFakeDragging:Z

    .line 1470
    invoke-direct {p0, v9}, Lcom/youku/widget/viewpager/ViewPager;->setScrollState(I)V

    .line 1471
    iput v5, p0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    iput v5, p0, Lcom/youku/widget/viewpager/ViewPager;->mInitialMotionX:F

    .line 1472
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1473
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1477
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 1478
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1480
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1481
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1482
    iput-wide v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 1483
    goto :goto_0

    .line 1475
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 1637
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 1638
    check-cast v7, Landroid/view/ViewGroup;

    .line 1639
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1640
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1641
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1644
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 1647
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1648
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/youku/widget/viewpager/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    const/4 v0, 0x1

    .line 1660
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 1644
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1660
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 10

    .prologue
    .line 1025
    iget-object v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1026
    iget-object v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1029
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollX()I

    move-result v2

    .line 1030
    .local v2, "oldX":I
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollY()I

    move-result v3

    .line 1031
    .local v3, "oldY":I
    iget-object v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 1032
    .local v6, "x":I
    iget-object v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 1034
    .local v7, "y":I
    if-ne v2, v6, :cond_0

    if-eq v3, v7, :cond_1

    .line 1035
    :cond_0
    invoke-virtual {p0, v6, v7}, Lcom/youku/widget/viewpager/ViewPager;->scrollTo(II)V

    .line 1038
    :cond_1
    iget-object v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v8, :cond_2

    .line 1039
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    add-int v5, v8, v9

    .line 1040
    .local v5, "widthWithMargin":I
    div-int v4, v6, v5

    .line 1041
    .local v4, "position":I
    rem-int v1, v6, v5

    .line 1042
    .local v1, "offsetPixels":I
    int-to-float v8, v1

    int-to-float v9, v5

    div-float v0, v8, v9

    .line 1043
    .local v0, "offset":F
    iget-object v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    invoke-interface {v8, v4, v0, v1}, Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1048
    .end local v0    # "offset":F
    .end local v1    # "offsetPixels":I
    .end local v4    # "position":I
    .end local v5    # "widthWithMargin":I
    :cond_2
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->invalidate()V

    .line 1055
    .end local v2    # "oldX":I
    .end local v3    # "oldY":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :goto_0
    return-void

    .line 1054
    :cond_3
    invoke-direct {p0}, Lcom/youku/widget/viewpager/ViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 631
    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v8}, Lcom/youku/widget/viewpager/PagerAdapter;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    move v2, v5

    .line 633
    .local v2, "needPopulate":Z
    :goto_0
    const/4 v3, -0x1

    .line 635
    .local v3, "newCurrItem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 636
    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    .line 637
    .local v1, "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    iget-object v8, v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/youku/widget/viewpager/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    .line 639
    .local v4, "newPos":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 635
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    .end local v2    # "needPopulate":Z
    .end local v3    # "newCurrItem":I
    .end local v4    # "newPos":I
    :cond_1
    move v2, v6

    .line 631
    goto :goto_0

    .line 643
    .restart local v0    # "i":I
    .restart local v1    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    .restart local v2    # "needPopulate":Z
    .restart local v3    # "newCurrItem":I
    .restart local v4    # "newPos":I
    :cond_2
    const/4 v7, -0x2

    if-ne v4, v7, :cond_3

    .line 644
    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 645
    add-int/lit8 v0, v0, -0x1

    .line 646
    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    iget v8, v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v9, v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, Lcom/youku/widget/viewpager/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 647
    const/4 v2, 0x1

    .line 649
    iget v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    iget v8, v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v7, v8, :cond_0

    .line 651
    iget v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    iget-object v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v8}, Lcom/youku/widget/viewpager/PagerAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .line 657
    :cond_3
    iget v7, v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    if-eq v7, v4, :cond_0

    .line 658
    iget v7, v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_4

    .line 660
    move v3, v4

    .line 663
    :cond_4
    iput v4, v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    .line 664
    const/4 v2, 0x1

    goto :goto_2

    .line 668
    .end local v1    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    .end local v4    # "newPos":I
    :cond_5
    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v8, Lcom/youku/widget/viewpager/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 670
    if-ltz v3, :cond_6

    .line 672
    invoke-virtual {p0, v3, v6, v5}, Lcom/youku/widget/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 673
    const/4 v2, 0x1

    .line 675
    :cond_6
    if-eqz v2, :cond_7

    .line 676
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->populate()V

    .line 677
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->requestLayout()V

    .line 679
    :cond_7
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1666
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/youku/widget/viewpager/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1867
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getChildCount()I

    move-result v1

    .line 1868
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1869
    invoke-virtual {p0, v2}, Lcom/youku/widget/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1870
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1871
    invoke-virtual {p0, v0}, Lcom/youku/widget/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    move-result-object v3

    .line 1872
    .local v3, "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1874
    const/4 v4, 0x1

    .line 1879
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    :goto_1
    return v4

    .line 1868
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1879
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 548
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 549
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 550
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x1

    .line 1380
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1381
    const/4 v2, 0x0

    .line 1383
    .local v2, "needsInvalidate":Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v3

    .line 1384
    .local v3, "overScrollMode":I
    if-eqz v3, :cond_0

    if-ne v3, v1, :cond_5

    iget-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v6}, Lcom/youku/widget/viewpager/PagerAdapter;->getCount()I

    move-result v6

    if-le v6, v1, :cond_5

    .line 1387
    :cond_0
    iget-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1388
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1389
    .local v4, "restoreCount":I
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1392
    .local v0, "height":I
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1393
    neg-int v6, v0

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1394
    iget-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getWidth()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1395
    iget-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1396
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1398
    .end local v0    # "height":I
    .end local v4    # "restoreCount":I
    :cond_1
    iget-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1399
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1400
    .restart local v4    # "restoreCount":I
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getWidth()I

    move-result v5

    .line 1401
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1403
    .restart local v0    # "height":I
    iget-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v6}, Lcom/youku/widget/viewpager/PagerAdapter;->getCount()I

    move-result v1

    .line 1406
    .local v1, "itemCount":I
    :cond_2
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1407
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v7, v1

    iget v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    add-int/2addr v8, v5

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1409
    iget-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, v0, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1410
    iget-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1411
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1418
    .end local v0    # "height":I
    .end local v1    # "itemCount":I
    .end local v4    # "restoreCount":I
    .end local v5    # "width":I
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 1420
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->invalidate()V

    .line 1422
    :cond_4
    return-void

    .line 1414
    :cond_5
    iget-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1415
    iget-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 533
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 534
    iget-object v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 535
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 538
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1493
    iget-boolean v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 1494
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1498
    :cond_0
    iget-object v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1499
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    iget v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1500
    iget v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    float-to-int v0, v2

    .line 1502
    .local v0, "initialVelocity":I
    iput-boolean v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mPopulatePending:Z

    .line 1503
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mMinimumVelocity:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mInitialMotionX:F

    iget v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 1505
    :cond_1
    iget v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    iget v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mInitialMotionX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1506
    iget v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4, v4}, Lcom/youku/widget/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1513
    :goto_0
    invoke-direct {p0}, Lcom/youku/widget/viewpager/ViewPager;->endDrag()V

    .line 1515
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mFakeDragging:Z

    .line 1516
    return-void

    .line 1508
    :cond_2
    iget v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v4, v4}, Lcom/youku/widget/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1511
    :cond_3
    iget v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {p0, v2, v4, v4}, Lcom/youku/widget/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1679
    const/4 v0, 0x0

    .line 1680
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1681
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1698
    :cond_0
    :goto_0
    return v0

    .line 1683
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/youku/widget/viewpager/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 1684
    goto :goto_0

    .line 1686
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/youku/widget/viewpager/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 1687
    goto :goto_0

    .line 1689
    :sswitch_2
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1690
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/youku/widget/viewpager/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1691
    :cond_1
    invoke-static {p1, v2}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1693
    invoke-virtual {p0, v2}, Lcom/youku/widget/viewpager/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1681
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 19
    .param p1, "xOffset"    # F

    .prologue
    .line 1528
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/widget/viewpager/ViewPager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 1529
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1533
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    .line 1534
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float v16, v2, p1

    .line 1535
    .local v16, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->getWidth()I

    move-result v17

    .line 1536
    .local v17, "width":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    add-int v18, v17, v2

    .line 1538
    .local v18, "widthWithMargin":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v3, v3, -0x1

    mul-int v3, v3, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v11, v2

    .line 1539
    .local v11, "leftBound":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v3}, Lcom/youku/widget/viewpager/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v2, v2, v18

    int-to-float v15, v2

    .line 1541
    .local v15, "rightBound":F
    cmpg-float v2, v16, v11

    if-gez v2, :cond_3

    .line 1542
    move/from16 v16, v11

    .line 1547
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    move/from16 v0, v16

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v16, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    .line 1548
    move/from16 v0, v16

    float-to-int v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/youku/widget/viewpager/ViewPager;->scrollTo(II)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/widget/viewpager/ViewPager;->mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_2

    .line 1550
    move/from16 v0, v16

    float-to-int v2, v0

    div-int v12, v2, v18

    .line 1551
    .local v12, "position":I
    move/from16 v0, v16

    float-to-int v2, v0

    rem-int v14, v2, v18

    .line 1552
    .local v14, "positionOffsetPixels":I
    int-to-float v2, v14

    move/from16 v0, v18

    int-to-float v3, v0

    div-float v13, v2, v3

    .line 1554
    .local v13, "positionOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/widget/viewpager/ViewPager;->mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    invoke-interface {v2, v12, v13, v14}, Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1559
    .end local v12    # "position":I
    .end local v13    # "positionOffset":F
    .end local v14    # "positionOffsetPixels":I
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1560
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/youku/widget/viewpager/ViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1562
    .local v10, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1563
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 1564
    return-void

    .line 1543
    .end local v4    # "time":J
    .end local v10    # "ev":Landroid/view/MotionEvent;
    :cond_3
    cmpl-float v2, v16, v15

    if-lez v2, :cond_1

    .line 1544
    move/from16 v16, v15

    goto :goto_0
.end method

.method public getAdapter()Lcom/youku/widget/viewpager/PagerAdapter;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 903
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 904
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 905
    :cond_0
    const/4 v1, 0x0

    .line 909
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 907
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 909
    :cond_2
    invoke-virtual {p0, p1}, Lcom/youku/widget/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 892
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 893
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    .line 894
    .local v1, "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    iget-object v3, v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/youku/widget/viewpager/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 898
    .end local v1    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 892
    .restart local v1    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    .end local v1    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 5

    .prologue
    .line 270
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/youku/widget/viewpager/ViewPager;->setWillNotDraw(Z)V

    .line 271
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/youku/widget/viewpager/ViewPager;->setDescendantFocusability(I)V

    .line 272
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/youku/widget/viewpager/ViewPager;->setFocusable(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 274
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/youku/widget/viewpager/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 275
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 276
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mTouchSlop:I

    .line 278
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mMinimumVelocity:I

    .line 279
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mMaximumVelocity:I

    .line 280
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 281
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 283
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 284
    .local v2, "density":F
    const v3, 0x451c4000    # 2500.0f

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mBaseLineFlingVelocity:F

    .line 285
    const v3, 0x3ecccccd    # 0.4f

    iput v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mFlingVelocityInfluence:F

    .line 286
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 1576
    iget-boolean v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 914
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mFirstLayout:Z

    .line 916
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1426
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1429
    iget v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1430
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollX()I

    move-result v2

    .line 1431
    .local v2, "scrollX":I
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getWidth()I

    move-result v3

    .line 1432
    .local v3, "width":I
    iget v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    add-int/2addr v4, v3

    rem-int v1, v2, v4

    .line 1433
    .local v1, "offset":I
    if-eqz v1, :cond_0

    .line 1436
    sub-int v4, v2, v1

    add-int v0, v4, v3

    .line 1437
    .local v0, "left":I
    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    add-int/2addr v6, v0

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getHeight()I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1439
    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1442
    .end local v0    # "left":I
    .end local v1    # "offset":I
    .end local v2    # "scrollX":I
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1094
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v7, v1, 0xff

    .line 1097
    .local v7, "action":I
    const/4 v1, 0x3

    if-eq v7, v1, :cond_0

    const/4 v1, 0x1

    if-ne v7, v1, :cond_1

    .line 1102
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 1103
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsUnableToDrag:Z

    .line 1104
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    .line 1105
    const/4 v1, 0x0

    .line 1221
    :goto_0
    return v1

    .line 1110
    :cond_1
    if-eqz v7, :cond_3

    .line 1111
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_2

    .line 1114
    const/4 v1, 0x1

    goto :goto_0

    .line 1116
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_3

    .line 1119
    const/4 v1, 0x0

    goto :goto_0

    .line 1123
    :cond_3
    sparse-switch v7, :sswitch_data_0

    .line 1221
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1135
    :sswitch_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    .line 1136
    .local v8, "activePointerId":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_4

    .line 1142
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 1144
    .local v11, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    .line 1145
    .local v13, "x":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    sub-float v10, v13, v1

    .line 1146
    .local v10, "dx":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 1147
    .local v14, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 1148
    .local v15, "y":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionY:F

    sub-float v1, v15, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1149
    .local v16, "yDiff":F
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollX()I

    move-result v12

    .line 1150
    .local v12, "scrollX":I
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_5

    if-eqz v12, :cond_6

    :cond_5
    const/4 v1, 0x0

    cmpg-float v1, v10, v1

    if-gez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v1}, Lcom/youku/widget/viewpager/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v12, v1, :cond_7

    :cond_6
    const/4 v9, 0x1

    .line 1157
    .local v9, "atEdge":Z
    :goto_2
    const/4 v3, 0x0

    float-to-int v4, v10

    float-to-int v5, v13

    float-to-int v6, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/youku/widget/viewpager/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1160
    move-object/from16 v0, p0

    iput v13, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/youku/widget/viewpager/ViewPager;->mInitialMotionX:F

    .line 1161
    move-object/from16 v0, p0

    iput v15, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionY:F

    .line 1162
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1150
    .end local v9    # "atEdge":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 1164
    .restart local v9    # "atEdge":Z
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v14, v1

    if-lez v1, :cond_9

    cmpl-float v1, v14, v16

    if-lez v1, :cond_9

    .line 1167
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 1168
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/youku/widget/viewpager/ViewPager;->setScrollState(I)V

    .line 1169
    move-object/from16 v0, p0

    iput v13, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    .line 1170
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/youku/widget/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_1

    .line 1172
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v16, v1

    if-lez v1, :cond_4

    .line 1179
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 1190
    .end local v8    # "activePointerId":I
    .end local v9    # "atEdge":Z
    .end local v10    # "dx":F
    .end local v11    # "pointerIndex":I
    .end local v12    # "scrollX":I
    .end local v13    # "x":F
    .end local v14    # "xDiff":F
    .end local v15    # "y":F
    .end local v16    # "yDiff":F
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mInitialMotionX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    .line 1191
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionY:F

    .line 1192
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    .line 1194
    move-object/from16 v0, p0

    iget v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mScrollState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 1196
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 1197
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsUnableToDrag:Z

    .line 1198
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/youku/widget/viewpager/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1200
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->completeScroll()V

    .line 1201
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 1202
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 1213
    :sswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/youku/widget/viewpager/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1123
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 992
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mInLayout:Z

    .line 993
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->populate()V

    .line 994
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mInLayout:Z

    .line 996
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getChildCount()I

    move-result v3

    .line 997
    .local v3, "count":I
    sub-int v7, p4, p2

    .line 999
    .local v7, "width":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1000
    invoke-virtual {p0, v4}, Lcom/youku/widget/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1002
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    invoke-virtual {p0, v0}, Lcom/youku/widget/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    move-result-object v5

    .local v5, "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    if-eqz v5, :cond_0

    .line 1004
    iget v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    add-int/2addr v8, v7

    iget v9, v5, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    mul-int v6, v8, v9

    .line 1005
    .local v6, "loff":I
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getPaddingLeft()I

    move-result v8

    add-int v1, v8, v6

    .line 1006
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getPaddingTop()I

    move-result v2

    .line 1013
    .local v2, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 999
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v5    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    .end local v6    # "loff":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1018
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mFirstLayout:Z

    .line 1019
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 925
    invoke-static {v5, p1}, Lcom/youku/widget/viewpager/ViewPager;->getDefaultSize(II)I

    move-result v3

    invoke-static {v5, p2}, Lcom/youku/widget/viewpager/ViewPager;->getDefaultSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/youku/widget/viewpager/ViewPager;->setMeasuredDimension(II)V

    .line 929
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mChildWidthMeasureSpec:I

    .line 931
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mChildHeightMeasureSpec:I

    .line 936
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mInLayout:Z

    .line 937
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->populate()V

    .line 938
    iput-boolean v5, p0, Lcom/youku/widget/viewpager/ViewPager;->mInLayout:Z

    .line 941
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getChildCount()I

    move-result v2

    .line 942
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 943
    invoke-virtual {p0, v1}, Lcom/youku/widget/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 944
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 948
    iget v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mChildWidthMeasureSpec:I

    iget v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 942
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 951
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1835
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getChildCount()I

    move-result v1

    .line 1836
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 1837
    const/4 v6, 0x0

    .line 1838
    .local v6, "index":I
    const/4 v5, 0x1

    .line 1839
    .local v5, "increment":I
    move v2, v1

    .line 1845
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 1846
    invoke-virtual {p0, v3}, Lcom/youku/widget/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1847
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 1848
    invoke-virtual {p0, v0}, Lcom/youku/widget/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    move-result-object v4

    .line 1849
    .local v4, "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 1850
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1851
    const/4 v7, 0x1

    .line 1856
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    :goto_2
    return v7

    .line 1841
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 1842
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 1843
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 1845
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 1856
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 855
    instance-of v1, p1, Lcom/youku/widget/viewpager/ViewPager$SavedState;

    if-nez v1, :cond_0

    .line 856
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 871
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 860
    check-cast v0, Lcom/youku/widget/viewpager/ViewPager$SavedState;

    .line 861
    .local v0, "ss":Lcom/youku/widget/viewpager/ViewPager$SavedState;
    invoke-virtual {v0}, Lcom/youku/widget/viewpager/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 863
    iget-object v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    if-eqz v1, :cond_1

    .line 864
    iget-object v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    iget-object v2, v0, Lcom/youku/widget/viewpager/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/youku/widget/viewpager/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/youku/widget/viewpager/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 865
    iget v1, v0, Lcom/youku/widget/viewpager/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/youku/widget/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 867
    :cond_1
    iget v1, v0, Lcom/youku/widget/viewpager/ViewPager$SavedState;->position:I

    iput v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredCurItem:I

    .line 868
    iget-object v1, v0, Lcom/youku/widget/viewpager/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 869
    iget-object v1, v0, Lcom/youku/widget/viewpager/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 844
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 845
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/youku/widget/viewpager/ViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/youku/widget/viewpager/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 846
    .local v0, "ss":Lcom/youku/widget/viewpager/ViewPager$SavedState;
    iget v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    iput v2, v0, Lcom/youku/widget/viewpager/ViewPager$SavedState;->position:I

    .line 847
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    if-eqz v2, :cond_0

    .line 848
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v2}, Lcom/youku/widget/viewpager/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/widget/viewpager/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 850
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 955
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 958
    if-eq p1, p3, :cond_0

    .line 959
    iget v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    iget v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/youku/widget/viewpager/ViewPager;->recomputeScrollPosition(IIII)V

    .line 961
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1226
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mFakeDragging:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 1230
    const/16 v29, 0x1

    .line 1375
    :goto_0
    return v29

    .line 1233
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v29

    if-nez v29, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v29

    if-eqz v29, :cond_1

    .line 1237
    const/16 v29, 0x0

    goto :goto_0

    .line 1240
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/youku/widget/viewpager/PagerAdapter;->getCount()I

    move-result v29

    if-nez v29, :cond_3

    .line 1242
    :cond_2
    const/16 v29, 0x0

    goto :goto_0

    .line 1245
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    if-nez v29, :cond_4

    .line 1246
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1248
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1250
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1251
    .local v4, "action":I
    const/4 v12, 0x0

    .line 1253
    .local v12, "needsInvalidate":Z
    and-int/lit16 v0, v4, 0xff

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_0

    .line 1372
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v12, :cond_6

    .line 1373
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->invalidate()V

    .line 1375
    :cond_6
    const/16 v29, 0x1

    goto :goto_0

    .line 1259
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->completeScroll()V

    .line 1262
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mInitialMotionX:F

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    .line 1263
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1267
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsBeingDragged:Z

    move/from16 v29, v0

    if-nez v29, :cond_7

    .line 1268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v16

    .line 1270
    .local v16, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 1271
    .local v25, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    move/from16 v29, v0

    sub-float v29, v25, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v26

    .line 1272
    .local v26, "xDiff":F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v27

    .line 1273
    .local v27, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionY:F

    move/from16 v29, v0

    sub-float v29, v27, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v28

    .line 1277
    .local v28, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mTouchSlop:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v29, v26, v29

    if-lez v29, :cond_7

    cmpl-float v29, v26, v28

    if-lez v29, :cond_7

    .line 1280
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 1281
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    .line 1282
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/youku/widget/viewpager/ViewPager;->setScrollState(I)V

    .line 1283
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/youku/widget/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1286
    .end local v16    # "pointerIndex":I
    .end local v25    # "x":F
    .end local v26    # "xDiff":F
    .end local v27    # "y":F
    .end local v28    # "yDiff":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsBeingDragged:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 1288
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1290
    .local v5, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 1291
    .restart local v25    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    move/from16 v29, v0

    sub-float v7, v29, v25

    .line 1292
    .local v7, "deltaX":F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    .line 1293
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollX()I

    move-result v29

    move/from16 v0, v29

    int-to-float v14, v0

    .line 1294
    .local v14, "oldScrollX":F
    add-float v21, v14, v7

    .line 1295
    .local v21, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->getWidth()I

    move-result v23

    .line 1296
    .local v23, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    move/from16 v29, v0

    add-int v24, v23, v29

    .line 1298
    .local v24, "widthWithMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/youku/widget/viewpager/PagerAdapter;->getCount()I

    move-result v29

    add-int/lit8 v10, v29, -0x1

    .line 1299
    .local v10, "lastItemIndex":I
    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    mul-int v30, v30, v24

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v0, v29

    int-to-float v11, v0

    .line 1301
    .local v11, "leftBound":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v29

    mul-int v29, v29, v24

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1303
    .local v20, "rightBound":F
    cmpg-float v29, v21, v11

    if-gez v29, :cond_a

    .line 1304
    const/16 v29, 0x0

    cmpl-float v29, v11, v29

    if-nez v29, :cond_8

    .line 1305
    move/from16 v0, v21

    neg-float v15, v0

    .line 1306
    .local v15, "over":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v29, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v30, v15, v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v12

    .line 1308
    .end local v15    # "over":F
    :cond_8
    move/from16 v21, v11

    .line 1317
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    move/from16 v29, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v21, v30

    add-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    .line 1318
    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollY()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/viewpager/ViewPager;->scrollTo(II)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    .line 1320
    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v29, v0

    div-int v17, v29, v24

    .line 1321
    .local v17, "position":I
    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v29, v0

    rem-int v19, v29, v24

    .line 1323
    .local v19, "positionOffsetPixels":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v18, v29, v30

    .line 1325
    .local v18, "positionOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto/16 :goto_1

    .line 1309
    .end local v17    # "position":I
    .end local v18    # "positionOffset":F
    .end local v19    # "positionOffsetPixels":I
    :cond_a
    cmpl-float v29, v21, v20

    if-lez v29, :cond_9

    .line 1310
    mul-int v29, v10, v24

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v29, v20, v29

    if-nez v29, :cond_b

    .line 1311
    sub-float v15, v21, v20

    .line 1312
    .restart local v15    # "over":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v29, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v30, v15, v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v12

    .line 1314
    .end local v15    # "over":F
    :cond_b
    move/from16 v21, v20

    goto/16 :goto_2

    .line 1331
    .end local v5    # "activePointerIndex":I
    .end local v7    # "deltaX":F
    .end local v10    # "lastItemIndex":I
    .end local v11    # "leftBound":F
    .end local v14    # "oldScrollX":F
    .end local v20    # "rightBound":F
    .end local v21    # "scrollX":F
    .end local v23    # "width":I
    .end local v24    # "widthWithMargin":I
    .end local v25    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsBeingDragged:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    .line 1333
    .local v22, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v29, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mMaximumVelocity:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1334
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v9, v0

    .line 1336
    .local v9, "initialVelocity":I
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mPopulatePending:Z

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->getWidth()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    move/from16 v30, v0

    add-int v24, v29, v30

    .line 1338
    .restart local v24    # "widthWithMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollX()I

    move-result v21

    .line 1339
    .local v21, "scrollX":I
    div-int v6, v21, v24

    .line 1340
    .local v6, "currentPage":I
    if-lez v9, :cond_c

    move v13, v6

    .line 1342
    .local v13, "nextPage":I
    :goto_3
    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v13, v1, v2, v9}, Lcom/youku/widget/viewpager/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 1344
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    .line 1345
    invoke-direct/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->endDrag()V

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v30

    or-int v12, v29, v30

    .line 1348
    goto/16 :goto_1

    .line 1340
    .end local v13    # "nextPage":I
    :cond_c
    add-int/lit8 v13, v6, 0x1

    goto :goto_3

    .line 1351
    .end local v6    # "currentPage":I
    .end local v9    # "initialVelocity":I
    .end local v21    # "scrollX":I
    .end local v22    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v24    # "widthWithMargin":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mIsBeingDragged:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 1352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    move/from16 v29, v0

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/widget/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1353
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    .line 1354
    invoke-direct/range {p0 .. p0}, Lcom/youku/widget/viewpager/ViewPager;->endDrag()V

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v30

    or-int v12, v29, v30

    goto/16 :goto_1

    .line 1360
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 1361
    .local v8, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 1362
    .restart local v25    # "x":F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    .line 1363
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 1367
    .end local v8    # "index":I
    .end local v25    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/youku/widget/viewpager/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/viewpager/ViewPager;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/widget/viewpager/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1747
    iget v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 1748
    iget v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/youku/widget/viewpager/ViewPager;->setCurrentItem(IZ)V

    .line 1751
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1755
    iget-object v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v2}, Lcom/youku/widget/viewpager/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1756
    iget v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/youku/widget/viewpager/ViewPager;->setCurrentItem(IZ)V

    .line 1759
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 682
    iget-object v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    if-nez v10, :cond_1

    .line 792
    :cond_0
    return-void

    .line 690
    :cond_1
    iget-boolean v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mPopulatePending:Z

    if-nez v10, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 703
    iget-object v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v10, p0}, Lcom/youku/widget/viewpager/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 705
    iget v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 706
    .local v8, "pageLimit":I
    const/4 v10, 0x0

    iget v13, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    sub-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 707
    .local v9, "startPos":I
    iget-object v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v10}, Lcom/youku/widget/viewpager/PagerAdapter;->getCount()I

    move-result v0

    .line 708
    .local v0, "N":I
    add-int/lit8 v10, v0, -0x1

    iget v13, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    add-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 713
    .local v4, "endPos":I
    const/4 v7, -0x1

    .line 714
    .local v7, "lastPos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 715
    iget-object v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    .line 716
    .local v6, "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    iget v10, v6, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    if-lt v10, v9, :cond_2

    iget v10, v6, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    if-le v10, v4, :cond_4

    :cond_2
    iget-boolean v10, v6, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_4

    .line 720
    iget-object v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 721
    add-int/lit8 v5, v5, -0x1

    .line 722
    iget-object v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    iget v13, v6, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v14, v6, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, p0, v13, v14}, Lcom/youku/widget/viewpager/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 739
    :cond_3
    iget v7, v6, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    .line 714
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 723
    :cond_4
    if-ge v7, v4, :cond_3

    iget v10, v6, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    if-le v10, v9, :cond_3

    .line 727
    add-int/lit8 v7, v7, 0x1

    .line 728
    if-ge v7, v9, :cond_5

    .line 729
    move v7, v9

    .line 731
    :cond_5
    :goto_1
    if-gt v7, v4, :cond_3

    iget v10, v6, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    if-ge v7, v10, :cond_3

    .line 734
    invoke-virtual {p0, v7, v5}, Lcom/youku/widget/viewpager/ViewPager;->addNewItem(II)V

    .line 735
    add-int/lit8 v7, v7, 0x1

    .line 736
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 743
    .end local v6    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    :cond_6
    iget-object v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    iget v7, v10, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    .line 745
    :goto_2
    if-ge v7, v4, :cond_9

    .line 746
    add-int/lit8 v7, v7, 0x1

    .line 747
    if-le v7, v9, :cond_8

    .line 748
    :goto_3
    if-gt v7, v4, :cond_9

    .line 751
    invoke-virtual {p0, v7, v12}, Lcom/youku/widget/viewpager/ViewPager;->addNewItem(II)V

    .line 752
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move v7, v12

    .line 743
    goto :goto_2

    :cond_8
    move v7, v9

    .line 747
    goto :goto_3

    .line 763
    :cond_9
    const/4 v2, 0x0

    .line 764
    .local v2, "curItem":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    const/4 v5, 0x0

    :goto_4
    iget-object v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 765
    iget-object v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    iget v10, v10, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    iget v12, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    if-ne v10, v12, :cond_d

    .line 767
    iget-object v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "curItem":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    check-cast v2, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    .line 771
    .restart local v2    # "curItem":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    :cond_a
    iget-object v12, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    iget v13, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    if-eqz v2, :cond_e

    iget-object v10, v2, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v12, p0, v13, v10}, Lcom/youku/widget/viewpager/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 774
    iget-object v10, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v10, p0}, Lcom/youku/widget/viewpager/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 776
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 778
    .local v3, "currentFocused":Landroid/view/View;
    if-eqz v3, :cond_f

    invoke-virtual {p0, v3}, Lcom/youku/widget/viewpager/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    move-result-object v6

    .line 780
    .restart local v6    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    :goto_6
    if-eqz v6, :cond_b

    iget v10, v6, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    if-eq v10, v11, :cond_0

    .line 781
    :cond_b
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 782
    invoke-virtual {p0, v5}, Lcom/youku/widget/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 783
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/youku/widget/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    move-result-object v6

    .line 784
    if-eqz v6, :cond_c

    iget v10, v6, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    if-ne v10, v11, :cond_c

    .line 785
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/view/View;->requestFocus(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 781
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 764
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "currentFocused":Landroid/view/View;
    .end local v6    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    move-object v10, v11

    .line 771
    goto :goto_5

    .restart local v3    # "currentFocused":Landroid/view/View;
    :cond_f
    move-object v6, v11

    .line 778
    goto :goto_6
.end method

.method public setAdapter(Lcom/youku/widget/viewpager/PagerAdapter;)V
    .locals 7
    .param p1, "adapter"    # Lcom/youku/widget/viewpager/PagerAdapter;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 300
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    if-eqz v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v2, v6}, Lcom/youku/widget/viewpager/PagerAdapter;->setDataSetObserver(Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;)V

    .line 302
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v2, p0}, Lcom/youku/widget/viewpager/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    .line 305
    .local v1, "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    iget v3, v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v4, v1, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4}, Lcom/youku/widget/viewpager/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "ii":Lcom/youku/widget/viewpager/ViewPager$ItemInfo;
    :cond_0
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v2, p0}, Lcom/youku/widget/viewpager/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 308
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 309
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->removeAllViews()V

    .line 310
    iput v5, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    .line 311
    invoke-virtual {p0, v5, v5}, Lcom/youku/widget/viewpager/ViewPager;->scrollTo(II)V

    .line 314
    .end local v0    # "i":I
    :cond_1
    iput-object p1, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    .line 315
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    if-eqz v2, :cond_3

    .line 316
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mObserver:Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;

    if-nez v2, :cond_2

    .line 317
    new-instance v2, Lcom/youku/widget/viewpager/ViewPager$DataSetObserver;

    invoke-direct {v2, p0, v6}, Lcom/youku/widget/viewpager/ViewPager$DataSetObserver;-><init>(Lcom/youku/widget/viewpager/ViewPager;Lcom/youku/widget/viewpager/ViewPager$1;)V

    iput-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mObserver:Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;

    .line 319
    :cond_2
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    iget-object v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mObserver:Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/youku/widget/viewpager/PagerAdapter;->setDataSetObserver(Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;)V

    .line 320
    iput-boolean v5, p0, Lcom/youku/widget/viewpager/ViewPager;->mPopulatePending:Z

    .line 321
    iget v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredCurItem:I

    if-ltz v2, :cond_4

    .line 322
    iget-object v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    iget-object v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3, v4}, Lcom/youku/widget/viewpager/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 324
    iget v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredCurItem:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v5, v3}, Lcom/youku/widget/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 325
    const/4 v2, -0x1

    iput v2, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredCurItem:I

    .line 326
    iput-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 327
    iput-object v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 332
    :cond_3
    :goto_1
    return-void

    .line 329
    :cond_4
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->populate()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 347
    iput-boolean v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mPopulatePending:Z

    .line 348
    iget-boolean v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/youku/widget/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 349
    return-void

    :cond_0
    move v0, v1

    .line 348
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mPopulatePending:Z

    .line 362
    invoke-virtual {p0, p1, p2, v0}, Lcom/youku/widget/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 363
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/youku/widget/viewpager/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 371
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 7
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 375
    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v4}, Lcom/youku/widget/viewpager/PagerAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    .line 376
    :cond_0
    invoke-direct {p0, v5}, Lcom/youku/widget/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 379
    :cond_2
    if-nez p3, :cond_3

    iget v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 380
    invoke-direct {p0, v5}, Lcom/youku/widget/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 383
    :cond_3
    if-gez p1, :cond_6

    .line 384
    const/4 p1, 0x0

    .line 388
    :cond_4
    :goto_1
    iget v3, p0, Lcom/youku/widget/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 389
    .local v3, "pageLimit":I
    iget v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    add-int/2addr v4, v3

    if-gt p1, v4, :cond_5

    iget v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    sub-int/2addr v4, v3

    if-ge p1, v4, :cond_7

    .line 393
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 394
    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;

    iput-boolean v1, v4, Lcom/youku/widget/viewpager/ViewPager$ItemInfo;->scrolling:Z

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 385
    .end local v2    # "i":I
    .end local v3    # "pageLimit":I
    :cond_6
    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v4}, Lcom/youku/widget/viewpager/PagerAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_4

    .line 386
    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mAdapter:Lcom/youku/widget/viewpager/PagerAdapter;

    invoke-virtual {v4}, Lcom/youku/widget/viewpager/PagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 p1, v4, -0x1

    goto :goto_1

    .line 397
    .restart local v3    # "pageLimit":I
    :cond_7
    iget v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    if-eq v4, p1, :cond_8

    .line 398
    .local v1, "dispatchSelected":Z
    :goto_3
    iput p1, p0, Lcom/youku/widget/viewpager/ViewPager;->mCurItem:I

    .line 399
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->populate()V

    .line 400
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    add-int/2addr v4, v6

    mul-int v0, v4, p1

    .line 401
    .local v0, "destX":I
    if-eqz p2, :cond_9

    .line 402
    invoke-virtual {p0, v0, v5, p4}, Lcom/youku/widget/viewpager/ViewPager;->smoothScrollTo(III)V

    .line 403
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_1

    .line 404
    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .end local v0    # "destX":I
    .end local v1    # "dispatchSelected":Z
    :cond_8
    move v1, v5

    .line 397
    goto :goto_3

    .line 407
    .restart local v0    # "destX":I
    .restart local v1    # "dispatchSelected":Z
    :cond_9
    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_a

    .line 408
    iget-object v4, p0, Lcom/youku/widget/viewpager/ViewPager;->mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 410
    :cond_a
    invoke-direct {p0}, Lcom/youku/widget/viewpager/ViewPager;->completeScroll()V

    .line 411
    invoke-virtual {p0, v0, v5}, Lcom/youku/widget/viewpager/ViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method public setDEFAULT_OFFSCREEN_PAGES(I)V
    .locals 1
    .param p1, "defultlimit"    # I

    .prologue
    .line 466
    iput p1, p0, Lcom/youku/widget/viewpager/ViewPager;->DEFAULT_OFFSCREEN_PAGES:I

    .line 467
    iget v0, p0, Lcom/youku/widget/viewpager/ViewPager;->DEFAULT_OFFSCREEN_PAGES:I

    iput v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 468
    return-void
.end method

.method public setEnAbleAnimation(Z)V
    .locals 0
    .param p1, "isstart"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/youku/widget/viewpager/ViewPager;->isstartAnimation:Z

    .line 472
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3
    .param p1, "limit"    # I

    .prologue
    .line 454
    iget v0, p0, Lcom/youku/widget/viewpager/ViewPager;->DEFAULT_OFFSCREEN_PAGES:I

    if-ge p1, v0, :cond_0

    .line 455
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/widget/viewpager/ViewPager;->DEFAULT_OFFSCREEN_PAGES:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget p1, p0, Lcom/youku/widget/viewpager/ViewPager;->DEFAULT_OFFSCREEN_PAGES:I

    .line 459
    :cond_0
    iget v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 460
    iput p1, p0, Lcom/youku/widget/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 461
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->populate()V

    .line 463
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/youku/widget/viewpager/ViewPager;->mOnPageChangeListener:Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;

    .line 417
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 484
    iget v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    .line 485
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    .line 487
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getWidth()I

    move-result v1

    .line 488
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/youku/widget/viewpager/ViewPager;->recomputeScrollPosition(IIII)V

    .line 490
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->requestLayout()V

    .line 491
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/widget/viewpager/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/youku/widget/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 510
    if-eqz p1, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->refreshDrawableState()V

    .line 512
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/youku/widget/viewpager/ViewPager;->setWillNotDraw(Z)V

    .line 513
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->invalidate()V

    .line 514
    return-void

    .line 512
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/youku/widget/viewpager/ViewPager;->smoothScrollTo(III)V

    .line 563
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 579
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/youku/widget/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 614
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollX()I

    move-result v2

    .line 583
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getScrollY()I

    move-result v3

    .line 584
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 585
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 586
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/youku/widget/viewpager/ViewPager;->completeScroll()V

    .line 588
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/youku/widget/viewpager/ViewPager;->setScrollState(I)V

    goto :goto_0

    .line 592
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/youku/widget/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 593
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mScrolling:Z

    .line 594
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/youku/widget/viewpager/ViewPager;->setScrollState(I)V

    .line 596
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mPageMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v13, v1, v7

    .line 598
    .local v13, "pageDelta":F
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    .line 600
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 601
    if-lez p3, :cond_2

    .line 602
    int-to-float v1, v6

    int-to-float v7, v6

    move/from16 v0, p3

    int-to-float v8, v0

    iget v9, p0, Lcom/youku/widget/viewpager/ViewPager;->mBaseLineFlingVelocity:F

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    iget v8, p0, Lcom/youku/widget/viewpager/ViewPager;->mFlingVelocityInfluence:F

    mul-float/2addr v7, v8

    add-float/2addr v1, v7

    float-to-int v6, v1

    .line 607
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 608
    iget-boolean v1, p0, Lcom/youku/widget/viewpager/ViewPager;->isstartAnimation:Z

    if-eqz v1, :cond_3

    .line 609
    iget-object v1, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 613
    :goto_2
    invoke-virtual {p0}, Lcom/youku/widget/viewpager/ViewPager;->invalidate()V

    goto :goto_0

    .line 605
    :cond_2
    add-int/lit8 v6, v6, 0x64

    goto :goto_1

    .line 611
    :cond_3
    iget-object v7, p0, Lcom/youku/widget/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v12, 0x0

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 528
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
