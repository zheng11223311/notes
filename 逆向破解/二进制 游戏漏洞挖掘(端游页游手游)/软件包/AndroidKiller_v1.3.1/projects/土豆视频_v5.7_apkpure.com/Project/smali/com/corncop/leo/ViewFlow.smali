.class public Lcom/corncop/leo/ViewFlow;
.super Landroid/widget/AdapterView;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;,
        Lcom/corncop/leo/ViewFlow$LazyInit;,
        Lcom/corncop/leo/ViewFlow$ViewLazyInitializeListener;,
        Lcom/corncop/leo/ViewFlow$ViewSwitchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_SCREEN:I = -0x1

.field private static final SNAP_VELOCITY:I = 0xa

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAdapter:Landroid/widget/Adapter;

.field private mCurrentAdapterIndex:I

.field private mCurrentBufferIndex:I

.field private mCurrentScreen:I

.field private mDataSetObserver:Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;

.field private mFirstLayout:Z

.field private mIndicator:Lcom/corncop/leo/FlowIndicator;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastObtainedViewWasRecycled:Z

.field private mLastOrientation:I

.field private mLastScrollDirection:I

.field private mLazyInit:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/corncop/leo/ViewFlow$LazyInit;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mRecycledViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScroller:Landroid/widget/Scroller;

.field private mSideBuffer:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewInitializeListener:Lcom/corncop/leo/ViewFlow$ViewLazyInitializeListener;

.field private mViewSwitchListener:Lcom/corncop/leo/ViewFlow$ViewSwitchListener;

.field private mWidth:I

.field private orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private timeSpan:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    .line 67
    iput v2, p0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    .line 73
    iput v1, p0, Lcom/corncop/leo/ViewFlow;->mNextScreen:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corncop/leo/ViewFlow;->mFirstLayout:Z

    .line 77
    const-class v0, Lcom/corncop/leo/ViewFlow$LazyInit;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/corncop/leo/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    .line 82
    iput v1, p0, Lcom/corncop/leo/ViewFlow;->mLastOrientation:I

    .line 83
    iput-boolean v2, p0, Lcom/corncop/leo/ViewFlow;->mLastObtainedViewWasRecycled:Z

    .line 84
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/corncop/leo/ViewFlow;->timeSpan:J

    .line 87
    new-instance v0, Lcom/corncop/leo/ViewFlow$1;

    invoke-direct {v0, p0}, Lcom/corncop/leo/ViewFlow$1;-><init>(Lcom/corncop/leo/ViewFlow;)V

    iput-object v0, p0, Lcom/corncop/leo/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 122
    const/16 v0, 0xa

    iput v0, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    .line 123
    invoke-direct {p0}, Lcom/corncop/leo/ViewFlow;->init()V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sideBuffer"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    .line 67
    iput v2, p0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    .line 73
    iput v1, p0, Lcom/corncop/leo/ViewFlow;->mNextScreen:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corncop/leo/ViewFlow;->mFirstLayout:Z

    .line 77
    const-class v0, Lcom/corncop/leo/ViewFlow$LazyInit;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/corncop/leo/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    .line 82
    iput v1, p0, Lcom/corncop/leo/ViewFlow;->mLastOrientation:I

    .line 83
    iput-boolean v2, p0, Lcom/corncop/leo/ViewFlow;->mLastObtainedViewWasRecycled:Z

    .line 84
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/corncop/leo/ViewFlow;->timeSpan:J

    .line 87
    new-instance v0, Lcom/corncop/leo/ViewFlow$1;

    invoke-direct {v0, p0}, Lcom/corncop/leo/ViewFlow$1;-><init>(Lcom/corncop/leo/ViewFlow;)V

    iput-object v0, p0, Lcom/corncop/leo/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 128
    iput p2, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    .line 129
    invoke-direct {p0}, Lcom/corncop/leo/ViewFlow;->init()V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v1, 0x2

    iput v1, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    .line 67
    iput v4, p0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    .line 73
    iput v2, p0, Lcom/corncop/leo/ViewFlow;->mNextScreen:I

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/corncop/leo/ViewFlow;->mFirstLayout:Z

    .line 77
    const-class v1, Lcom/corncop/leo/ViewFlow$LazyInit;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/corncop/leo/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    .line 82
    iput v2, p0, Lcom/corncop/leo/ViewFlow;->mLastOrientation:I

    .line 83
    iput-boolean v4, p0, Lcom/corncop/leo/ViewFlow;->mLastObtainedViewWasRecycled:Z

    .line 84
    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lcom/corncop/leo/ViewFlow;->timeSpan:J

    .line 87
    new-instance v1, Lcom/corncop/leo/ViewFlow$1;

    invoke-direct {v1, p0}, Lcom/corncop/leo/ViewFlow$1;-><init>(Lcom/corncop/leo/ViewFlow;)V

    iput-object v1, p0, Lcom/corncop/leo/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 134
    sget-object v1, Lcom/toolsbox/athena/R$styleable;->ViewFlow:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, "styledAttrs":Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    .line 137
    invoke-direct {p0}, Lcom/corncop/leo/ViewFlow;->init()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/corncop/leo/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/corncop/leo/ViewFlow;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/corncop/leo/ViewFlow;)I
    .locals 1
    .param p0, "x0"    # Lcom/corncop/leo/ViewFlow;

    .prologue
    .line 53
    iget v0, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/corncop/leo/ViewFlow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/corncop/leo/ViewFlow;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/corncop/leo/ViewFlow;)I
    .locals 1
    .param p0, "x0"    # Lcom/corncop/leo/ViewFlow;

    .prologue
    .line 53
    iget v0, p0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    return v0
