.class public Lcom/tudou/guide/VerticalViewPager;
.super Landroid/view/ViewGroup;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/guide/VerticalViewPager$ViewPositionComparator;,
        Lcom/tudou/guide/VerticalViewPager$LayoutParams;,
        Lcom/tudou/guide/VerticalViewPager$PagerObserver;,
        Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;,
        Lcom/tudou/guide/VerticalViewPager$SavedState;,
        Lcom/tudou/guide/VerticalViewPager$Decor;,
        Lcom/tudou/guide/VerticalViewPager$OnAdapterChangeListener;,
        Lcom/tudou/guide/VerticalViewPager$PageTransformer;,
        Lcom/tudou/guide/VerticalViewPager$SimpleOnPageChangeListener;,
        Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;,
        Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/tudou/guide/VerticalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VerticalViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/tudou/guide/VerticalViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/tudou/guide/PagerAdapter;

.field private mAdapterChangeListener:Lcom/tudou/guide/VerticalViewPager$OnAdapterChangeListener;

.field private mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mCalledSuper:Z

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/guide/VerticalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftPageBounds:I

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Lcom/tudou/guide/VerticalViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/tudou/guide/VerticalViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightPageBounds:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSeenPositionMax:I

.field private mSeenPositionMin:I

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Lcom/tudou/guide/VerticalViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/tudou/guide/VerticalViewPager;->LAYOUT_ATTRS:[I

    .line 123
    new-instance v0, Lcom/tudou/guide/VerticalViewPager$1;

    invoke-direct {v0}, Lcom/tudou/guide/VerticalViewPager$1;-><init>()V

    sput-object v0, Lcom/tudou/guide/VerticalViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 130
    new-instance v0, Lcom/tudou/guide/VerticalViewPager$2;

    invoke-direct {v0}, Lcom/tudou/guide/VerticalViewPager$2;-><init>()V

    sput-object v0, Lcom/tudou/guide/VerticalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 229
    new-instance v0, Lcom/tudou/guide/VerticalViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/tudou/guide/VerticalViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/tudou/guide/VerticalViewPager;->sPositionComparator:Lcom/tudou/guide/VerticalViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 350
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/tudou/guide/VerticalViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mTempItem:Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 144
    iput v1, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredCurItem:I

    .line 145
    iput-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 146
    iput-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 158
    const v0, -0x800001

    iput v0, p0, Lcom/tudou/guide/VerticalViewPager;->mFirstOffset:F

    .line 159
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/tudou/guide/VerticalViewPager;->mLastOffset:F

    .line 167
    iput v2, p0, Lcom/tudou/guide/VerticalViewPager;->mOffscreenPageLimit:I

    .line 185
    iput v1, p0, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    .line 214
    iput-boolean v2, p0, Lcom/tudou/guide/VerticalViewPager;->mFirstLayout:Z

    .line 247
    new-instance v0, Lcom/tudou/guide/VerticalViewPager$3;

    invoke-direct {v0, p0}, Lcom/tudou/guide/VerticalViewPager$3;-><init>(Lcom/tudou/guide/VerticalViewPager;)V

    iput-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/guide/VerticalViewPager;->mScrollState:I

    .line 351
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->initViewPager()V

    .line 352
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 355
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/tudou/guide/VerticalViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mTempItem:Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 144
    iput v1, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredCurItem:I

    .line 145
    iput-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 146
    iput-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 158
    const v0, -0x800001

    iput v0, p0, Lcom/tudou/guide/VerticalViewPager;->mFirstOffset:F

    .line 159
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/tudou/guide/VerticalViewPager;->mLastOffset:F

    .line 167
    iput v2, p0, Lcom/tudou/guide/VerticalViewPager;->mOffscreenPageLimit:I

    .line 185
    iput v1, p0, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    .line 214
    iput-boolean v2, p0, Lcom/tudou/guide/VerticalViewPager;->mFirstLayout:Z

    .line 247
    new-instance v0, Lcom/tudou/guide/VerticalViewPager$3;

    invoke-direct {v0, p0}, Lcom/tudou/guide/VerticalViewPager$3;-><init>(Lcom/tudou/guide/VerticalViewPager;)V

    iput-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/guide/VerticalViewPager;->mScrollState:I

    .line 356
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->initViewPager()V

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/guide/VerticalViewPager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/guide/VerticalViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/tudou/guide/VerticalViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/guide/VerticalViewPager;)Lcom/tudou/guide/PagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/guide/VerticalViewPager;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/guide/VerticalViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/guide/VerticalViewPager;

    .prologue
    .line 98
    iget v0, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/tudou/guide/VerticalViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/tudou/guide/VerticalViewPager$ItemInfo;ILcom/tudou/guide/VerticalViewPager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .prologue
    .line 1084
    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v12}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v1

    .line 1085
    .local v1, "N":I
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v2

    .line 1087
    .local v2, "height":I
    if-lez v2, :cond_0

    iget v12, p0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v2

    div-float v7, v12, v13

    .line 1089
    .local v7, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1090
    move-object/from16 v0, p3

    iget v9, v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    .line 1092
    .local v9, "oldCurPosition":I
    iget v12, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_3

    .line 1093
    const/4 v6, 0x0

    .line 1094
    .local v6, "itemIndex":I
    const/4 v4, 0x0

    .line 1095
    .local v4, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v13

    add-float v8, v12, v7

    .line 1096
    .local v8, "offset":F
    add-int/lit8 v10, v9, 0x1

    .line 1097
    .local v10, "pos":I
    :goto_1
    iget v12, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-gt v10, v12, :cond_6

    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_6

    .line 1098
    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    check-cast v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 1099
    .restart local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :goto_2
    iget v12, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-le v10, v12, :cond_1

    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v6, v12, :cond_1

    .line 1100
    add-int/lit8 v6, v6, 0x1

    .line 1101
    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    check-cast v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .restart local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    goto :goto_2

    .line 1087
    .end local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v6    # "itemIndex":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "oldCurPosition":I
    .end local v10    # "pos":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1103
    .restart local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .restart local v6    # "itemIndex":I
    .restart local v7    # "marginOffset":F
    .restart local v8    # "offset":F
    .restart local v9    # "oldCurPosition":I
    .restart local v10    # "pos":I
    :cond_1
    :goto_3
    iget v12, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-ge v10, v12, :cond_2

    .line 1106
    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v12, v10}, Lcom/tudou/guide/PagerAdapter;->getPageHeight(I)F

    move-result v12

    add-float/2addr v12, v7

    add-float/2addr v8, v12

    .line 1107
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1109
    :cond_2
    iput v8, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    .line 1110
    iget v12, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v7

    add-float/2addr v8, v12

    .line 1097
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1112
    .end local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v6    # "itemIndex":I
    .end local v8    # "offset":F
    .end local v10    # "pos":I
    :cond_3
    iget v12, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_6

    .line 1113
    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 1114
    .restart local v6    # "itemIndex":I
    const/4 v4, 0x0

    .line 1115
    .restart local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v8, v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    .line 1116
    .restart local v8    # "offset":F
    add-int/lit8 v10, v9, -0x1

    .line 1117
    .restart local v10    # "pos":I
    :goto_4
    iget v12, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-lt v10, v12, :cond_6

    if-ltz v6, :cond_6

    .line 1118
    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    check-cast v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 1119
    .restart local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :goto_5
    iget v12, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-ge v10, v12, :cond_4

    if-lez v6, :cond_4

    .line 1120
    add-int/lit8 v6, v6, -0x1

    .line 1121
    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    check-cast v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .restart local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    goto :goto_5

    .line 1123
    :cond_4
    :goto_6
    iget v12, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-le v10, v12, :cond_5

    .line 1126
    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v12, v10}, Lcom/tudou/guide/PagerAdapter;->getPageHeight(I)F

    move-result v12

    add-float/2addr v12, v7

    sub-float/2addr v8, v12

    .line 1127
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 1129
    :cond_5
    iget v12, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v7

    sub-float/2addr v8, v12

    .line 1130
    iput v8, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    .line 1117
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 1136
    .end local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v6    # "itemIndex":I
    .end local v8    # "offset":F
    .end local v9    # "oldCurPosition":I
    .end local v10    # "pos":I
    :cond_6
    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1137
    .local v5, "itemCount":I
    iget v8, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    .line 1138
    .restart local v8    # "offset":F
    iget v12, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v12, -0x1

    .line 1139
    .restart local v10    # "pos":I
    iget v12, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Lcom/tudou/guide/VerticalViewPager;->mFirstOffset:F

    .line 1140
    iget v12, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Lcom/tudou/guide/VerticalViewPager;->mLastOffset:F

    .line 1143
    add-int/lit8 v3, p2, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_b

    .line 1144
    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 1145
    .restart local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :goto_a
    iget v12, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-le v10, v12, :cond_9

    .line 1146
    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    add-int/lit8 v11, v10, -0x1

    .end local v10    # "pos":I
    .local v11, "pos":I
    invoke-virtual {v12, v10}, Lcom/tudou/guide/PagerAdapter;->getPageHeight(I)F

    move-result v12

    add-float/2addr v12, v7

    sub-float/2addr v8, v12

    move v10, v11

    .end local v11    # "pos":I
    .restart local v10    # "pos":I
    goto :goto_a

    .line 1139
    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1140
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1148
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_9
    iget v12, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v7

    sub-float/2addr v8, v12

    .line 1149
    iput v8, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    .line 1150
    iget v12, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v8, p0, Lcom/tudou/guide/VerticalViewPager;->mFirstOffset:F

    .line 1143
    :cond_a
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_9

    .line 1152
    .end local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v13

    add-float v8, v12, v7

    .line 1153
    iget v12, p1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v12, 0x1

    .line 1155
    add-int/lit8 v3, p2, 0x1

    :goto_b
    if-ge v3, v5, :cond_e

    .line 1156
    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 1157
    .restart local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :goto_c
    iget v12, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-ge v10, v12, :cond_c

    .line 1158
    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "pos":I
    .restart local v11    # "pos":I
    invoke-virtual {v12, v10}, Lcom/tudou/guide/PagerAdapter;->getPageHeight(I)F

    move-result v12

    add-float/2addr v12, v7

    add-float/2addr v8, v12

    move v10, v11

    .end local v11    # "pos":I
    .restart local v10    # "pos":I
    goto :goto_c

    .line 1160
    :cond_c
    iget v12, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1161
    iget v12, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v8

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/tudou/guide/VerticalViewPager;->mLastOffset:F

    .line 1163
    :cond_d
    iput v8, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    .line 1164
    iget v12, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v7

    add-float/2addr v8, v12

    .line 1155
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1168
    .end local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_e
    return-void
.end method

.method private completeScroll(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1710
    iget v8, p0, Lcom/tudou/guide/VerticalViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v2, 0x1

    .line 1711
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1713
    invoke-direct {p0, v7}, Lcom/tudou/guide/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 1714
    iget-object v8, p0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1715
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollX()I

    move-result v3

    .line 1716
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v4

    .line 1717
    .local v4, "oldY":I
    iget-object v8, p0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1718
    .local v5, "x":I
    iget-object v8, p0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1719
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1720
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/tudou/guide/VerticalViewPager;->scrollTo(II)V

    .line 1723
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v7, p0, Lcom/tudou/guide/VerticalViewPager;->mPopulatePending:Z

    .line 1724
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 1725
    iget-object v8, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 1726
    .local v1, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iget-boolean v8, v1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_2

    .line 1727
    const/4 v2, 0x1

    .line 1728
    iput-boolean v7, v1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->scrolling:Z

    .line 1724
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v2    # "needPopulate":Z
    :cond_3
    move v2, v7

    .line 1710
    goto :goto_0

    .line 1731
    .restart local v0    # "i":I
    .restart local v2    # "needPopulate":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 1732
    if-eqz p1, :cond_6

    .line 1733
    iget-object v7, p0, Lcom/tudou/guide/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1738
    :cond_5
    :goto_2
    return-void

    .line 1735
    :cond_6
    iget-object v7, p0, Lcom/tudou/guide/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 6
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 2115
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/tudou/guide/VerticalViewPager;->mFlingDistance:I

    if-le v3, v4, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/tudou/guide/VerticalViewPager;->mMinimumVelocity:I

    if-le v3, v4, :cond_2

    .line 2116
    if-lez p3, :cond_1

    move v2, p1

    .line 2126
    .local v2, "targetPage":I
    :goto_0
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2127
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 2128
    .local v0, "firstItem":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 2131
    .local v1, "lastItem":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iget v3, v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    iget v4, v1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2134
    .end local v0    # "firstItem":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v1    # "lastItem":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_0
    return v2

    .line 2116
    .end local v2    # "targetPage":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 2117
    :cond_2
    iget v3, p0, Lcom/tudou/guide/VerticalViewPager;->mSeenPositionMin:I

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/tudou/guide/VerticalViewPager;->mSeenPositionMin:I

    if-ge v3, p1, :cond_3

    cmpg-float v3, p2, v5

    if-gez v3, :cond_3

    .line 2118
    add-int/lit8 v2, p1, 0x1

    .restart local v2    # "targetPage":I
    goto :goto_0

    .line 2119
    .end local v2    # "targetPage":I
    :cond_3
    iget v3, p0, Lcom/tudou/guide/VerticalViewPager;->mSeenPositionMax:I

    if-ltz v3, :cond_4

    iget v3, p0, Lcom/tudou/guide/VerticalViewPager;->mSeenPositionMax:I

    add-int/lit8 v4, p1, 0x1

    if-le v3, v4, :cond_4

    cmpl-float v3, p2, v5

    if-ltz v3, :cond_4

    .line 2121
    add-int/lit8 v2, p1, -0x1

    .restart local v2    # "targetPage":I
    goto :goto_0

    .line 2123
    .end local v2    # "targetPage":I
    :cond_4
    int-to-float v3, p1

    add-float/2addr v3, p2

    add-float/2addr v3, v5

    float-to-int v2, v3

    .restart local v2    # "targetPage":I
    goto :goto_0
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1745
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v0

    .line 1746
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1747
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 1749
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1746
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1747
    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1751
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2371
    iput-boolean v0, p0, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    .line 2372
    iput-boolean v0, p0, Lcom/tudou/guide/VerticalViewPager;->mIsUnableToDrag:Z

    .line 2374
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2378
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2521
    if-nez p1, :cond_0

    .line 2522
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2524
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_2

    .line 2525
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2543
    :cond_1
    return-object p1

    .line 2528
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2529
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2530
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2531
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2533
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2534
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2535
    check-cast v0, Landroid/view/ViewGroup;

    .line 2536
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2537
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2538
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2539
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2541
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2542
    goto :goto_0
.end method

.method private infoForCurrentScrollPosition()Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .locals 15

    .prologue
    const/4 v9, 0x0

    .line 2071
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v2

    .line 2072
    .local v2, "height":I
    if-lez v2, :cond_5

    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v2

    div-float v11, v13, v14

    .line 2073
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v2, :cond_0

    iget v13, p0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v2

    div-float v9, v13, v14

    .line 2075
    .local v9, "marginOffset":F
    :cond_0
    const/4 v8, -0x1

    .line 2076
    .local v8, "lastPos":I
    const/4 v7, 0x0

    .line 2077
    .local v7, "lastOffset":F
    const/4 v5, 0x0

    .line 2078
    .local v5, "lastHeight":F
    const/4 v1, 0x1

    .line 2080
    .local v1, "first":Z
    const/4 v6, 0x0

    .line 2081
    .local v6, "lastItem":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v13, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_4

    .line 2082
    iget-object v13, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 2084
    .local v4, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    if-nez v1, :cond_1

    iget v13, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v8, 0x1

    if-eq v13, v14, :cond_1

    .line 2086
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mTempItem:Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 2087
    add-float v13, v7, v5

    add-float/2addr v13, v9

    iput v13, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    .line 2088
    add-int/lit8 v13, v8, 0x1

    iput v13, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    .line 2089
    iget-object v13, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    iget v14, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/tudou/guide/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->widthFactor:F

    .line 2090
    add-int/lit8 v3, v3, -0x1

    .line 2092
    :cond_1
    iget v10, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    .line 2094
    .local v10, "offset":F
    move v12, v10

    .line 2095
    .local v12, "topBound":F
    iget v13, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v13, v10

    add-float v0, v13, v9

    .line 2096
    .local v0, "bottomBound":F
    if-nez v1, :cond_2

    cmpl-float v13, v11, v12

    if-ltz v13, :cond_4

    .line 2097
    :cond_2
    cmpg-float v13, v11, v0

    if-ltz v13, :cond_3

    iget-object v13, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v3, v13, :cond_6

    :cond_3
    move-object v6, v4

    .line 2110
    .end local v0    # "bottomBound":F
    .end local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v6    # "lastItem":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v12    # "topBound":F
    :cond_4
    return-object v6

    .end local v1    # "first":Z
    .end local v3    # "i":I
    .end local v5    # "lastHeight":F
    .end local v7    # "lastOffset":F
    .end local v8    # "lastPos":I
    .end local v9    # "marginOffset":F
    .end local v11    # "scrollOffset":F
    :cond_5
    move v11, v9

    .line 2072
    goto :goto_0

    .line 2103
    .restart local v0    # "bottomBound":F
    .restart local v1    # "first":Z
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .restart local v5    # "lastHeight":F
    .restart local v6    # "lastItem":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .restart local v7    # "lastOffset":F
    .restart local v8    # "lastPos":I
    .restart local v9    # "marginOffset":F
    .restart local v10    # "offset":F
    .restart local v11    # "scrollOffset":F
    .restart local v12    # "topBound":F
    :cond_6
    const/4 v1, 0x0

    .line 2104
    iget v8, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    .line 2105
    move v7, v10

    .line 2106
    iget v5, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    .line 2107
    move-object v6, v4

    .line 2081
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "y"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v2, 0x0

    .line 1741
    iget v0, p0, Lcom/tudou/guide/VerticalViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/tudou/guide/VerticalViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2356
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2357
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2358
    .local v1, "pointerId":I
    iget v3, p0, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2361
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2362
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    .line 2363
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    .line 2364
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2365
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2368
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2361
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .param p1, "ypos"    # I

    .prologue
    const/4 v7, 0x0

    .line 1592
    iget-object v8, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1593
    iput-boolean v7, p0, Lcom/tudou/guide/VerticalViewPager;->mCalledSuper:Z

    .line 1594
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Lcom/tudou/guide/VerticalViewPager;->onPageScrolled(IFI)V

    .line 1595
    iget-boolean v8, p0, Lcom/tudou/guide/VerticalViewPager;->mCalledSuper:Z

    if-nez v8, :cond_2

    .line 1596
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1601
    :cond_0
    invoke-direct {p0}, Lcom/tudou/guide/VerticalViewPager;->infoForCurrentScrollPosition()Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v3

    .line 1602
    .local v3, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v1

    .line 1604
    .local v1, "height":I
    iget v8, p0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    add-int v2, v1, v8

    .line 1606
    .local v2, "heightWithMargin":I
    iget v8, p0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v1

    div-float v4, v8, v9

    .line 1607
    .local v4, "marginOffset":F
    iget v0, v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    .line 1608
    .local v0, "currentPage":I
    int-to-float v8, p1

    int-to-float v9, v1

    div-float/2addr v8, v9

    iget v9, v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v9, v4

    div-float v6, v8, v9

    .line 1610
    .local v6, "pageOffset":F
    int-to-float v8, v2

    mul-float/2addr v8, v6

    float-to-int v5, v8

    .line 1612
    .local v5, "offsetPixels":I
    iput-boolean v7, p0, Lcom/tudou/guide/VerticalViewPager;->mCalledSuper:Z

    .line 1613
    invoke-virtual {p0, v0, v6, v5}, Lcom/tudou/guide/VerticalViewPager;->onPageScrolled(IFI)V

    .line 1614
    iget-boolean v7, p0, Lcom/tudou/guide/VerticalViewPager;->mCalledSuper:Z

    if-nez v7, :cond_1

    .line 1615
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1618
    :cond_1
    const/4 v7, 0x1

    .end local v0    # "currentPage":I
    .end local v1    # "height":I
    .end local v2    # "heightWithMargin":I
    .end local v3    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v4    # "marginOffset":F
    .end local v5    # "offsetPixels":I
    .end local v6    # "pageOffset":F
    :cond_2
    return v7
.end method

.method private performDrag(F)Z
    .locals 17
    .param p1, "y"    # F

    .prologue
    .line 2019
    const/4 v8, 0x0

    .line 2021
    .local v8, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    sub-float v4, v14, p1

    .line 2022
    .local v4, "deltaY":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    .line 2024
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v14

    int-to-float v9, v14

    .line 2025
    .local v9, "oldScrollY":F
    add-float v11, v9, v4

    .line 2026
    .local v11, "scrollY":F
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v6

    .line 2028
    .local v6, "height":I
    int-to-float v14, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tudou/guide/VerticalViewPager;->mFirstOffset:F

    mul-float v13, v14, v15

    .line 2029
    .local v13, "topBound":F
    int-to-float v14, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tudou/guide/VerticalViewPager;->mLastOffset:F

    mul-float v3, v14, v15

    .line 2030
    .local v3, "bottomBound":F
    const/4 v12, 0x1

    .line 2031
    .local v12, "topAbsolute":Z
    const/4 v2, 0x1

    .line 2033
    .local v2, "bottomAbsolute":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 2034
    .local v5, "firstItem":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 2035
    .local v7, "lastItem":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iget v14, v5, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_0

    .line 2036
    const/4 v12, 0x0

    .line 2037
    iget v14, v5, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    int-to-float v15, v6

    mul-float v13, v14, v15

    .line 2039
    :cond_0
    iget v14, v7, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v15}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 2040
    const/4 v2, 0x0

    .line 2041
    iget v14, v7, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    int-to-float v15, v6

    mul-float v3, v14, v15

    .line 2044
    :cond_1
    cmpg-float v14, v11, v13

    if-gez v14, :cond_4

    .line 2045
    if-eqz v12, :cond_2

    .line 2046
    sub-float v10, v13, v11

    .line 2047
    .local v10, "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/guide/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v6

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v8

    .line 2049
    .end local v10    # "over":F
    :cond_2
    move v11, v13

    .line 2059
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    float-to-int v15, v11

    int-to-float v15, v15

    sub-float v15, v11, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    .line 2060
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollX()I

    move-result v14

    float-to-int v15, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/tudou/guide/VerticalViewPager;->scrollTo(II)V

    .line 2061
    float-to-int v14, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/tudou/guide/VerticalViewPager;->pageScrolled(I)Z

    .line 2063
    return v8

    .line 2050
    :cond_4
    cmpl-float v14, v11, v3

    if-lez v14, :cond_3

    .line 2051
    if-eqz v2, :cond_5

    .line 2052
    sub-float v10, v11, v3

    .line 2053
    .restart local v10    # "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/guide/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v6

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v8

    .line 2055
    .end local v10    # "over":F
    :cond_5
    move v11, v3

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 16
    .param p1, "height"    # I
    .param p2, "oldHeight"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1426
    if-lez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1428
    add-int v7, p1, p3

    .line 1429
    .local v7, "heightWithMargin":I
    add-int v9, p2, p4

    .line 1430
    .local v9, "oldHeightWithMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v14

    .line 1431
    .local v14, "ypos":I
    int-to-float v1, v14

    int-to-float v2, v9

    div-float v10, v1, v2

    .line 1432
    .local v10, "pageOffset":F
    int-to-float v1, v7

    mul-float/2addr v1, v10

    float-to-int v3, v1

    .line 1434
    .local v3, "newOffsetPixels":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/tudou/guide/VerticalViewPager;->scrollTo(II)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v6, v1, v2

    .line 1438
    .local v6, "newDuration":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->infoForPosition(I)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v13

    .line 1439
    .local v13, "targetInfo":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v5, v13, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    move/from16 v0, p1

    int-to-float v15, v0

    mul-float/2addr v5, v15

    float-to-int v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1451
    .end local v3    # "newOffsetPixels":I
    .end local v6    # "newDuration":I
    .end local v7    # "heightWithMargin":I
    .end local v9    # "oldHeightWithMargin":I
    .end local v10    # "pageOffset":F
    .end local v13    # "targetInfo":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v14    # "ypos":I
    :cond_0
    :goto_0
    return-void

    .line 1443
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->infoForPosition(I)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v8

    .line 1444
    .local v8, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    if-eqz v8, :cond_2

    iget v1, v8, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tudou/guide/VerticalViewPager;->mLastOffset:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 1445
    .local v11, "scrollOffset":F
    :goto_1
    move/from16 v0, p1

    int-to-float v1, v0

    mul-float/2addr v1, v11

    float-to-int v12, v1

    .line 1446
    .local v12, "scrollPos":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v1

    if-eq v12, v1, :cond_0

    .line 1447
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->completeScroll(Z)V

    .line 1448
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v12}, Lcom/tudou/guide/VerticalViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1444
    .end local v11    # "scrollOffset":F
    .end local v12    # "scrollPos":I
    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 458
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 459
    invoke-virtual {p0, v1}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 460
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    .line 461
    .local v2, "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 462
    invoke-virtual {p0, v1}, Lcom/tudou/guide/VerticalViewPager;->removeViewAt(I)V

    .line 463
    add-int/lit8 v1, v1, -0x1

    .line 458
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v7, 0x0

    .line 543
    invoke-virtual {p0, p1}, Lcom/tudou/guide/VerticalViewPager;->infoForPosition(I)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v0

    .line 544
    .local v0, "curInfo":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 545
    .local v1, "destY":I
    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v2

    .line 547
    .local v2, "height":I
    int-to-float v3, v2

    iget v4, p0, Lcom/tudou/guide/VerticalViewPager;->mFirstOffset:F

    iget v5, v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    iget v6, p0, Lcom/tudou/guide/VerticalViewPager;->mLastOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 550
    .end local v2    # "height":I
    :cond_0
    if-eqz p2, :cond_3

    .line 551
    invoke-virtual {p0, v7, v1, p3}, Lcom/tudou/guide/VerticalViewPager;->smoothScrollTo(III)V

    .line 553
    if-eqz p4, :cond_1

    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mOnPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 554
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mOnPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 556
    :cond_1
    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mInternalPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 557
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mInternalPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 569
    :cond_2
    :goto_0
    return-void

    .line 560
    :cond_3
    if-eqz p4, :cond_4

    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mOnPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    if-eqz v3, :cond_4

    .line 561
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mOnPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 563
    :cond_4
    if-eqz p4, :cond_5

    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mInternalPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 564
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mInternalPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 566
    :cond_5
    invoke-direct {p0, v7}, Lcom/tudou/guide/VerticalViewPager;->completeScroll(Z)V

    .line 567
    invoke-virtual {p0, v7, v1}, Lcom/tudou/guide/VerticalViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x1

    .line 394
    iget v1, p0, Lcom/tudou/guide/VerticalViewPager;->mScrollState:I

    if-ne v1, p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iput p1, p0, Lcom/tudou/guide/VerticalViewPager;->mScrollState:I

    .line 399
    if-ne p1, v0, :cond_2

    .line 400
    const/4 v1, -0x1

    iput v1, p0, Lcom/tudou/guide/VerticalViewPager;->mSeenPositionMax:I

    iput v1, p0, Lcom/tudou/guide/VerticalViewPager;->mSeenPositionMin:I

    .line 402
    :cond_2
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mPageTransformer:Lcom/tudou/guide/VerticalViewPager$PageTransformer;

    if-eqz v1, :cond_3

    .line 404
    if-eqz p1, :cond_4

    :goto_1
    invoke-direct {p0, v0}, Lcom/tudou/guide/VerticalViewPager;->enableLayers(Z)V

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mOnPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mOnPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 404
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2381
    iget-boolean v0, p0, Lcom/tudou/guide/VerticalViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2382
    iput-boolean p1, p0, Lcom/tudou/guide/VerticalViewPager;->mScrollingCacheEnabled:Z

    .line 2393
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
    .line 2567
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2569
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2571
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 2572
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2573
    invoke-virtual {p0, v3}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2574
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2575
    invoke-virtual {p0, v0}, Lcom/tudou/guide/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v4

    .line 2576
    .local v4, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2577
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2572
    .end local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2587
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 2593
    :cond_2
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2604
    :cond_3
    :goto_1
    return-void

    .line 2596
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2600
    :cond_5
    if-eqz p1, :cond_3

    .line 2601
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 818
    new-instance v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/tudou/guide/VerticalViewPager$ItemInfo;-><init>()V

    .line 819
    .local v0, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iput p1, v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    .line 820
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/tudou/guide/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 821
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v1, p1}, Lcom/tudou/guide/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->widthFactor:F

    .line 822
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v1, p1}, Lcom/tudou/guide/PagerAdapter;->getPageHeight(I)F

    move-result v1

    iput v1, v0, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    .line 824
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    :goto_0
    return-object v0

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

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
    .line 2614
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2615
    invoke-virtual {p0, v1}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2616
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2617
    invoke-virtual {p0, v0}, Lcom/tudou/guide/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v2

    .line 2618
    .local v2, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2619
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2614
    .end local v2    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2623
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1255
    invoke-virtual {p0, p3}, Lcom/tudou/guide/VerticalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1256
    invoke-virtual {p0, p3}, Lcom/tudou/guide/VerticalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1258
    check-cast v0, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    .line 1259
    .local v0, "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/tudou/guide/VerticalViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->isDecor:Z

    .line 1260
    iget-boolean v1, p0, Lcom/tudou/guide/VerticalViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1261
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1262
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1264
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->needsMeasure:Z

    .line 1265
    invoke-virtual {p0, p1, p2, p3}, Lcom/tudou/guide/VerticalViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1277
    :goto_0
    return-void

    .line 1267
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 9
    .param p1, "direction"    # I

    .prologue
    const/16 v8, 0x42

    .line 2475
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2476
    .local v2, "currentFocused":Landroid/view/View;
    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    .line 2478
    :cond_0
    const/4 v3, 0x0

    .line 2480
    .local v3, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 2482
    .local v5, "nextFocused":Landroid/view/View;
    if-eqz v5, :cond_6

    if-eq v5, v2, :cond_6

    .line 2483
    const/16 v7, 0x21

    if-ne p1, v7, :cond_4

    .line 2487
    iget-object v7, p0, Lcom/tudou/guide/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v5}, Lcom/tudou/guide/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v6, v7, Landroid/graphics/Rect;->top:I

    .line 2488
    .local v6, "nextUp":I
    iget-object v7, p0, Lcom/tudou/guide/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v2}, Lcom/tudou/guide/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v1, v7, Landroid/graphics/Rect;->top:I

    .line 2490
    .local v1, "currUp":I
    if-eqz v2, :cond_3

    if-lt v6, v1, :cond_3

    .line 2491
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->pageUp()Z

    move-result v3

    .line 2514
    .end local v1    # "currUp":I
    .end local v6    # "nextUp":I
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 2515
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/tudou/guide/VerticalViewPager;->playSoundEffect(I)V

    .line 2517
    :cond_2
    return v3

    .line 2493
    .restart local v1    # "currUp":I
    .restart local v6    # "nextUp":I
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    move-result v3

    goto :goto_0

    .line 2495
    .end local v1    # "currUp":I
    .end local v6    # "nextUp":I
    :cond_4
    if-ne p1, v8, :cond_1

    .line 2499
    iget-object v7, p0, Lcom/tudou/guide/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v5}, Lcom/tudou/guide/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 2500
    .local v4, "nextDown":I
    iget-object v7, p0, Lcom/tudou/guide/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v2}, Lcom/tudou/guide/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 2501
    .local v0, "currDown":I
    if-eqz v2, :cond_5

    if-gt v4, v0, :cond_5

    .line 2502
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->pageDown()Z

    move-result v3

    goto :goto_0

    .line 2504
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    move-result v3

    goto :goto_0

    .line 2507
    .end local v0    # "currDown":I
    .end local v4    # "nextDown":I
    :cond_6
    const/16 v7, 0x11

    if-eq p1, v7, :cond_7

    const/4 v7, 0x1

    if-ne p1, v7, :cond_8

    .line 2509
    :cond_7
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->pageUp()Z

    move-result v3

    goto :goto_0

    .line 2510
    :cond_8
    if-eq p1, v8, :cond_9

    const/4 v7, 0x2

    if-ne p1, v7, :cond_1

    .line 2512
    :cond_9
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->pageDown()Z

    move-result v3

    goto :goto_0
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2243
    iget-boolean v2, p0, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 2259
    :goto_0
    return v4

    .line 2246
    :cond_0
    iput-boolean v9, p0, Lcom/tudou/guide/VerticalViewPager;->mFakeDragging:Z

    .line 2247
    invoke-direct {p0, v9}, Lcom/tudou/guide/VerticalViewPager;->setScrollState(I)V

    .line 2248
    iput v5, p0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    iput v5, p0, Lcom/tudou/guide/VerticalViewPager;->mInitialMotionY:F

    .line 2249
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 2250
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2254
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2255
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2256
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2257
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2258
    iput-wide v0, p0, Lcom/tudou/guide/VerticalViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 2259
    goto :goto_0

    .line 2252
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dy"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2407
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2408
    check-cast v7, Landroid/view/ViewGroup;

    .line 2409
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2410
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2411
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2413
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 2416
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2417
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

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/guide/VerticalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2421
    const/4 v0, 0x1

    .line 2430
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    .end local p1    # "v":Landroid/view/View;
    :goto_1
    return v0

    .line 2413
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2427
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    instance-of v0, p1, Lcom/tudou/guide/ExtendedWebView;

    if-eqz v0, :cond_2

    .line 2428
    check-cast p1, Lcom/tudou/guide/ExtendedWebView;

    .end local p1    # "v":Landroid/view/View;
    neg-int v0, p3

    invoke-virtual {p1, v0}, Lcom/tudou/guide/ExtendedWebView;->canScrollVertical(I)Z

    move-result v0

    goto :goto_1

    .line 2430
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2693
    instance-of v0, p1, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1568
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1569
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollX()I

    move-result v0

    .line 1570
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v1

    .line 1571
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1572
    .local v2, "x":I
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1574
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1575
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/tudou/guide/VerticalViewPager;->scrollTo(II)V

    .line 1576
    invoke-direct {p0, v2}, Lcom/tudou/guide/VerticalViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1577
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1578
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/tudou/guide/VerticalViewPager;->scrollTo(II)V

    .line 1583
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1589
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 1588
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/tudou/guide/VerticalViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/4 v14, 0x0

    const/4 v10, 0x0

    .line 835
    iget-object v11, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v12, p0, Lcom/tudou/guide/VerticalViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x1

    if-ge v11, v12, :cond_1

    iget-object v11, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v12}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v12

    if-ge v11, v12, :cond_1

    move v6, v9

    .line 837
    .local v6, "needPopulate":Z
    :goto_0
    iget v7, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    .line 839
    .local v7, "newCurrItem":I
    const/4 v4, 0x0

    .line 840
    .local v4, "isUpdating":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v11, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_6

    .line 841
    iget-object v11, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 842
    .local v3, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iget-object v11, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    iget-object v12, v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lcom/tudou/guide/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 844
    .local v8, "newPos":I
    const/4 v11, -0x1

    if-ne v8, v11, :cond_2

    .line 840
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v4    # "isUpdating":Z
    .end local v6    # "needPopulate":Z
    .end local v7    # "newCurrItem":I
    .end local v8    # "newPos":I
    :cond_1
    move v6, v10

    .line 835
    goto :goto_0

    .line 848
    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .restart local v4    # "isUpdating":Z
    .restart local v6    # "needPopulate":Z
    .restart local v7    # "newCurrItem":I
    .restart local v8    # "newPos":I
    :cond_2
    const/4 v11, -0x2

    if-ne v8, v11, :cond_4

    .line 849
    iget-object v11, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 850
    add-int/lit8 v2, v2, -0x1

    .line 852
    if-nez v4, :cond_3

    .line 853
    iget-object v11, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v11, p0}, Lcom/tudou/guide/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 854
    const/4 v4, 0x1

    .line 857
    :cond_3
    iget-object v11, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    iget v12, v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    iget-object v13, v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v11, p0, v12, v13}, Lcom/tudou/guide/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 858
    const/4 v6, 0x1

    .line 860
    iget v11, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    iget v12, v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_0

    .line 862
    iget v11, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    iget-object v12, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v12}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 863
    const/4 v6, 0x1

    goto :goto_2

    .line 868
    :cond_4
    iget v11, v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-eq v11, v8, :cond_0

    .line 869
    iget v11, v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    iget v12, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    if-ne v11, v12, :cond_5

    .line 871
    move v7, v8

    .line 874
    :cond_5
    iput v8, v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    .line 875
    const/4 v6, 0x1

    goto :goto_2

    .line 879
    .end local v3    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v8    # "newPos":I
    :cond_6
    if-eqz v4, :cond_7

    .line 880
    iget-object v11, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v11, p0}, Lcom/tudou/guide/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 883
    :cond_7
    iget-object v11, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v12, Lcom/tudou/guide/VerticalViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 885
    if-eqz v6, :cond_a

    .line 887
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v1

    .line 888
    .local v1, "childCount":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_9

    .line 889
    invoke-virtual {p0, v2}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 890
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    .line 891
    .local v5, "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    iget-boolean v11, v5, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_8

    .line 892
    iput v14, v5, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->widthFactor:F

    .line 893
    iput v14, v5, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->heightFactor:F

    .line 888
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 897
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    :cond_9
    invoke-virtual {p0, v7, v10, v9}, Lcom/tudou/guide/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    .line 898
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->requestLayout()V

    .line 900
    .end local v1    # "childCount":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2437
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tudou/guide/VerticalViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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
    .line 2666
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v1

    .line 2667
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2668
    invoke-virtual {p0, v2}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2669
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2670
    invoke-virtual {p0, v0}, Lcom/tudou/guide/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v3

    .line 2671
    .local v3, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2673
    const/4 v4, 0x1

    .line 2678
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :goto_1
    return v4

    .line 2667
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2678
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 750
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 751
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 752
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x1

    .line 2139
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2140
    const/4 v1, 0x0

    .line 2142
    .local v1, "needsInvalidate":Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    .line 2143
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    if-ne v2, v5, :cond_4

    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v4}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v4

    if-le v4, v5, :cond_4

    .line 2146
    :cond_0
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2147
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v0

    .line 2148
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 2150
    .local v3, "width":I
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2152
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 2154
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_1
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2156
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v0

    .line 2157
    .restart local v0    # "height":I
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 2164
    .restart local v3    # "width":I
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2167
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 2175
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2177
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2179
    :cond_3
    return-void

    .line 2171
    :cond_4
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2172
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 738
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 739
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 740
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 743
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2269
    iget-boolean v9, p0, Lcom/tudou/guide/VerticalViewPager;->mFakeDragging:Z

    if-nez v9, :cond_0

    .line 2270
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2273
    :cond_0
    iget-object v8, p0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2274
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lcom/tudou/guide/VerticalViewPager;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2275
    iget v9, p0, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    invoke-static {v8, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v9

    float-to-int v3, v9

    .line 2277
    .local v3, "initialVelocity":I
    iput-boolean v11, p0, Lcom/tudou/guide/VerticalViewPager;->mPopulatePending:Z

    .line 2278
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v1

    .line 2279
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v6

    .line 2280
    .local v6, "scrollY":I
    invoke-direct {p0}, Lcom/tudou/guide/VerticalViewPager;->infoForCurrentScrollPosition()Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v2

    .line 2281
    .local v2, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iget v0, v2, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    .line 2282
    .local v0, "currentPage":I
    int-to-float v9, v6

    int-to-float v10, v1

    div-float/2addr v9, v10

    iget v10, v2, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v2, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    div-float v5, v9, v10

    .line 2283
    .local v5, "pageOffset":F
    iget v9, p0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    iget v10, p0, Lcom/tudou/guide/VerticalViewPager;->mInitialMotionY:F

    sub-float/2addr v9, v10

    float-to-int v7, v9

    .line 2284
    .local v7, "totalDelta":I
    invoke-direct {p0, v0, v5, v3, v7}, Lcom/tudou/guide/VerticalViewPager;->determineTargetPage(IFII)I

    move-result v4

    .line 2286
    .local v4, "nextPage":I
    invoke-virtual {p0, v4, v11, v11, v3}, Lcom/tudou/guide/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    .line 2287
    invoke-direct {p0}, Lcom/tudou/guide/VerticalViewPager;->endDrag()V

    .line 2289
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tudou/guide/VerticalViewPager;->mFakeDragging:Z

    .line 2290
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 2449
    const/4 v0, 0x0

    .line 2450
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2451
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2471
    :cond_0
    :goto_0
    return v0

    .line 2453
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/tudou/guide/VerticalViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2454
    goto :goto_0

    .line 2456
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/tudou/guide/VerticalViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2457
    goto :goto_0

    .line 2459
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2462
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2463
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/tudou/guide/VerticalViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2464
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2465
    invoke-virtual {p0, v3}, Lcom/tudou/guide/VerticalViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2451
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 18
    .param p1, "yOffset"    # F

    .prologue
    .line 2301
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tudou/guide/VerticalViewPager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 2302
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2305
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    .line 2307
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v2

    int-to-float v15, v2

    .line 2308
    .local v15, "oldScrollY":F
    sub-float v16, v15, p1

    .line 2309
    .local v16, "scrollY":F
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v13

    .line 2311
    .local v13, "height":I
    int-to-float v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tudou/guide/VerticalViewPager;->mFirstOffset:F

    mul-float v17, v2, v3

    .line 2312
    .local v17, "topBound":F
    int-to-float v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tudou/guide/VerticalViewPager;->mLastOffset:F

    mul-float v10, v2, v3

    .line 2314
    .local v10, "bottomBound":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 2315
    .local v12, "firstItem":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 2316
    .local v14, "lastItem":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iget v2, v12, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-eqz v2, :cond_1

    .line 2317
    iget v2, v12, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    int-to-float v3, v13

    mul-float v17, v2, v3

    .line 2319
    :cond_1
    iget v2, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v3}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2320
    iget v2, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    int-to-float v3, v13

    mul-float v10, v2, v3

    .line 2323
    :cond_2
    cmpg-float v2, v16, v17

    if-gez v2, :cond_4

    .line 2324
    move/from16 v16, v17

    .line 2330
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    move/from16 v0, v16

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v16, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    .line 2331
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollX()I

    move-result v2

    move/from16 v0, v16

    float-to-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/tudou/guide/VerticalViewPager;->scrollTo(II)V

    .line 2332
    move/from16 v0, v16

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tudou/guide/VerticalViewPager;->pageScrolled(I)Z

    .line 2335
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2336
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/tudou/guide/VerticalViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 2338
    .local v11, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2339
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 2340
    return-void

    .line 2325
    .end local v4    # "time":J
    .end local v11    # "ev":Landroid/view/MotionEvent;
    :cond_4
    cmpl-float v2, v16, v10

    if-lez v2, :cond_3

    .line 2326
    move/from16 v16, v10

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2683
    new-instance v0, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/tudou/guide/VerticalViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2698
    new-instance v0, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/tudou/guide/VerticalViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/tudou/guide/PagerAdapter;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 626
    iget v2, p0, Lcom/tudou/guide/VerticalViewPager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 627
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    iget v1, v2, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->childIndex:I

    .line 628
    .local v1, "result":I
    return v1

    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    .line 626
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/tudou/guide/VerticalViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1291
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1292
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1293
    :cond_0
    const/4 v1, 0x0

    .line 1297
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 1295
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1297
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tudou/guide/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1281
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 1282
    .local v1, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    iget-object v3, v1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/tudou/guide/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1286
    .end local v1    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1280
    .restart local v1    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1286
    .end local v1    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method infoForPosition(I)Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1302
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 1303
    .local v1, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iget v2, v1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1307
    .end local v1    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1301
    .restart local v1    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1307
    .end local v1    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 360
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/tudou/guide/VerticalViewPager;->setWillNotDraw(Z)V

    .line 361
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/tudou/guide/VerticalViewPager;->setDescendantFocusability(I)V

    .line 362
    invoke-virtual {p0, v5}, Lcom/tudou/guide/VerticalViewPager;->setFocusable(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 364
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/tudou/guide/VerticalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    .line 365
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 366
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/tudou/guide/VerticalViewPager;->mTouchSlop:I

    .line 367
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/tudou/guide/VerticalViewPager;->mMinimumVelocity:I

    .line 368
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/tudou/guide/VerticalViewPager;->mMaximumVelocity:I

    .line 370
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 371
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 373
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 374
    .local v2, "density":F
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/tudou/guide/VerticalViewPager;->mFlingDistance:I

    .line 375
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/tudou/guide/VerticalViewPager;->mCloseEnough:I

    .line 376
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/tudou/guide/VerticalViewPager;->mDefaultGutterSize:I

    .line 378
    new-instance v3, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;

    invoke-direct {v3, p0}, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;-><init>(Lcom/tudou/guide/VerticalViewPager;)V

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 380
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    .line 382
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 385
    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2352
    iget-boolean v0, p0, Lcom/tudou/guide/VerticalViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1312
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/guide/VerticalViewPager;->mFirstLayout:Z

    .line 1314
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tudou/guide/VerticalViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 390
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 391
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2183
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2186
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/guide/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    if-eqz v13, :cond_2

    .line 2187
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v12

    .line 2188
    .local v12, "scrollY":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v3

    .line 2190
    .local v3, "height":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v3

    div-float v9, v13, v14

    .line 2191
    .local v9, "marginOffset":F
    const/4 v7, 0x0

    .line 2192
    .local v7, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 2193
    .local v5, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iget v10, v5, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    .line 2194
    .local v10, "offset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2195
    .local v6, "itemCount":I
    iget v2, v5, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    .line 2196
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v6, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    iget v8, v13, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    .line 2197
    .local v8, "lastPos":I
    move v11, v2

    .local v11, "pos":I
    :goto_0
    if-ge v11, v8, :cond_2

    .line 2198
    :goto_1
    iget v13, v5, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-le v11, v13, :cond_0

    if-ge v7, v6, :cond_0

    .line 2199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    check-cast v5, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .restart local v5    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    goto :goto_1

    .line 2203
    :cond_0
    iget v13, v5, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    if-ne v11, v13, :cond_3

    .line 2204
    iget v13, v5, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    iget v14, v5, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v3

    mul-float v1, v13, v14

    .line 2205
    .local v1, "drawAt":F
    iget v13, v5, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    iget v14, v5, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v13, v14

    add-float v10, v13, v9

    .line 2212
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v12

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/guide/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tudou/guide/VerticalViewPager;->mLeftPageBounds:I

    float-to-int v15, v1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mRightPageBounds:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v1

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/guide/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2218
    :cond_1
    add-int v13, v12, v3

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 2223
    .end local v1    # "drawAt":F
    .end local v2    # "firstPos":I
    .end local v3    # "height":I
    .end local v5    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v6    # "itemCount":I
    .end local v7    # "itemIndex":I
    .end local v8    # "lastPos":I
    .end local v9    # "marginOffset":F
    .end local v10    # "offset":F
    .end local v11    # "pos":I
    .end local v12    # "scrollY":I
    :cond_2
    return-void

    .line 2207
    .restart local v2    # "firstPos":I
    .restart local v3    # "height":I
    .restart local v5    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .restart local v6    # "itemCount":I
    .restart local v7    # "itemIndex":I
    .restart local v8    # "lastPos":I
    .restart local v9    # "marginOffset":F
    .restart local v10    # "offset":F
    .restart local v11    # "pos":I
    .restart local v12    # "scrollY":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v13, v11}, Lcom/tudou/guide/PagerAdapter;->getPageHeight(I)F

    move-result v4

    .line 2208
    .local v4, "heightFactor":F
    add-float v13, v10, v4

    int-to-float v14, v3

    mul-float v1, v13, v14

    .line 2209
    .restart local v1    # "drawAt":F
    add-float v13, v4, v9

    add-float/2addr v10, v13

    goto :goto_2

    .line 2197
    .end local v4    # "heightFactor":F
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1761
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v7, v1, 0xff

    .line 1764
    .local v7, "action":I
    const/4 v1, 0x3

    if-eq v7, v1, :cond_0

    const/4 v1, 0x1

    if-ne v7, v1, :cond_2

    .line 1767
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    .line 1768
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager;->mIsUnableToDrag:Z

    .line 1769
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    .line 1770
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    .line 1771
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1772
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1774
    :cond_1
    const/4 v1, 0x0

    .line 1894
    :goto_0
    return v1

    .line 1779
    :cond_2
    if-eqz v7, :cond_4

    .line 1780
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_3

    .line 1782
    const/4 v1, 0x1

    goto :goto_0

    .line 1784
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_4

    .line 1786
    const/4 v1, 0x0

    goto :goto_0

    .line 1790
    :cond_4
    sparse-switch v7, :sswitch_data_0

    .line 1885
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_6

    .line 1886
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1888
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1894
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1801
    :sswitch_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    .line 1802
    .local v8, "activePointerId":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_5

    .line 1807
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 1808
    .local v11, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 1809
    .local v12, "x":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionX:F

    sub-float v9, v12, v1

    .line 1810
    .local v9, "dx":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1811
    .local v13, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v14

    .line 1812
    .local v14, "y":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    sub-float v10, v14, v1

    .line 1813
    .local v10, "dy":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    sub-float v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1816
    .local v15, "yDiff":F
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10}, Lcom/tudou/guide/VerticalViewPager;->isGutterDrag(FF)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v3, 0x0

    float-to-int v4, v10

    float-to-int v5, v12

    float-to-int v6, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tudou/guide/VerticalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1819
    move-object/from16 v0, p0

    iput v14, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tudou/guide/VerticalViewPager;->mInitialMotionY:F

    .line 1820
    move-object/from16 v0, p0

    iput v12, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionX:F

    .line 1821
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager;->mIsUnableToDrag:Z

    .line 1822
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1824
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tudou/guide/VerticalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v15, v1

    if-lez v1, :cond_a

    cmpl-float v1, v15, v13

    if-lez v1, :cond_a

    .line 1826
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    .line 1827
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->setScrollState(I)V

    .line 1828
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tudou/guide/VerticalViewPager;->mInitialMotionY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tudou/guide/VerticalViewPager;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    :goto_2
    move-object/from16 v0, p0

    iput v1, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    .line 1830
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 1841
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_5

    .line 1843
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/tudou/guide/VerticalViewPager;->performDrag(F)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1844
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1828
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tudou/guide/VerticalViewPager;->mInitialMotionY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tudou/guide/VerticalViewPager;->mTouchSlop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_2

    .line 1832
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tudou/guide/VerticalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v13, v1

    if-lez v1, :cond_8

    .line 1838
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 1855
    .end local v8    # "activePointerId":I
    .end local v9    # "dx":F
    .end local v10    # "dy":F
    .end local v11    # "pointerIndex":I
    .end local v12    # "x":F
    .end local v13    # "xDiff":F
    .end local v14    # "y":F
    .end local v15    # "yDiff":F
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/tudou/guide/VerticalViewPager;->mInitialMotionY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    .line 1856
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionX:F

    .line 1857
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    .line 1858
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager;->mIsUnableToDrag:Z

    .line 1860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1861
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tudou/guide/VerticalViewPager;->mScrollState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tudou/guide/VerticalViewPager;->mCloseEnough:I

    if-le v1, v2, :cond_b

    .line 1864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1865
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager;->mPopulatePending:Z

    .line 1866
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->populate()V

    .line 1867
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    .line 1868
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1870
    :cond_b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->completeScroll(Z)V

    .line 1871
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1881
    :sswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/tudou/guide/VerticalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1790
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1457
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/guide/VerticalViewPager;->mInLayout:Z

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->populate()V

    .line 1459
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/guide/VerticalViewPager;->mInLayout:Z

    .line 1461
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v5

    .line 1462
    .local v5, "count":I
    sub-int v20, p4, p2

    .line 1463
    .local v20, "width":I
    sub-int v7, p5, p3

    .line 1464
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingLeft()I

    move-result v15

    .line 1465
    .local v15, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingTop()I

    move-result v17

    .line 1466
    .local v17, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingRight()I

    move-result v16

    .line 1467
    .local v16, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingBottom()I

    move-result v14

    .line 1468
    .local v14, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v18

    .line 1470
    .local v18, "scrollY":I
    const/4 v6, 0x0

    .line 1474
    .local v6, "decorCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v5, :cond_1

    .line 1475
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1476
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 1477
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    .line 1478
    .local v13, "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    const/4 v3, 0x0

    .line 1479
    .local v3, "childLeft":I
    const/4 v4, 0x0

    .line 1480
    .local v4, "childTop":I
    iget-boolean v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 1481
    iget v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v9, v22, 0x7

    .line 1482
    .local v9, "hgrav":I
    iget v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v19, v22, 0x70

    .line 1483
    .local v19, "vgrav":I
    packed-switch v9, :pswitch_data_0

    .line 1485
    :pswitch_0
    move v3, v15

    .line 1500
    :goto_1
    sparse-switch v19, :sswitch_data_0

    .line 1502
    move/from16 v4, v17

    .line 1517
    :goto_2
    add-int v4, v4, v18

    .line 1518
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v22, v22, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v23, v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1521
    add-int/lit8 v6, v6, 0x1

    .line 1474
    .end local v3    # "childLeft":I
    .end local v4    # "childTop":I
    .end local v9    # "hgrav":I
    .end local v13    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    .end local v19    # "vgrav":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1488
    .restart local v3    # "childLeft":I
    .restart local v4    # "childTop":I
    .restart local v9    # "hgrav":I
    .restart local v13    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    .restart local v19    # "vgrav":I
    :pswitch_1
    move v3, v15

    .line 1489
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v15, v15, v22

    .line 1490
    goto :goto_1

    .line 1492
    :pswitch_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    sub-int v22, v20, v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1494
    goto :goto_1

    .line 1496
    :pswitch_3
    sub-int v22, v20, v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    sub-int v3, v22, v23

    .line 1497
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v16, v16, v22

    goto :goto_1

    .line 1505
    :sswitch_0
    move/from16 v4, v17

    .line 1506
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v17, v17, v22

    .line 1507
    goto :goto_2

    .line 1509
    :sswitch_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v22, v7, v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1511
    goto :goto_2

    .line 1513
    :sswitch_2
    sub-int v22, v7, v14

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v4, v22, v23

    .line 1514
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v14, v14, v22

    goto :goto_2

    .line 1527
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v4    # "childTop":I
    .end local v9    # "hgrav":I
    .end local v13    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    .end local v19    # "vgrav":I
    :cond_1
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v5, :cond_4

    .line 1528
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1529
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 1530
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    .line 1532
    .restart local v13    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    iget-boolean v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tudou/guide/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v11

    .local v11, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    if-eqz v11, :cond_3

    .line 1533
    int-to-float v0, v7

    move/from16 v22, v0

    iget v0, v11, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v12, v0

    .line 1535
    .local v12, "loff":I
    move v3, v15

    .line 1537
    .restart local v3    # "childLeft":I
    move/from16 v17, v12

    move v4, v12

    .line 1539
    .restart local v4    # "childTop":I
    iget-boolean v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1542
    const/16 v22, 0x0

    move/from16 v0, v22

    iput-boolean v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->needsMeasure:Z

    .line 1543
    sub-int v22, v20, v15

    sub-int v22, v22, v16

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->widthFactor:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1546
    .local v21, "widthSpec":I
    sub-int v22, v7, v17

    sub-int v22, v22, v14

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1549
    .local v8, "heightSpec":I
    move/from16 v0, v21

    invoke-virtual {v2, v0, v8}, Landroid/view/View;->measure(II)V

    .line 1554
    .end local v8    # "heightSpec":I
    .end local v21    # "widthSpec":I
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v22, v22, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v23, v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1527
    .end local v3    # "childLeft":I
    .end local v4    # "childTop":I
    .end local v11    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v12    # "loff":I
    .end local v13    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1560
    .end local v2    # "child":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iput v15, v0, Lcom/tudou/guide/VerticalViewPager;->mLeftPageBounds:I

    .line 1561
    sub-int v22, v20, v16

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mRightPageBounds:I

    .line 1562
    move-object/from16 v0, p0

    iput v6, v0, Lcom/tudou/guide/VerticalViewPager;->mDecorChildCount:I

    .line 1563
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/guide/VerticalViewPager;->mFirstLayout:Z

    .line 1564
    return-void

    .line 1483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1500
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1326
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->getDefaultSize(II)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->getDefaultSize(II)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/tudou/guide/VerticalViewPager;->setMeasuredDimension(II)V

    .line 1329
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getMeasuredWidth()I

    move-result v16

    .line 1330
    .local v16, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getMeasuredHeight()I

    move-result v15

    .line 1332
    .local v15, "measuredHeight":I
    div-int/lit8 v14, v15, 0xa

    .line 1333
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mDefaultGutterSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mGutterSize:I

    .line 1336
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingLeft()I

    move-result v22

    sub-int v22, v16, v22

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingRight()I

    move-result v23

    sub-int v5, v22, v23

    .line 1337
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingTop()I

    move-result v22

    sub-int v22, v15, v22

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingBottom()I

    move-result v23

    sub-int v4, v22, v23

    .line 1344
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v17

    .line 1345
    .local v17, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v12, v0, :cond_a

    .line 1346
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1347
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 1348
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    .line 1349
    .local v13, "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1350
    iget v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v11, v22, 0x7

    .line 1351
    .local v11, "hgrav":I
    iget v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v18, v22, 0x70

    .line 1352
    .local v18, "vgrav":I
    const/high16 v19, -0x80000000

    .line 1353
    .local v19, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1354
    .local v8, "heightMode":I
    const/16 v22, 0x30

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    const/16 v22, 0x50

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1355
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v22, 0x3

    move/from16 v0, v22

    if-eq v11, v0, :cond_1

    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1357
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1358
    const/high16 v19, 0x40000000    # 2.0f

    .line 1363
    :cond_2
    :goto_3
    move/from16 v20, v5

    .line 1364
    .local v20, "widthSize":I
    move v9, v4

    .line 1365
    .local v9, "heightSize":I
    iget v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->width:I

    move/from16 v22, v0

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 1366
    const/high16 v19, 0x40000000    # 2.0f

    .line 1367
    iget v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->width:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 1368
    iget v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->width:I

    move/from16 v20, v0

    .line 1371
    :cond_3
    iget v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->height:I

    move/from16 v22, v0

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 1372
    const/high16 v8, 0x40000000    # 2.0f

    .line 1373
    iget v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->height:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 1374
    iget v9, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->height:I

    .line 1377
    :cond_4
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1378
    .local v21, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1379
    .local v10, "heightSpec":I
    move/from16 v0, v21

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1381
    if-eqz v7, :cond_9

    .line 1382
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v4, v4, v22

    .line 1345
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    .end local v18    # "vgrav":I
    .end local v19    # "widthMode":I
    .end local v20    # "widthSize":I
    .end local v21    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1354
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    .restart local v18    # "vgrav":I
    .restart local v19    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1355
    .restart local v7    # "consumeVertical":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1359
    .restart local v6    # "consumeHorizontal":Z
    :cond_8
    if-eqz v6, :cond_2

    .line 1360
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 1383
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v20    # "widthSize":I
    .restart local v21    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    .line 1384
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    sub-int v5, v5, v22

    goto :goto_4

    .line 1390
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    .end local v18    # "vgrav":I
    .end local v19    # "widthMode":I
    .end local v20    # "widthSize":I
    .end local v21    # "widthSpec":I
    :cond_a
    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v22

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mChildWidthMeasureSpec:I

    .line 1393
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/guide/VerticalViewPager;->mInLayout:Z

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->populate()V

    .line 1395
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/guide/VerticalViewPager;->mInLayout:Z

    .line 1398
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v17

    .line 1399
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v17

    if-ge v12, v0, :cond_d

    .line 1400
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1401
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    .line 1405
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    .line 1406
    .restart local v13    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 1407
    :cond_b
    int-to-float v0, v4

    move/from16 v22, v0

    iget v0, v13, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->heightFactor:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1409
    .restart local v10    # "heightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mChildWidthMeasureSpec:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1399
    .end local v10    # "heightSpec":I
    .end local v13    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1413
    .end local v3    # "child":Landroid/view/View;
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1635
    move-object/from16 v0, p0

    iget v15, v0, Lcom/tudou/guide/VerticalViewPager;->mDecorChildCount:I

    if-lez v15, :cond_2

    .line 1636
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v12

    .line 1638
    .local v12, "scrollY":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingTop()I

    move-result v11

    .line 1639
    .local v11, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getPaddingBottom()I

    move-result v10

    .line 1641
    .local v10, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v7

    .line 1643
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v4

    .line 1644
    .local v4, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1645
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1646
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    .line 1647
    .local v9, "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_1

    .line 1644
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1649
    :cond_1
    iget v15, v9, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v15, 0x70

    .line 1650
    .local v14, "vgrav":I
    const/4 v6, 0x0

    .line 1652
    .local v6, "childTop":I
    sparse-switch v14, :sswitch_data_0

    .line 1654
    move v6, v11

    .line 1669
    :goto_2
    add-int/2addr v6, v12

    .line 1671
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v5, v6, v15

    .line 1672
    .local v5, "childOffset":I
    if-eqz v5, :cond_0

    .line 1673
    invoke-virtual {v3, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 1657
    .end local v5    # "childOffset":I
    :sswitch_0
    move v6, v11

    .line 1658
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v11, v15

    .line 1659
    goto :goto_2

    .line 1661
    :sswitch_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int v15, v7, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1663
    goto :goto_2

    .line 1665
    :sswitch_2
    sub-int v15, v7, v10

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v6, v15, v16

    .line 1666
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_2

    .line 1678
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v6    # "childTop":I
    .end local v7    # "height":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    .end local v10    # "paddingBottom":I
    .end local v11    # "paddingTop":I
    .end local v12    # "scrollY":I
    .end local v14    # "vgrav":I
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/tudou/guide/VerticalViewPager;->mSeenPositionMin:I

    if-ltz v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tudou/guide/VerticalViewPager;->mSeenPositionMin:I

    move/from16 v0, p1

    if-ge v0, v15, :cond_4

    .line 1679
    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mSeenPositionMin:I

    .line 1681
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/tudou/guide/VerticalViewPager;->mSeenPositionMax:I

    if-ltz v15, :cond_5

    move/from16 v0, p1

    int-to-float v15, v0

    add-float v15, v15, p2

    invoke-static {v15}, Landroid/util/FloatMath;->ceil(F)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mSeenPositionMax:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_6

    .line 1682
    :cond_5
    add-int/lit8 v15, p1, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/tudou/guide/VerticalViewPager;->mSeenPositionMax:I

    .line 1685
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/guide/VerticalViewPager;->mOnPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    if-eqz v15, :cond_7

    .line 1686
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/guide/VerticalViewPager;->mOnPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1688
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/guide/VerticalViewPager;->mInternalPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    if-eqz v15, :cond_8

    .line 1689
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/guide/VerticalViewPager;->mInternalPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1692
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/guide/VerticalViewPager;->mPageTransformer:Lcom/tudou/guide/VerticalViewPager$PageTransformer;

    if-eqz v15, :cond_a

    .line 1693
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v12

    .line 1694
    .restart local v12    # "scrollY":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v4

    .line 1695
    .restart local v4    # "childCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_a

    .line 1696
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1697
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    .line 1699
    .restart local v9    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_9

    .line 1695
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1701
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v15, v12

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 1702
    .local v13, "transformPos":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/guide/VerticalViewPager;->mPageTransformer:Lcom/tudou/guide/VerticalViewPager$PageTransformer;

    invoke-interface {v15, v3, v13}, Lcom/tudou/guide/VerticalViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1706
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    .end local v12    # "scrollY":I
    .end local v13    # "transformPos":F
    :cond_a
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/tudou/guide/VerticalViewPager;->mCalledSuper:Z

    .line 1707
    return-void

    .line 1652
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2634
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v1

    .line 2636
    .local v1, "count":I
    and-int/lit16 v7, p1, 0x82

    if-eqz v7, :cond_0

    .line 2637
    const/4 v6, 0x0

    .line 2638
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2639
    .local v5, "increment":I
    move v2, v1

    .line 2645
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2646
    invoke-virtual {p0, v3}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2647
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2648
    invoke-virtual {p0, v0}, Lcom/tudou/guide/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v4

    .line 2649
    .local v4, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2650
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2651
    const/4 v7, 0x1

    .line 2656
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :goto_2
    return v7

    .line 2641
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2642
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2643
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 2645
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2656
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1235
    instance-of v1, p1, Lcom/tudou/guide/VerticalViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1236
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1251
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1240
    check-cast v0, Lcom/tudou/guide/VerticalViewPager$SavedState;

    .line 1241
    .local v0, "ss":Lcom/tudou/guide/VerticalViewPager$SavedState;
    invoke-virtual {v0}, Lcom/tudou/guide/VerticalViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1243
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1244
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    iget-object v2, v0, Lcom/tudou/guide/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/tudou/guide/VerticalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/tudou/guide/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1245
    iget v1, v0, Lcom/tudou/guide/VerticalViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/tudou/guide/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1247
    :cond_1
    iget v1, v0, Lcom/tudou/guide/VerticalViewPager$SavedState;->position:I

    iput v1, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredCurItem:I

    .line 1248
    iget-object v1, v0, Lcom/tudou/guide/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1249
    iget-object v1, v0, Lcom/tudou/guide/VerticalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1224
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1225
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/tudou/guide/VerticalViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/tudou/guide/VerticalViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1226
    .local v0, "ss":Lcom/tudou/guide/VerticalViewPager$SavedState;
    iget v2, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    iput v2, v0, Lcom/tudou/guide/VerticalViewPager$SavedState;->position:I

    .line 1227
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1228
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v2}, Lcom/tudou/guide/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/guide/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1230
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
    .line 1417
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1420
    if-eq p1, p3, :cond_0

    .line 1421
    iget v0, p0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    iget v1, p0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/tudou/guide/VerticalViewPager;->recomputeScrollPosition(IIII)V

    .line 1423
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1899
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/guide/VerticalViewPager;->mFakeDragging:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1903
    const/16 v23, 0x1

    .line 2015
    :goto_0
    return v23

    .line 1906
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    if-nez v23, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v23

    if-eqz v23, :cond_1

    .line 1909
    const/16 v23, 0x0

    goto :goto_0

    .line 1912
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v23

    if-nez v23, :cond_3

    .line 1914
    :cond_2
    const/16 v23, 0x0

    goto :goto_0

    .line 1917
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 1918
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1920
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1922
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1923
    .local v5, "action":I
    const/4 v12, 0x0

    .line 1925
    .local v12, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 2012
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v12, :cond_6

    .line 2013
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2015
    :cond_6
    const/16 v23, 0x1

    goto :goto_0

    .line 1927
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1928
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/guide/VerticalViewPager;->mPopulatePending:Z

    .line 1929
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->populate()V

    .line 1930
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    .line 1931
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->setScrollState(I)V

    .line 1934
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mInitialMotionY:F

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    .line 1935
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1939
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 1940
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1941
    .local v15, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 1942
    .local v19, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v23, v19, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 1943
    .local v20, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v21

    .line 1944
    .local v21, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    move/from16 v23, v0

    sub-float v23, v21, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .line 1948
    .local v22, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v22, v23

    if-lez v23, :cond_7

    cmpl-float v23, v22, v20

    if-lez v23, :cond_7

    .line 1950
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    .line 1951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mInitialMotionY:F

    move/from16 v23, v0

    sub-float v23, v21, v23

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mInitialMotionY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    :goto_2
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    .line 1953
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->setScrollState(I)V

    .line 1954
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 1958
    .end local v15    # "pointerIndex":I
    .end local v19    # "x":F
    .end local v20    # "xDiff":F
    .end local v21    # "y":F
    .end local v22    # "yDiff":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 1960
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1962
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v21

    .line 1963
    .restart local v21    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->performDrag(F)Z

    move-result v23

    or-int v12, v12, v23

    .line 1964
    goto/16 :goto_1

    .line 1951
    .end local v6    # "activePointerIndex":I
    .restart local v15    # "pointerIndex":I
    .restart local v19    # "x":F
    .restart local v20    # "xDiff":F
    .restart local v22    # "yDiff":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mInitialMotionY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    goto :goto_2

    .line 1967
    .end local v15    # "pointerIndex":I
    .end local v19    # "x":F
    .end local v20    # "xDiff":F
    .end local v21    # "y":F
    .end local v22    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 1968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 1969
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v23, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mMaximumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1970
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v11, v0

    .line 1972
    .local v11, "initialVelocity":I
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/guide/VerticalViewPager;->mPopulatePending:Z

    .line 1973
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v8

    .line 1974
    .local v8, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v16

    .line 1975
    .local v16, "scrollY":I
    invoke-direct/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->infoForCurrentScrollPosition()Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v9

    .line 1976
    .local v9, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iget v7, v9, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    .line 1977
    .local v7, "currentPage":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v8

    move/from16 v24, v0

    div-float v23, v23, v24

    iget v0, v9, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->offset:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    iget v0, v9, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v24, v0

    div-float v14, v23, v24

    .line 1978
    .local v14, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1980
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v21

    .line 1981
    .restart local v21    # "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mInitialMotionX:F

    move/from16 v23, v0

    sub-float v23, v21, v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1982
    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v14, v11, v1}, Lcom/tudou/guide/VerticalViewPager;->determineTargetPage(IFII)I

    move-result v13

    .line 1984
    .local v13, "nextPage":I
    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v13, v1, v2, v11}, Lcom/tudou/guide/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    .line 1986
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    .line 1987
    invoke-direct/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->endDrag()V

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v24

    or-int v12, v23, v24

    .line 1989
    goto/16 :goto_1

    .line 1992
    .end local v6    # "activePointerIndex":I
    .end local v7    # "currentPage":I
    .end local v8    # "height":I
    .end local v9    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v11    # "initialVelocity":I
    .end local v13    # "nextPage":I
    .end local v14    # "pageOffset":F
    .end local v16    # "scrollY":I
    .end local v17    # "totalDelta":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v21    # "y":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/guide/VerticalViewPager;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 1993
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tudou/guide/VerticalViewPager;->scrollToItem(IZIZ)V

    .line 1994
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    .line 1995
    invoke-direct/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->endDrag()V

    .line 1996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v24

    or-int v12, v23, v24

    goto/16 :goto_1

    .line 2000
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v10

    .line 2001
    .local v10, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v21

    .line 2002
    .restart local v21    # "y":F
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    .line 2003
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2007
    .end local v10    # "index":I
    .end local v21    # "y":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/tudou/guide/VerticalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2008
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mLastMotionY:F

    goto/16 :goto_1

    .line 1925
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