.end method

.method static synthetic access$300(Lcom/corncop/leo/ViewFlow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/corncop/leo/ViewFlow;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/corncop/leo/ViewFlow;->snapToScreen(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/corncop/leo/ViewFlow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/corncop/leo/ViewFlow;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/corncop/leo/ViewFlow;)J
    .locals 2
    .param p0, "x0"    # Lcom/corncop/leo/ViewFlow;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/corncop/leo/ViewFlow;->timeSpan:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/corncop/leo/ViewFlow;)I
    .locals 1
    .param p0, "x0"    # Lcom/corncop/leo/ViewFlow;

    .prologue
    .line 53
    iget v0, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/corncop/leo/ViewFlow;)Landroid/widget/Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/corncop/leo/ViewFlow;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/corncop/leo/ViewFlow;)V
    .locals 0
    .param p0, "x0"    # Lcom/corncop/leo/ViewFlow;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/corncop/leo/ViewFlow;->resetFocus()V

    return-void
.end method

.method private getHeightPadding()I
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getWidthPadding()I
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 141
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    .line 142
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/corncop/leo/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    .line 143
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    .line 145
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 146
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    const/16 v2, 0xa

    iput v2, p0, Lcom/corncop/leo/ViewFlow;->mTouchSlop:I

    .line 147
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/corncop/leo/ViewFlow;->mMaximumVelocity:I

    .line 149
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 151
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/corncop/leo/ViewFlow;->mWidth:I

    .line 152
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 501
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 503
    :cond_0
    return-void
.end method