.method pageDown()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2555
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v2}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2556
    iget v1, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/tudou/guide/VerticalViewPager;->setCurrentItem(IZ)V

    .line 2559
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageUp()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2547
    iget v1, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2548
    iget v1, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/tudou/guide/VerticalViewPager;->setCurrentItem(IZ)V

    .line 2551
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/tudou/guide/VerticalViewPager;->populate(I)V

    .line 904
    return-void
.end method

.method populate(I)V
    .locals 26
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 907
    const/16 v17, 0x0

    .line 908
    .local v17, "oldCurInfo":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 909
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/tudou/guide/VerticalViewPager;->infoForPosition(I)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v17

    .line 910
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    .line 913
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 1081
    :cond_1
    return-void

    .line 921
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/guide/VerticalViewPager;->mPopulatePending:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 929
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tudou/guide/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mOffscreenPageLimit:I

    move/from16 v18, v0

    .line 936
    .local v18, "pageLimit":I
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move/from16 v24, v0

    sub-int v24, v24, v18

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 937
    .local v21, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v4

    .line 938
    .local v4, "N":I
    add-int/lit8 v23, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move/from16 v24, v0

    add-int v24, v24, v18

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 941
    .local v10, "endPos":I
    const/4 v7, -0x1

    .line 942
    .local v7, "curIndex":I
    const/4 v8, 0x0

    .line 943
    .local v8, "curItem":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_3

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 945
    .local v14, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_b

    .line 946
    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object v8, v14

    .line 951
    .end local v14    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_3
    if-nez v8, :cond_4

    if-lez v4, :cond_4

    .line 952
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Lcom/tudou/guide/VerticalViewPager;->addNewItem(II)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v8

    .line 958
    :cond_4
    if-eqz v8, :cond_7

    .line 959
    const/4 v12, 0x0

    .line 960
    .local v12, "extraHeightLeft":F
    add-int/lit8 v15, v7, -0x1

    .line 961
    .local v15, "itemIndex":I
    if-ltz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-object/from16 v14, v23

    .line 962
    .restart local v14    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :goto_1
    const/high16 v23, 0x40000000    # 2.0f

    iget v0, v8, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v24, v0

    sub-float v22, v23, v24

    .line 964
    .local v22, "topHeightNeeded":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move/from16 v23, v0

    add-int/lit8 v19, v23, -0x1

    .local v19, "pos":I
    :goto_2
    if-ltz v19, :cond_5

    .line 965
    cmpl-float v23, v12, v22

    if-ltz v23, :cond_10

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    .line 966
    if-nez v14, :cond_d

    .line 992
    :cond_5
    iget v11, v8, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    .line 993
    .local v11, "extraHeightBottom":F
    add-int/lit8 v15, v7, 0x1

    .line 994
    const/high16 v23, 0x40000000    # 2.0f

    cmpg-float v23, v11, v23

    if-gez v23, :cond_6

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v15, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-object/from16 v14, v23

    .line 996
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move/from16 v23, v0

    add-int/lit8 v19, v23, 0x1

    :goto_4
    move/from16 v0, v19

    if-ge v0, v4, :cond_6

    .line 997
    const/high16 v23, 0x40000000    # 2.0f

    cmpl-float v23, v11, v23

    if-ltz v23, :cond_18

    move/from16 v0, v19

    if-le v0, v10, :cond_18

    .line 998
    if-nez v14, :cond_15

    .line 1023
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v7, v1}, Lcom/tudou/guide/VerticalViewPager;->calculatePageOffsets(Lcom/tudou/guide/VerticalViewPager$ItemInfo;ILcom/tudou/guide/VerticalViewPager$ItemInfo;)V

    .line 1033
    .end local v11    # "extraHeightBottom":F
    .end local v12    # "extraHeightLeft":F
    .end local v14    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v15    # "itemIndex":I
    .end local v19    # "pos":I
    .end local v22    # "topHeightNeeded":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move/from16 v25, v0

    if-eqz v8, :cond_1c

    iget-object v0, v8, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v23, v0

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/tudou/guide/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tudou/guide/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1039
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mDrawingOrder:I

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    const/16 v20, 0x1

    .line 1040
    .local v20, "sort":Z
    :goto_6
    if-eqz v20, :cond_8

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-nez v23, :cond_1e

    .line 1042
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/guide/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1047
    :cond_8
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v6

    .line 1048
    .local v6, "childCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8
    if-ge v13, v6, :cond_1f

    .line 1049
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1050
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/tudou/guide/VerticalViewPager$LayoutParams;

    .line 1051
    .local v16, "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    move-object/from16 v0, v16

    iput v13, v0, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->childIndex:I

    .line 1052
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->isDecor:Z

    move/from16 v23, v0

    if-nez v23, :cond_9

    move-object/from16 v0, v16

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->heightFactor:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-nez v23, :cond_9

    .line 1054
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tudou/guide/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v14

    .line 1055
    .restart local v14    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    if-eqz v14, :cond_9

    .line 1056
    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->heightFactor:F

    .line 1057
    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tudou/guide/VerticalViewPager$LayoutParams;->position:I

    .line 1060
    .end local v14    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_9
    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 943
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v13    # "i":I
    .end local v16    # "lp":Lcom/tudou/guide/VerticalViewPager$LayoutParams;
    .end local v20    # "sort":Z
    .restart local v14    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 961
    .end local v14    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .restart local v12    # "extraHeightLeft":F
    .restart local v15    # "itemIndex":I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 969
    .restart local v14    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .restart local v19    # "pos":I
    .restart local v22    # "topHeightNeeded":F
    :cond_d
    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    iget-boolean v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->scrolling:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    move-object/from16 v23, v0

    iget-object v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v19

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/tudou/guide/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 976
    add-int/lit8 v15, v15, -0x1

    .line 977
    add-int/lit8 v7, v7, -0x1

    .line 978
    if-ltz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-object/from16 v14, v23

    .line 964
    :cond_e
    :goto_9
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_2

    .line 978
    :cond_f
    const/4 v14, 0x0

    goto :goto_9

    .line 980
    :cond_10
    if-eqz v14, :cond_12

    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 981
    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v23, v0

    add-float v12, v12, v23

    .line 982
    add-int/lit8 v15, v15, -0x1

    .line 983
    if-ltz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-object/from16 v14, v23

    :goto_a
    goto :goto_9

    :cond_11
    const/4 v14, 0x0

    goto :goto_a

    .line 985
    :cond_12
    add-int/lit8 v23, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/tudou/guide/VerticalViewPager;->addNewItem(II)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v14

    .line 986
    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v23, v0

    add-float v12, v12, v23

    .line 987
    add-int/lit8 v7, v7, 0x1

    .line 988
    if-ltz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-object/from16 v14, v23

    :goto_b
    goto :goto_9

    :cond_13
    const/4 v14, 0x0

    goto :goto_b

    .line 995
    .restart local v11    # "extraHeightBottom":F
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1001
    :cond_15
    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    iget-boolean v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->scrolling:Z

    move/from16 v23, v0

    if-nez v23, :cond_16

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    move-object/from16 v23, v0

    iget-object v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v19

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/tudou/guide/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v15, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-object/from16 v14, v23

    .line 996
    :cond_16
    :goto_c
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 1008
    :cond_17
    const/4 v14, 0x0

    goto :goto_c

    .line 1010
    :cond_18
    if-eqz v14, :cond_1a

    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_1a

    .line 1011
    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v23, v0

    add-float v11, v11, v23

    .line 1012
    add-int/lit8 v15, v15, 0x1

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v15, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-object/from16 v14, v23

    :goto_d
    goto :goto_c

    :cond_19
    const/4 v14, 0x0

    goto :goto_d

    .line 1015
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/tudou/guide/VerticalViewPager;->addNewItem(II)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v14

    .line 1016
    add-int/lit8 v15, v15, 0x1

    .line 1017
    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v23, v0

    add-float v11, v11, v23

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v15, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-object/from16 v14, v23

    :goto_e
    goto :goto_c

    :cond_1b
    const/4 v14, 0x0

    goto :goto_e

    .line 1033
    .end local v11    # "extraHeightBottom":F
    .end local v12    # "extraHeightLeft":F
    .end local v14    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    .end local v15    # "itemIndex":I
    .end local v19    # "pos":I
    .end local v22    # "topHeightNeeded":F
    :cond_1c
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 1039
    :cond_1d
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 1044
    .restart local v20    # "sort":Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7

    .line 1062
    .restart local v6    # "childCount":I
    .restart local v13    # "i":I
    :cond_1f
    if-eqz v20, :cond_20

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/guide/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    sget-object v24, Lcom/tudou/guide/VerticalViewPager;->sPositionComparator:Lcom/tudou/guide/VerticalViewPager$ViewPositionComparator;

    invoke-static/range {v23 .. v24}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1066
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->hasFocus()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1067
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->findFocus()Landroid/view/View;

    move-result-object v9

    .line 1068
    .local v9, "currentFocused":Landroid/view/View;
    if-eqz v9, :cond_23

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tudou/guide/VerticalViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v14

    .line 1069
    .restart local v14    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :goto_f
    if-eqz v14, :cond_21

    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 1070
    :cond_21
    const/4 v13, 0x0

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_1

    .line 1071
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tudou/guide/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1072
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tudou/guide/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    move-result-object v14

    .line 1073
    if-eqz v14, :cond_22

    iget v0, v14, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_22

    .line 1074
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v23

    if-nez v23, :cond_1

    .line 1070
    :cond_22
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    .line 1068
    .end local v5    # "child":Landroid/view/View;
    .end local v14    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_23
    const/4 v14, 0x0

    goto :goto_f
.end method

.method public setAdapter(Lcom/tudou/guide/PagerAdapter;)V
    .locals 9
    .param p1, "adapter"    # Lcom/tudou/guide/PagerAdapter;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 417
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    if-eqz v3, :cond_1

    .line 418
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mObserver:Lcom/tudou/guide/VerticalViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Lcom/tudou/guide/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 419
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v3, p0}, Lcom/tudou/guide/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 421
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    .line 422
    .local v1, "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    iget v4, v1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->position:I

    iget-object v5, v1, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5}, Lcom/tudou/guide/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    .end local v1    # "ii":Lcom/tudou/guide/VerticalViewPager$ItemInfo;
    :cond_0
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v3, p0}, Lcom/tudou/guide/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 425
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 426
    invoke-direct {p0}, Lcom/tudou/guide/VerticalViewPager;->removeNonDecorViews()V

    .line 427
    iput v6, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    .line 428
    invoke-virtual {p0, v6, v6}, Lcom/tudou/guide/VerticalViewPager;->scrollTo(II)V

    .line 431
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    .line 432
    .local v2, "oldAdapter":Lcom/tudou/guide/PagerAdapter;
    iput-object p1, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    .line 434
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    if-eqz v3, :cond_3

    .line 435
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mObserver:Lcom/tudou/guide/VerticalViewPager$PagerObserver;

    if-nez v3, :cond_2

    .line 436
    new-instance v3, Lcom/tudou/guide/VerticalViewPager$PagerObserver;

    invoke-direct {v3, p0, v7}, Lcom/tudou/guide/VerticalViewPager$PagerObserver;-><init>(Lcom/tudou/guide/VerticalViewPager;Lcom/tudou/guide/VerticalViewPager$1;)V

    iput-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mObserver:Lcom/tudou/guide/VerticalViewPager$PagerObserver;

    .line 438
    :cond_2
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mObserver:Lcom/tudou/guide/VerticalViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Lcom/tudou/guide/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 439
    iput-boolean v6, p0, Lcom/tudou/guide/VerticalViewPager;->mPopulatePending:Z

    .line 440
    iput-boolean v8, p0, Lcom/tudou/guide/VerticalViewPager;->mFirstLayout:Z

    .line 441
    iget v3, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredCurItem:I

    if-ltz v3, :cond_5

    .line 442
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v5, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4, v5}, Lcom/tudou/guide/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 443
    iget v3, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v3, v6, v8}, Lcom/tudou/guide/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    .line 444
    const/4 v3, -0x1

    iput v3, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredCurItem:I

    .line 445
    iput-object v7, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 446
    iput-object v7, p0, Lcom/tudou/guide/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 452
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapterChangeListener:Lcom/tudou/guide/VerticalViewPager$OnAdapterChangeListener;

    if-eqz v3, :cond_4

    if-eq v2, p1, :cond_4

    .line 453
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapterChangeListener:Lcom/tudou/guide/VerticalViewPager$OnAdapterChangeListener;

    invoke-interface {v3, v2, p1}, Lcom/tudou/guide/VerticalViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/tudou/guide/PagerAdapter;Lcom/tudou/guide/PagerAdapter;)V

    .line 455
    :cond_4
    return-void

    .line 448
    :cond_5
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->populate()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 609
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 611
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "setChildrenDrawingOrderEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 622
    :goto_1
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "VerticalViewPager"

    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 619
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VerticalViewPager"

    const-string v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 489
    iput-boolean v1, p0, Lcom/tudou/guide/VerticalViewPager;->mPopulatePending:Z

    .line 490
    iget-boolean v0, p0, Lcom/tudou/guide/VerticalViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/tudou/guide/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    .line 491
    return-void

    :cond_0
    move v0, v1

    .line 490
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/tudou/guide/VerticalViewPager;->mPopulatePending:Z

    .line 501
    invoke-virtual {p0, p1, p2, v0}, Lcom/tudou/guide/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    .line 502
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tudou/guide/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    .line 510
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 513
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v3}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 514
    :cond_0
    invoke-direct {p0, v4}, Lcom/tudou/guide/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 539
    :goto_0
    return-void

    .line 517
    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 518
    invoke-direct {p0, v4}, Lcom/tudou/guide/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 522
    :cond_2
    if-gez p1, :cond_5

    .line 523
    const/4 p1, 0x0

    .line 527
    :cond_3
    :goto_1
    iget v2, p0, Lcom/tudou/guide/VerticalViewPager;->mOffscreenPageLimit:I

    .line 528
    .local v2, "pageLimit":I
    iget v3, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_4

    iget v3, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_6

    .line 532
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 533
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;

    iput-boolean v0, v3, Lcom/tudou/guide/VerticalViewPager$ItemInfo;->scrolling:Z

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 524
    .end local v1    # "i":I
    .end local v2    # "pageLimit":I
    :cond_5
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v3}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 525
    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    invoke-virtual {v3}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_1

    .line 536
    .restart local v2    # "pageLimit":I
    :cond_6
    iget v3, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    if-eq v3, p1, :cond_7

    .line 537
    .local v0, "dispatchSelected":Z
    :goto_3
    invoke-virtual {p0, p1}, Lcom/tudou/guide/VerticalViewPager;->populate(I)V

    .line 538
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/tudou/guide/VerticalViewPager;->scrollToItem(IZIZ)V

    goto :goto_0

    .end local v0    # "dispatchSelected":Z
    :cond_7
    move v0, v4

    .line 536
    goto :goto_3