.method private initializeView(F)V
    .locals 3
    .param p1, "direction"    # F

    .prologue
    .line 506
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v1, Lcom/corncop/leo/ViewFlow$LazyInit;->RIGHT:Lcom/corncop/leo/ViewFlow$LazyInit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v1, Lcom/corncop/leo/ViewFlow$LazyInit;->RIGHT:Lcom/corncop/leo/ViewFlow$LazyInit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 509
    iget v0, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mViewInitializeListener:Lcom/corncop/leo/ViewFlow$ViewLazyInitializeListener;

    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/corncop/leo/ViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v1, Lcom/corncop/leo/ViewFlow$LazyInit;->LEFT:Lcom/corncop/leo/ViewFlow$LazyInit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v1, Lcom/corncop/leo/ViewFlow$LazyInit;->LEFT:Lcom/corncop/leo/ViewFlow$LazyInit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 515
    iget v0, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    if-lez v0, :cond_0

    .line 516
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mViewInitializeListener:Lcom/corncop/leo/ViewFlow$ViewLazyInitializeListener;

    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v0, v2}, Lcom/corncop/leo/ViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private makeAndAddView(IZLandroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "addToEnd"    # Z
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    .line 835
    invoke-direct {p0, p1}, Lcom/corncop/leo/ViewFlow;->obtainView(I)Landroid/view/View;

    move-result-object v0

    .line 836
    .local v0, "view":Landroid/view/View;
    iget-boolean v1, p0, Lcom/corncop/leo/ViewFlow;->mLastObtainedViewWasRecycled:Z

    invoke-direct {p0, v0, p2, v1}, Lcom/corncop/leo/ViewFlow;->setupChild(Landroid/view/View;ZZ)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private obtainView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, -0x1

    .line 840
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getRecycledView()Landroid/view/View;

    move-result-object v0

    .line 841
    .local v0, "convertView":Landroid/view/View;
    iget-object v3, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3, p1, v0, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 842
    .local v2, "view":Landroid/view/View;
    if-eq v2, v0, :cond_0

    if-eqz v0, :cond_0

    .line 843
    iget-object v3, p0, Lcom/corncop/leo/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_0
    if-ne v2, v0, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/corncop/leo/ViewFlow;->mLastObtainedViewWasRecycled:Z

    .line 845
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 846
    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1

    .line 847
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 848
    .restart local v1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    :cond_1
    return-object v2

    .line 844
    .end local v1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private postViewSwitched(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x1

    .line 744
    if-nez p1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    if-lez p1, :cond_5

    .line 748
    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    .line 749
    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    .line 756
    const/4 v1, 0x0

    .line 759
    .local v1, "recycleView":Landroid/view/View;
    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    if-le v2, v3, :cond_2

    .line 760
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "recycleView":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 761
    .restart local v1    # "recycleView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/corncop/leo/ViewFlow;->detachViewFromParent(Landroid/view/View;)V

    .line 763
    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    .line 767
    :cond_2
    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    add-int v0, v2, v3

    .line 768
    .local v0, "newBufferIndex":I
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 769
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v4, v1}, Lcom/corncop/leo/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 799
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->requestLayout()V

    .line 800
    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    invoke-direct {p0, v2, v4}, Lcom/corncop/leo/ViewFlow;->setVisibleView(IZ)V

    .line 801
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow;->mIndicator:Lcom/corncop/leo/FlowIndicator;

    if-eqz v2, :cond_4

    .line 802
    iget-object v3, p0, Lcom/corncop/leo/ViewFlow;->mIndicator:Lcom/corncop/leo/FlowIndicator;

    iget-object v2, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v4, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v4, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v3, v2, v4}, Lcom/corncop/leo/FlowIndicator;->onSwitched(Landroid/view/View;I)V

    .line 805
    :cond_4
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow;->mViewSwitchListener:Lcom/corncop/leo/ViewFlow$ViewSwitchListener;

    if-eqz v2, :cond_0

    .line 806
    iget-object v3, p0, Lcom/corncop/leo/ViewFlow;->mViewSwitchListener:Lcom/corncop/leo/ViewFlow$ViewSwitchListener;

    iget-object v2, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v4, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    .line 807
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v4, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v3, v2, v4}, Lcom/corncop/leo/ViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    goto :goto_0

    .line 773
    .end local v0    # "newBufferIndex":I
    .end local v1    # "recycleView":Landroid/view/View;
    :cond_5
    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    .line 774
    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    .line 781
    const/4 v1, 0x0

    .line 784
    .restart local v1    # "recycleView":Landroid/view/View;
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    if-le v2, v3, :cond_6

    .line 785
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "recycleView":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 786
    .restart local v1    # "recycleView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/corncop/leo/ViewFlow;->detachViewFromParent(Landroid/view/View;)V

    .line 790
    :cond_6
    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    sub-int v0, v2, v3

    .line 791
    .restart local v0    # "newBufferIndex":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_3

    .line 792
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/corncop/leo/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 794
    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    goto :goto_1
.end method

.method private resetFocus()V
    .locals 4

    .prologue
    .line 726
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 727
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->recycleViews()V

    .line 728
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->removeAllViewsInLayout()V

    .line 729
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mLazyInit:Ljava/util/EnumSet;

    const-class v2, Lcom/corncop/leo/ViewFlow$LazyInit;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 731
    const/4 v1, 0x0

    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    .line 732
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 734
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/corncop/leo/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 735
    iget v1, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    if-ne v0, v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mViewInitializeListener:Lcom/corncop/leo/ViewFlow$ViewLazyInitializeListener;

    if-eqz v1, :cond_1

    .line 738
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow;->mViewInitializeListener:Lcom/corncop/leo/ViewFlow$ViewLazyInitializeListener;

    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v2, v1, v3}, Lcom/corncop/leo/ViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    .line 733
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    :cond_2
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->requestLayout()V

    .line 741
    return-void
.end method

.method private setVisibleView(IZ)V
    .locals 6
    .param p1, "indexInBuffer"    # I
    .param p2, "uiThread"    # Z

    .prologue
    const/4 v4, 0x0

    .line 579
    .line 580
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 579
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    .line 581
    iget v0, p0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int v3, v0, v1

    .line 582
    .local v3, "dx":I
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 584
    if-nez v3, :cond_0

    .line 585
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    .line 586
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 585
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/corncop/leo/ViewFlow;->onScrollChanged(IIII)V

    .line 587
    :cond_0
    if-eqz p2, :cond_1

    .line 588
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->invalidate()V

    .line 591
    :goto_0
    return-void

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->postInvalidate()V

    goto :goto_0
.end method

.method private setupChild(Landroid/view/View;ZZ)Landroid/view/View;
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "addToEnd"    # Z
    .param p3, "recycle"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 820
    .line 821
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 822
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 823
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .end local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x2

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 827
    .restart local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-eqz p3, :cond_2

    .line 828
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/corncop/leo/ViewFlow;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 831
    :goto_1
    return-object p1

    :cond_1
    move v1, v2

    .line 828
    goto :goto_0

    .line 830
    :cond_2
    if-eqz p2, :cond_3

    :goto_2
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/corncop/leo/ViewFlow;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private snapToDestination()V
    .locals 4

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getWidth()I

    move-result v0

    .line 538
    .local v0, "screenWidth":I
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 541
    .local v1, "whichScreen":I
    invoke-direct {p0, v1}, Lcom/corncop/leo/ViewFlow;->snapToScreen(I)V

    .line 542
    return-void
.end method

.method private snapToScreen(I)V
    .locals 7
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v2, 0x0

    .line 545
    iget v0, p0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/corncop/leo/ViewFlow;->mLastScrollDirection:I

    .line 546
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 551
    iput p1, p0, Lcom/corncop/leo/ViewFlow;->mNextScreen:I

    .line 553
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getWidth()I

    move-result v0

    mul-int v6, p1, v0

    .line 554
    .local v6, "newX":I
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getScrollX()I

    move-result v0

    sub-int v3, v6, v0

    .line 555
    .local v3, "delta":I
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 556
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 561
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/corncop/leo/ViewFlow;->scrollTo(II)V

    .line 563
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->postInvalidate()V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget v0, p0, Lcom/corncop/leo/ViewFlow;->mNextScreen:I

    if-eq v0, v3, :cond_0

    .line 565
    const/4 v0, 0x0

    iget v1, p0, Lcom/corncop/leo/ViewFlow;->mNextScreen:I

    .line 566
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 565
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    .line 567
    iput v3, p0, Lcom/corncop/leo/ViewFlow;->mNextScreen:I

    .line 568
    iget v0, p0, Lcom/corncop/leo/ViewFlow;->mLastScrollDirection:I

    invoke-direct {p0, v0}, Lcom/corncop/leo/ViewFlow;->postViewSwitched(I)V

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getChildHeight()I
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/corncop/leo/ViewFlow;->getHeightPadding()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getChildWidth()I
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/corncop/leo/ViewFlow;->getWidthPadding()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getRecycledView()Landroid/view/View;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 634
    iget v0, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v1, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    .line 635
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewsCount()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 813
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 814
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0}, Lcom/corncop/leo/ViewFlow;->getWidthPadding()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/corncop/leo/ViewFlow;->getChildMeasureSpec(III)I

    move-result v1

    .line 815
    .local v1, "childWidthSpec":I
    invoke-direct {p0}, Lcom/corncop/leo/ViewFlow;->getHeightPadding()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/corncop/leo/ViewFlow;->getChildMeasureSpec(III)I

    move-result v0

    .line 816
    .local v0, "childHeightSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 817
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 176
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/corncop/leo/ViewFlow;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 177
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/corncop/leo/ViewFlow;->mLastOrientation:I

    .line 178
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->getChildCount()I

    move-result v15

    if-nez v15, :cond_0

    .line 273
    const/4 v15, 0x0

    .line 380
    :goto_0
    return v15

    .line 275
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v15, :cond_1

    .line 276
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 278
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 281
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 282
    .local v10, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 284
    .local v13, "y":F
    packed-switch v2, :pswitch_data_0

    .line 380
    :cond_2
    :goto_1
    const/4 v15, 0x0

    goto :goto_0

    .line 287
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_3

    .line 288
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->abortAnimation()V

    .line 293
    :cond_3
    const/high16 v15, 0x41c80000    # 25.0f

    cmpg-float v15, v10, v15

    if-ltz v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mWidth:I

    add-int/lit8 v15, v15, -0x19

    int-to-float v15, v15

    cmpl-float v15, v10, v15

    if-lez v15, :cond_5

    .line 294
    :cond_4
    const/4 v15, 0x1

    goto :goto_0

    .line 297
    :cond_5
    move-object/from16 v0, p0

    iput v10, v0, Lcom/corncop/leo/ViewFlow;->mLastMotionX:F

    .line 298
    move-object/from16 v0, p0

    iput v13, v0, Lcom/corncop/leo/ViewFlow;->mLastMotionY:F

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, p0

    iput v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    .line 302
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    if-eqz v15, :cond_2

    .line 303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 300
    :cond_6
    const/4 v15, 0x1

    goto :goto_2

    .line 307
    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mLastMotionX:F

    sub-float v15, v10, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-int v11, v15

    .line 308
    .local v11, "xDiff":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mLastMotionY:F

    sub-float v15, v13, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-int v14, v15

    .line 311
    .local v14, "yDiff":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchSlop:I

    if-le v11, v15, :cond_b

    const/4 v12, 0x1

    .line 313
    .local v12, "xMoved":Z
    :goto_3
    if-eqz v12, :cond_7

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    int-to-double v0, v14

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    cmpl-double v15, v16, v18

    if-ltz v15, :cond_7

    .line 315
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    .line 318
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 320
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mLastMotionX:F

    sub-float/2addr v15, v10

    float-to-int v4, v15

    .line 321
    .local v4, "deltaX":I
    move-object/from16 v0, p0

    iput v10, v0, Lcom/corncop/leo/ViewFlow;->mLastMotionX:F

    .line 322
    move-object/from16 v0, p0

    iput v13, v0, Lcom/corncop/leo/ViewFlow;->mLastMotionY:F

    .line 324
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mViewInitializeListener:Lcom/corncop/leo/ViewFlow$ViewLazyInitializeListener;

    if-eqz v15, :cond_8

    .line 325
    int-to-float v15, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/corncop/leo/ViewFlow;->initializeView(F)V

    .line 327
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->getScrollX()I

    move-result v7

    .line 328
    .local v7, "scrollX":I
    if-gez v4, :cond_c

    .line 329
    if-lez v7, :cond_9

    .line 330
    neg-int v15, v7

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/corncop/leo/ViewFlow;->scrollBy(II)V

    .line 340
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 341
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_a

    .line 342
    const/4 v15, 0x1

    invoke-interface {v6, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 343
    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 311
    .end local v4    # "deltaX":I
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "scrollX":I
    .end local v12    # "xMoved":Z
    :cond_b
    const/4 v12, 0x0

    goto :goto_3

    .line 332
    .restart local v4    # "deltaX":I
    .restart local v7    # "scrollX":I
    .restart local v12    # "xMoved":Z
    :cond_c
    if-lez v4, :cond_9

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .line 333
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/corncop/leo/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 334
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int/2addr v15, v7

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->getWidth()I

    move-result v16

    sub-int v3, v15, v16

    .line 336
    .local v3, "availableToScroll":I
    if-lez v3, :cond_9

    .line 337
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/corncop/leo/ViewFlow;->scrollBy(II)V

    goto :goto_4

    .line 348
    .end local v3    # "availableToScroll":I
    .end local v4    # "deltaX":I
    .end local v7    # "scrollX":I
    .end local v11    # "xDiff":I
    .end local v12    # "xMoved":Z
    .end local v14    # "yDiff":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 349
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 350
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v15, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/corncop/leo/ViewFlow;->mMaximumVelocity:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 351
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    float-to-int v9, v15

    .line 353
    .local v9, "velocityX":I
    const/16 v15, 0xa

    if-le v9, v15, :cond_e

    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    if-lez v15, :cond_e

    .line 355
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/corncop/leo/ViewFlow;->snapToScreen(I)V

    .line 364
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v15, :cond_d

    .line 365
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->recycle()V

    .line 366
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 370
    .end local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v9    # "velocityX":I
    :cond_d
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    .line 371
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    if-eqz v15, :cond_2

    .line 372
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 373
    .local v5, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/corncop/leo/ViewFlow;->timeSpan:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v5, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 356
    .end local v5    # "message":Landroid/os/Message;
    .restart local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v9    # "velocityX":I
    :cond_e
    const/16 v15, -0xa

    if-ge v9, v15, :cond_f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->getChildCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_f

    .line 359
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/corncop/leo/ViewFlow;->snapToScreen(I)V

    goto :goto_5

    .line 361
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->snapToDestination()V

    goto :goto_5

    .line 377
    .end local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v9    # "velocityX":I
    :pswitch_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    goto/16 :goto_1

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 256
    const/4 v1, 0x0

    .line 258
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getChildCount()I

    move-result v3

    .line 259
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 260
    invoke-virtual {p0, v4}, Lcom/corncop/leo/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 261
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 263
    .local v2, "childWidth":I
    const/4 v5, 0x0

    add-int v6, v1, v2

    .line 264
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 263
    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 265
    add-int/2addr v1, v2

    .line 259
    .end local v2    # "childWidth":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 189
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 192
    .local v10, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 193
    .local v11, "widthMode":I
    if-eq v11, v2, :cond_0

    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 199
    .local v8, "heightMode":I
    if-eq v8, v2, :cond_1

    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getChildCount()I

    move-result v7

    .line 206
    .local v7, "count":I
    if-lez v7, :cond_2

    .line 207
    invoke-direct {p0, v1}, Lcom/corncop/leo/ViewFlow;->obtainView(I)Landroid/view/View;

    move-result-object v6

    .line 208
    .local v6, "child":Landroid/view/View;
    invoke-virtual {p0, v6, p1, p2}, Lcom/corncop/leo/ViewFlow;->measureChild(Landroid/view/View;II)V

    .line 209
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_3

    .line 213
    invoke-virtual {p0, v9}, Lcom/corncop/leo/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 212
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 216
    :cond_3
    iget-boolean v0, p0, Lcom/corncop/leo/ViewFlow;->mFirstLayout:Z

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    mul-int v3, v2, v10

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 218
    iput-boolean v1, p0, Lcom/corncop/leo/ViewFlow;->mFirstLayout:Z

    .line 220
    :cond_4
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "h"    # I
    .param p2, "v"    # I
    .param p3, "oldh"    # I
    .param p4, "oldv"    # I

    .prologue
    .line 523
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onScrollChanged(IIII)V

    .line 524
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mIndicator:Lcom/corncop/leo/FlowIndicator;

    if-eqz v1, :cond_0

    .line 530
    iget v1, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    sub-int/2addr v1, v2

    .line 531
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int v0, p1, v1

    .line 532
    .local v0, "hPerceived":I
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mIndicator:Lcom/corncop/leo/FlowIndicator;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/corncop/leo/FlowIndicator;->onScrolled(IIII)V

    .line 534
    .end local v0    # "hPerceived":I
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onSizeChanged(IIII)V

    .line 241
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getChildCount()I

    move-result v7

    .line 242
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 243
    invoke-virtual {p0, v8}, Lcom/corncop/leo/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 244
    .local v6, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getChildWidth()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 245
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getChildHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 244
    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    .line 242
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 248
    .end local v6    # "child":Landroid/view/View;
    :cond_0
    iget-boolean v0, p0, Lcom/corncop/leo/ViewFlow;->mFirstLayout:Z

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->getChildWidth()I

    move-result v3

    mul-int/2addr v3, v2

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 250
    iput-boolean v1, p0, Lcom/corncop/leo/ViewFlow;->mFirstLayout:Z

    .line 252
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->initVelocityTrackerIfNotExists()V

    .line 387
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v15, :cond_0

    .line 390
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 392
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 394
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 395
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 396
    .local v10, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 398
    .local v13, "y":F
    and-int/lit16 v15, v2, 0xff

    packed-switch v15, :pswitch_data_0

    .line 496
    :cond_1
    :goto_0
    const/4 v15, 0x1

    :goto_1
    return v15

    .line 400
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->getChildCount()I

    move-result v15

    if-nez v15, :cond_2

    .line 401
    const/4 v15, 0x0

    goto :goto_1

    .line 403
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_3

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 405
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_3

    .line 406
    const/4 v15, 0x1

    invoke-interface {v6, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 410
    .end local v6    # "parent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_4

    .line 411
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->abortAnimation()V

    .line 415
    :cond_4
    move-object/from16 v0, p0

    iput v10, v0, Lcom/corncop/leo/ViewFlow;->mLastMotionX:F

    .line 417
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, p0

    iput v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    .line 419
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    if-eqz v15, :cond_1

    .line 420
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 417
    :cond_5
    const/4 v15, 0x1

    goto :goto_2

    .line 425
    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mLastMotionX:F

    sub-float v15, v10, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-int v11, v15

    .line 426
    .local v11, "xDiff":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mLastMotionY:F

    sub-float v15, v13, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-int v14, v15

    .line 430
    .local v14, "yDiff":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchSlop:I

    if-le v11, v15, :cond_8

    const/4 v12, 0x1

    .line 432
    .local v12, "xMoved":Z
    :goto_3
    if-eqz v12, :cond_6

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    int-to-double v0, v14

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    cmpl-double v15, v16, v18

    if-ltz v15, :cond_6

    .line 434
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 438
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 440
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mLastMotionX:F

    sub-float/2addr v15, v10

    float-to-int v4, v15

    .line 441
    .local v4, "deltaX":I
    move-object/from16 v0, p0

    iput v10, v0, Lcom/corncop/leo/ViewFlow;->mLastMotionX:F

    .line 442
    move-object/from16 v0, p0

    iput v13, v0, Lcom/corncop/leo/ViewFlow;->mLastMotionY:F

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->getScrollX()I

    move-result v7

    .line 445
    .local v7, "scrollX":I
    if-gez v4, :cond_9

    .line 446
    if-lez v7, :cond_7

    .line 447
    neg-int v15, v7

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/corncop/leo/ViewFlow;->scrollBy(II)V

    .line 457
    :cond_7
    :goto_4
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 430
    .end local v4    # "deltaX":I
    .end local v7    # "scrollX":I
    .end local v12    # "xMoved":Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 449
    .restart local v4    # "deltaX":I
    .restart local v7    # "scrollX":I
    .restart local v12    # "xMoved":Z
    :cond_9
    if-lez v4, :cond_7

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .line 450
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/corncop/leo/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 451
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int/2addr v15, v7

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->getWidth()I

    move-result v16

    sub-int v3, v15, v16

    .line 453
    .local v3, "availableToScroll":I
    if-lez v3, :cond_7

    .line 454
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/corncop/leo/ViewFlow;->scrollBy(II)V

    goto :goto_4

    .line 462
    .end local v3    # "availableToScroll":I
    .end local v4    # "deltaX":I
    .end local v7    # "scrollX":I
    .end local v11    # "xDiff":I
    .end local v12    # "xMoved":Z
    .end local v14    # "yDiff":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 463
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 464
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v15, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/corncop/leo/ViewFlow;->mMaximumVelocity:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 465
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    float-to-int v9, v15

    .line 467
    .local v9, "velocityX":I
    const/16 v15, 0xa

    if-le v9, v15, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    if-lez v15, :cond_b

    .line 469
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/corncop/leo/ViewFlow;->snapToScreen(I)V

    .line 478
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v15, :cond_a

    .line 479
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->recycle()V

    .line 480
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/corncop/leo/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 484
    .end local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v9    # "velocityX":I
    :cond_a
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    .line 486
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    if-eqz v15, :cond_1

    .line 487
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 488
    .local v5, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/corncop/leo/ViewFlow;->timeSpan:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v5, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 470
    .end local v5    # "message":Landroid/os/Message;
    .restart local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v9    # "velocityX":I
    :cond_b
    const/16 v15, -0xa

    if-ge v9, v15, :cond_c

    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->getChildCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_c

    .line 473
    move-object/from16 v0, p0

    iget v15, v0, Lcom/corncop/leo/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/corncop/leo/ViewFlow;->snapToScreen(I)V

    goto :goto_5

    .line 475
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->snapToDestination()V

    goto :goto_5

    .line 492
    .end local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v9    # "velocityX":I
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/corncop/leo/ViewFlow;->snapToDestination()V

    .line 494
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/corncop/leo/ViewFlow;->mTouchState:I

    goto/16 :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected recycleView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 659
    if-nez p1, :cond_0

    .line 663
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 662
    invoke-virtual {p0, p1}, Lcom/corncop/leo/ViewFlow;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected recycleViews()V
    .locals 1

    .prologue
    .line 654
    :goto_0
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/corncop/leo/ViewFlow;->recycleView(Landroid/view/View;)V

    goto :goto_0

    .line 656
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/corncop/leo/ViewFlow;->setAdapter(Landroid/widget/Adapter;I)V

    .line 612
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;I)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/Adapter;
    .param p2, "initialPosition"    # I

    .prologue
    .line 615
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mDataSetObserver:Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 619
    :cond_0
    iput-object p1, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    .line 621
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 622
    new-instance v0, Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;-><init>(Lcom/corncop/leo/ViewFlow;)V

    iput-object v0, p0, Lcom/corncop/leo/ViewFlow;->mDataSetObserver:Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;

    .line 623
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->mDataSetObserver:Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 630
    :cond_2
    :goto_0
    return-void

    .line 629
    :cond_3
    invoke-virtual {p0, p2}, Lcom/corncop/leo/ViewFlow;->setSelection(I)V

    goto :goto_0
.end method

.method public setFlowIndicator(Lcom/corncop/leo/FlowIndicator;)V
    .locals 1
    .param p1, "flowIndicator"    # Lcom/corncop/leo/FlowIndicator;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/corncop/leo/ViewFlow;->mIndicator:Lcom/corncop/leo/FlowIndicator;

    .line 650
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->mIndicator:Lcom/corncop/leo/FlowIndicator;

    invoke-interface {v0, p0}, Lcom/corncop/leo/FlowIndicator;->setViewFlow(Lcom/corncop/leo/ViewFlow;)V

    .line 651
    return-void
.end method

.method public setOnViewSwitchListener(Lcom/corncop/leo/ViewFlow$ViewSwitchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/corncop/leo/ViewFlow$ViewSwitchListener;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/corncop/leo/ViewFlow;->mViewSwitchListener:Lcom/corncop/leo/ViewFlow$ViewSwitchListener;

    .line 602
    return-void
.end method

.method public setSelection(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 671
    const/4 v7, -0x1

    iput v7, p0, Lcom/corncop/leo/ViewFlow;->mNextScreen:I

    .line 672
    iget-object v7, p0, Lcom/corncop/leo/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 673
    iget-object v7, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-nez v7, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    invoke-static {p1, v10}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 677
    iget-object v7, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v7}, Landroid/widget/Adapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 679
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v4, "recycleViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_1
    iget-object v7, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 682
    iget-object v7, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .local v3, "recycleView":Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-virtual {p0, v3}, Lcom/corncop/leo/ViewFlow;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_1

    .line 687
    .end local v3    # "recycleView":Landroid/view/View;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v8

    .line 686
    :goto_2
    invoke-direct {p0, p1, v11, v7}, Lcom/corncop/leo/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 688
    .local v0, "currentView":Landroid/view/View;
    iget-object v7, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 690
    const/4 v2, 0x1

    .local v2, "offset":I
    :goto_3
    iget v7, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    sub-int/2addr v7, v2

    if-ltz v7, :cond_8

    .line 691
    sub-int v1, p1, v2

    .line 692
    .local v1, "leftIndex":I
    add-int v5, p1, v2

    .line 693
    .local v5, "rightIndex":I
    if-ltz v1, :cond_3

    .line 694
    iget-object v9, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    .line 698
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v8

    .line 695
    :goto_4
    invoke-direct {p0, v1, v10, v7}, Lcom/corncop/leo/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 700
    :cond_3
    iget-object v7, p0, Lcom/corncop/leo/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v7}, Landroid/widget/Adapter;->getCount()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 701
    iget-object v9, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    .line 703
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, v8

    .line 702
    :goto_5
    invoke-direct {p0, v5, v11, v7}, Lcom/corncop/leo/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 690
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 687
    .end local v0    # "currentView":Landroid/view/View;
    .end local v1    # "leftIndex":I
    .end local v2    # "offset":I
    .end local v5    # "rightIndex":I
    :cond_5
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_2

    .line 699
    .restart local v0    # "currentView":Landroid/view/View;
    .restart local v1    # "leftIndex":I
    .restart local v2    # "offset":I
    .restart local v5    # "rightIndex":I
    :cond_6
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_4

    .line 703
    :cond_7
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_5

    .line 706
    .end local v1    # "leftIndex":I
    .end local v5    # "rightIndex":I
    :cond_8
    iget-object v7, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iput v7, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    .line 707
    iput p1, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    .line 709
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 710
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6, v10}, Lcom/corncop/leo/ViewFlow;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_6

    .line 712
    .end local v6    # "view":Landroid/view/View;
    :cond_9
    invoke-virtual {p0}, Lcom/corncop/leo/ViewFlow;->requestLayout()V

    .line 713
    iget v7, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    invoke-direct {p0, v7, v10}, Lcom/corncop/leo/ViewFlow;->setVisibleView(IZ)V

    .line 714
    iget-object v7, p0, Lcom/corncop/leo/ViewFlow;->mIndicator:Lcom/corncop/leo/FlowIndicator;

    if-eqz v7, :cond_a

    .line 715
    iget-object v8, p0, Lcom/corncop/leo/ViewFlow;->mIndicator:Lcom/corncop/leo/FlowIndicator;

    iget-object v7, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v9, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget v9, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v8, v7, v9}, Lcom/corncop/leo/ViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    .line 718
    :cond_a
    iget-object v7, p0, Lcom/corncop/leo/ViewFlow;->mViewSwitchListener:Lcom/corncop/leo/ViewFlow$ViewSwitchListener;

    if-eqz v7, :cond_0

    .line 719
    iget-object v8, p0, Lcom/corncop/leo/ViewFlow;->mViewSwitchListener:Lcom/corncop/leo/ViewFlow$ViewSwitchListener;

    iget-object v7, p0, Lcom/corncop/leo/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v9, p0, Lcom/corncop/leo/ViewFlow;->mCurrentBufferIndex:I

    .line 720
    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget v9, p0, Lcom/corncop/leo/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v8, v7, v9}, Lcom/corncop/leo/ViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method public setTimeSpan(J)V
    .locals 1
    .param p1, "timeSpan"    # J

    .prologue
    .line 877
    iput-wide p1, p0, Lcom/corncop/leo/ViewFlow;->timeSpan:J

    .line 878
    return-void
.end method

.method public setmSideBuffer(I)V
    .locals 0
    .param p1, "mSideBuffer"    # I

    .prologue
    .line 881
    iput p1, p0, Lcom/corncop/leo/ViewFlow;->mSideBuffer:I

    .line 882
    return-void
.end method

.method public startAutoFlowTimer()V
    .locals 4

    .prologue
    .line 155
    new-instance v1, Lcom/corncop/leo/ViewFlow$2;

    invoke-direct {v1, p0}, Lcom/corncop/leo/ViewFlow$2;-><init>(Lcom/corncop/leo/ViewFlow;)V

    iput-object v1, p0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    .line 165
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/corncop/leo/ViewFlow;->timeSpan:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 167
    return-void
.end method

.method public stopAutoFlowTimer()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corncop/leo/ViewFlow;->handler:Landroid/os/Handler;

    .line 173
    return-void
.end method