.end method

.method setInternalPageChangeListener(Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;)Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mInternalPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    .line 639
    .local v0, "oldListener":Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/tudou/guide/VerticalViewPager;->mInternalPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    .line 640
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 672
    if-ge p1, v3, :cond_0

    .line 673
    const-string v0, "VerticalViewPager"

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

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 p1, 0x1

    .line 677
    :cond_0
    iget v0, p0, Lcom/tudou/guide/VerticalViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 678
    iput p1, p0, Lcom/tudou/guide/VerticalViewPager;->mOffscreenPageLimit:I

    .line 679
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->populate()V

    .line 681
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/tudou/guide/VerticalViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tudou/guide/VerticalViewPager$OnAdapterChangeListener;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapterChangeListener:Lcom/tudou/guide/VerticalViewPager$OnAdapterChangeListener;

    .line 479
    return-void
.end method

.method public setOnPageChangeListener(Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/tudou/guide/VerticalViewPager;->mOnPageChangeListener:Lcom/tudou/guide/VerticalViewPager$OnPageChangeListener;

    .line 579
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 692
    iget v0, p0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    .line 693
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    .line 695
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getWidth()I

    move-result v1

    .line 696
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/tudou/guide/VerticalViewPager;->recomputeScrollPosition(IIII)V

    .line 698
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->requestLayout()V

    .line 699
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tudou/guide/VerticalViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 729
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/tudou/guide/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 717
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->refreshDrawableState()V

    .line 718
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tudou/guide/VerticalViewPager;->setWillNotDraw(Z)V

    .line 719
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->invalidate()V

    .line 720
    return-void

    .line 718
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLcom/tudou/guide/VerticalViewPager$PageTransformer;)V
    .locals 6
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/tudou/guide/VerticalViewPager$PageTransformer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 594
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 595
    if-eqz p2, :cond_2

    move v0, v2

    .line 596
    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v4, p0, Lcom/tudou/guide/VerticalViewPager;->mPageTransformer:Lcom/tudou/guide/VerticalViewPager$PageTransformer;

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    if-eq v0, v4, :cond_4

    move v1, v2

    .line 597
    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/tudou/guide/VerticalViewPager;->mPageTransformer:Lcom/tudou/guide/VerticalViewPager$PageTransformer;

    .line 598
    invoke-virtual {p0, v0}, Lcom/tudou/guide/VerticalViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 599
    if-eqz v0, :cond_5

    .line 600
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Lcom/tudou/guide/VerticalViewPager;->mDrawingOrder:I

    .line 604
    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->populate()V

    .line 606
    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 595
    goto :goto_0

    .restart local v0    # "hasTransformer":Z
    :cond_3
    move v4, v3

    .line 596
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .line 602
    .restart local v1    # "needsPopulate":Z
    :cond_5
    iput v3, p0, Lcom/tudou/guide/VerticalViewPager;->mDrawingOrder:I

    goto :goto_3
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 762
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tudou/guide/VerticalViewPager;->smoothScrollTo(III)V

    .line 763
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 777
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/tudou/guide/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 815
    :goto_0
    return-void

    .line 783
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollX()I

    move-result v2

    .line 784
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getScrollY()I

    move-result v3

    .line 785
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 786
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 787
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 788
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/tudou/guide/VerticalViewPager;->completeScroll(Z)V

    .line 789
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->populate()V

    .line 790
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/tudou/guide/VerticalViewPager;->setScrollState(I)V

    goto :goto_0

    .line 794
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/tudou/guide/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 795
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/tudou/guide/VerticalViewPager;->setScrollState(I)V

    .line 797
    invoke-virtual {p0}, Lcom/tudou/guide/VerticalViewPager;->getHeight()I

    move-result v10

    .line 798
    .local v10, "height":I
    div-int/lit8 v9, v10, 0x2

    .line 799
    .local v9, "halfHeight":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v10

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 800
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v13, v9

    invoke-virtual {p0, v8}, Lcom/tudou/guide/VerticalViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 802
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 803
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 804
    if-lez p3, :cond_2

    .line 805
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 811
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 813
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 814
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 807
    :cond_2
    int-to-float v1, v10

    iget-object v13, p0, Lcom/tudou/guide/VerticalViewPager;->mAdapter:Lcom/tudou/guide/PagerAdapter;

    iget v14, p0, Lcom/tudou/guide/VerticalViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Lcom/tudou/guide/PagerAdapter;->getPageHeight(I)F

    move-result v13

    mul-float v12, v1, v13

    .line 808
    .local v12, "pageHeight":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lcom/tudou/guide/VerticalViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v12

    div-float v11, v1, v13

    .line 809
    .local v11, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v11

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 733
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
