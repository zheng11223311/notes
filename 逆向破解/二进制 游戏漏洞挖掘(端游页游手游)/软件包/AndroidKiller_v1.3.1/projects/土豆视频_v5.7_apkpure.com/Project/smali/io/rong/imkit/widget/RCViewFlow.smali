.class public Lio/rong/imkit/widget/RCViewFlow;
.super Landroid/widget/AdapterView;
.source "RCViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;,
        Lio/rong/imkit/widget/RCViewFlow$LazyInit;,
        Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;,
        Lio/rong/imkit/widget/RCViewFlow$ViewSwitchListener;
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

.field private static final SNAP_VELOCITY:I = 0x3e8

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mCurrentAdapterIndex:I

.field private mCurrentBufferIndex:I

.field private mCurrentScreen:I

.field private mDataSetObserver:Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;

.field private mFirstLayout:Z

.field private mIndicator:Lio/rong/imkit/widget/FlowIndicator;

.field private mLastMotionX:F

.field private mLastObtainedViewWasRecycled:Z

.field private mLastOrientation:I

.field private mLastScrollDirection:I

.field private mLazyInit:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lio/rong/imkit/widget/RCViewFlow$LazyInit;",
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

.field private mViewInitializeListener:Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;

.field private mViewSwitchListener:Lio/rong/imkit/widget/RCViewFlow$ViewSwitchListener;

.field private orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 56
    iput v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mSideBuffer:I

    .line 59
    iput v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    .line 64
    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mNextScreen:I

    .line 65
    iput-boolean v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mFirstLayout:Z

    .line 68
    const-class v0, Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLazyInit:Ljava/util/EnumSet;

    .line 73
    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastOrientation:I

    .line 78
    iput-boolean v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastObtainedViewWasRecycled:Z

    .line 80
    new-instance v0, Lio/rong/imkit/widget/RCViewFlow$1;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/RCViewFlow$1;-><init>(Lio/rong/imkit/widget/RCViewFlow;)V

    iput-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 115
    const/4 v0, 0x3

    iput v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mSideBuffer:I

    .line 116
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->init()V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sideBuffer"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 120
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 56
    iput v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mSideBuffer:I

    .line 59
    iput v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    .line 64
    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mNextScreen:I

    .line 65
    iput-boolean v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mFirstLayout:Z

    .line 68
    const-class v0, Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLazyInit:Ljava/util/EnumSet;

    .line 73
    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastOrientation:I

    .line 78
    iput-boolean v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastObtainedViewWasRecycled:Z

    .line 80
    new-instance v0, Lio/rong/imkit/widget/RCViewFlow$1;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/RCViewFlow$1;-><init>(Lio/rong/imkit/widget/RCViewFlow;)V

    iput-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 121
    iput p2, p0, Lio/rong/imkit/widget/RCViewFlow;->mSideBuffer:I

    .line 123
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->init()V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mSideBuffer:I

    .line 59
    iput v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    .line 64
    iput v3, p0, Lio/rong/imkit/widget/RCViewFlow;->mNextScreen:I

    .line 65
    iput-boolean v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mFirstLayout:Z

    .line 68
    const-class v1, Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLazyInit:Ljava/util/EnumSet;

    .line 73
    iput v3, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastOrientation:I

    .line 78
    iput-boolean v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastObtainedViewWasRecycled:Z

    .line 80
    new-instance v1, Lio/rong/imkit/widget/RCViewFlow$1;

    invoke-direct {v1, p0}, Lio/rong/imkit/widget/RCViewFlow$1;-><init>(Lio/rong/imkit/widget/RCViewFlow;)V

    iput-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 128
    sget-object v1, Lio/rong/imkit/R$styleable;->RCViewFlow:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, "styledAttrs":Landroid/content/res/TypedArray;
    sget v1, Lio/rong/imkit/R$styleable;->RCViewFlow_RCSideBuffer:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mSideBuffer:I

    .line 131
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->init()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/RCViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/RCViewFlow;

    .prologue
    .line 45
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/widget/RCViewFlow;)I
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/RCViewFlow;

    .prologue
    .line 45
    iget v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    return v0
.end method

.method static synthetic access$102(Lio/rong/imkit/widget/RCViewFlow;I)I
    .locals 0
    .param p0, "x0"    # Lio/rong/imkit/widget/RCViewFlow;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    return p1
.end method

.method static synthetic access$200(Lio/rong/imkit/widget/RCViewFlow;)I
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/RCViewFlow;

    .prologue
    .line 45
    iget v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastScrollDirection:I

    return v0
.end method

.method static synthetic access$300(Lio/rong/imkit/widget/RCViewFlow;I)V
    .locals 0
    .param p0, "x0"    # Lio/rong/imkit/widget/RCViewFlow;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/RCViewFlow;->postViewSwitched(I)V

    return-void
.end method

.method static synthetic access$400(Lio/rong/imkit/widget/RCViewFlow;)I
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/RCViewFlow;

    .prologue
    .line 45
    iget v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    return v0
.end method

.method static synthetic access$500(Lio/rong/imkit/widget/RCViewFlow;)Landroid/widget/Adapter;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/RCViewFlow;

    .prologue
    .line 45
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$600(Lio/rong/imkit/widget/RCViewFlow;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/imkit/widget/RCViewFlow;

    .prologue
    .line 45
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->resetFocus()V

    return-void
.end method

.method private getHeightPadding()I
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getWidthPadding()I
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 135
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    .line 136
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    .line 137
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    .line 138
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 140
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchSlop:I

    .line 141
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mMaximumVelocity:I

    .line 142
    return-void
.end method

.method private initializeView(F)V
    .locals 3
    .param p1, "direction"    # F

    .prologue
    .line 484
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 485
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v1, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->RIGHT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v1, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->RIGHT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 487
    iget v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 488
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewInitializeListener:Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;

    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v0, v2}, Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v1, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->LEFT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v1, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->LEFT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 493
    iget v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    if-lez v0, :cond_0

    .line 494
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewInitializeListener:Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;

    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v0, v2}, Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private logBuffer()V
    .locals 3

    .prologue
    .line 831
    const-string/jumbo v0, "viewflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of mLoadedViews: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Size of mRecycledViews: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const-string/jumbo v0, "viewflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexInAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", IndexInBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    return-void
.end method

.method private makeAndAddView(IZ)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "addToEnd"    # Z

    .prologue
    .line 788
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/RCViewFlow;->obtainView(I)Landroid/view/View;

    move-result-object v0

    .line 789
    .local v0, "view":Landroid/view/View;
    iget-boolean v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastObtainedViewWasRecycled:Z

    invoke-direct {p0, v0, p2, v1}, Lio/rong/imkit/widget/RCViewFlow;->setupChild(Landroid/view/View;ZZ)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private obtainView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, -0x1

    .line 793
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getRecycledView()Landroid/view/View;

    move-result-object v0

    .line 794
    .local v0, "convertView":Landroid/view/View;
    iget-object v3, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3, p1, v0, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 795
    .local v2, "view":Landroid/view/View;
    if-eq v2, v0, :cond_0

    if-eqz v0, :cond_0

    .line 796
    iget-object v3, p0, Lio/rong/imkit/widget/RCViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 797
    :cond_0
    if-ne v2, v0, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastObtainedViewWasRecycled:Z

    .line 798
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 799
    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1

    .line 800
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 801
    .restart local v1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    :cond_1
    return-object v2

    .line 797
    .end local v1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private postViewSwitched(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    const/4 v3, 0x1

    .line 714
    if-nez p1, :cond_0

    .line 766
    :goto_0
    return-void

    .line 717
    :cond_0
    if-lez p1, :cond_5

    .line 718
    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    .line 719
    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    .line 720
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v2, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->LEFT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 721
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v2, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->RIGHT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 724
    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mSideBuffer:I

    if-le v1, v2, :cond_1

    .line 725
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lio/rong/imkit/widget/RCViewFlow;->recycleView(Landroid/view/View;)V

    .line 726
    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    .line 730
    :cond_1
    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mSideBuffer:I

    add-int v0, v1, v2

    .line 731
    .local v0, "newBufferIndex":I
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 732
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v3}, Lio/rong/imkit/widget/RCViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 754
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->requestLayout()V

    .line 755
    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    invoke-direct {p0, v1, v3}, Lio/rong/imkit/widget/RCViewFlow;->setVisibleView(IZ)V

    .line 756
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mIndicator:Lio/rong/imkit/widget/FlowIndicator;

    if-eqz v1, :cond_3

    .line 757
    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mIndicator:Lio/rong/imkit/widget/FlowIndicator;

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v3, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v2, v1, v3}, Lio/rong/imkit/widget/FlowIndicator;->onSwitched(Landroid/view/View;I)V

    .line 760
    :cond_3
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewSwitchListener:Lio/rong/imkit/widget/RCViewFlow$ViewSwitchListener;

    if-eqz v1, :cond_4

    .line 761
    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewSwitchListener:Lio/rong/imkit/widget/RCViewFlow$ViewSwitchListener;

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v3, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v2, v1, v3}, Lio/rong/imkit/widget/RCViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    .line 765
    :cond_4
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->logBuffer()V

    goto :goto_0

    .line 735
    .end local v0    # "newBufferIndex":I
    :cond_5
    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    .line 736
    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    .line 737
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v2, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->LEFT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLazyInit:Ljava/util/EnumSet;

    sget-object v2, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->RIGHT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 741
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    sub-int/2addr v1, v2

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mSideBuffer:I

    if-le v1, v2, :cond_6

    .line 742
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lio/rong/imkit/widget/RCViewFlow;->recycleView(Landroid/view/View;)V

    .line 746
    :cond_6
    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mSideBuffer:I

    sub-int v0, v1, v2

    .line 747
    .restart local v0    # "newBufferIndex":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 748
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lio/rong/imkit/widget/RCViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 749
    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    goto/16 :goto_1
.end method

.method private resetFocus()V
    .locals 4

    .prologue
    .line 694
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->logBuffer()V

    .line 695
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->recycleViews()V

    .line 696
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->removeAllViewsInLayout()V

    .line 697
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLazyInit:Ljava/util/EnumSet;

    const-class v2, Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 699
    const/4 v1, 0x0

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lio/rong/imkit/widget/RCViewFlow;->mSideBuffer:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lio/rong/imkit/widget/RCViewFlow;->mSideBuffer:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 702
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lio/rong/imkit/widget/RCViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 703
    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    if-ne v0, v1, :cond_0

    .line 704
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    .line 705
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewInitializeListener:Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;

    if-eqz v1, :cond_0

    .line 706
    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewInitializeListener:Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v2, v1, v3}, Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    .line 701
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_1
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->logBuffer()V

    .line 710
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->requestLayout()V

    .line 711
    return-void
.end method

.method private setVisibleView(IZ)V
    .locals 6
    .param p1, "indexInBuffer"    # I
    .param p2, "uiThread"    # Z

    .prologue
    const/4 v4, 0x0

    .line 561
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentScreen:I

    .line 563
    iget v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int v3, v0, v1

    .line 564
    .local v3, "dx":I
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 566
    if-nez v3, :cond_0

    .line 567
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lio/rong/imkit/widget/RCViewFlow;->onScrollChanged(IIII)V

    .line 568
    :cond_0
    if-eqz p2, :cond_1

    .line 569
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->invalidate()V

    .line 572
    :goto_0
    return-void

    .line 571
    :cond_1
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->postInvalidate()V

    goto :goto_0
.end method

.method private setupChild(Landroid/view/View;ZZ)Landroid/view/View;
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "addToEnd"    # Z
    .param p3, "recycle"    # Z

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 777
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 778
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 780
    if-eqz p3, :cond_1

    .line 781
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lio/rong/imkit/widget/RCViewFlow;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 784
    :goto_1
    return-object p1

    :cond_0
    move v1, v2

    .line 781
    goto :goto_0

    .line 783
    :cond_1
    if-eqz p2, :cond_2

    :goto_2
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lio/rong/imkit/widget/RCViewFlow;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private snapToDestination()V
    .locals 4

    .prologue
    .line 515
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildWidth()I

    move-result v0

    .line 516
    .local v0, "screenWidth":I
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 519
    .local v1, "whichScreen":I
    invoke-direct {p0, v1}, Lio/rong/imkit/widget/RCViewFlow;->snapToScreen(I)V

    .line 520
    return-void
.end method

.method private snapToScreen(I)V
    .locals 7
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v2, 0x0

    .line 523
    iget v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentScreen:I

    sub-int v0, p1, v0

    iput v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastScrollDirection:I

    .line 524
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 529
    iput p1, p0, Lio/rong/imkit/widget/RCViewFlow;->mNextScreen:I

    .line 531
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildWidth()I

    move-result v0

    mul-int v6, p1, v0

    .line 532
    .local v6, "newX":I
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getScrollX()I

    move-result v0

    sub-int v3, v6, v0

    .line 533
    .local v3, "delta":I
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 534
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 539
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/widget/RCViewFlow;->scrollTo(II)V

    .line 541
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->postInvalidate()V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mNextScreen:I

    if-eq v0, v3, :cond_0

    .line 543
    const/4 v0, 0x0

    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mNextScreen:I

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentScreen:I

    .line 545
    iput v3, p0, Lio/rong/imkit/widget/RCViewFlow;->mNextScreen:I

    .line 546
    new-instance v0, Lio/rong/imkit/widget/RCViewFlow$2;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/RCViewFlow$2;-><init>(Lio/rong/imkit/widget/RCViewFlow;)V

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/RCViewFlow;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public getChildHeight()I
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->getHeightPadding()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getChildWidth()I
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->getWidthPadding()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 275
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getRecycledView()Landroid/view/View;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 281
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 618
    iget v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public getViewsCount()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 770
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 771
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->getWidthPadding()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lio/rong/imkit/widget/RCViewFlow;->getChildMeasureSpec(III)I

    move-result v1

    .line 772
    .local v1, "childWidthSpec":I
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->getHeightPadding()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lio/rong/imkit/widget/RCViewFlow;->getChildMeasureSpec(III)I

    move-result v0

    .line 773
    .local v0, "childHeightSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 774
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 145
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 146
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastOrientation:I

    .line 147
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v11, 0x3e8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 286
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v9

    .line 289
    :cond_1
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 290
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 292
    :cond_2
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 295
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 297
    .local v6, "x":F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 303
    :pswitch_0
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_3

    .line 304
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    .line 308
    :cond_3
    iput v6, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastMotionX:F

    .line 310
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_4

    move v8, v9

    :cond_4
    iput v8, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    goto :goto_0

    .line 316
    :pswitch_1
    iget v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastMotionX:F

    sub-float/2addr v10, v6

    float-to-int v2, v10

    .line 318
    .local v2, "deltaX":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchSlop:I

    if-le v10, v11, :cond_7

    move v7, v8

    .line 320
    .local v7, "xMoved":Z
    :goto_1
    if-eqz v7, :cond_5

    .line 322
    iput v8, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    .line 324
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewInitializeListener:Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;

    if-eqz v10, :cond_5

    .line 325
    int-to-float v10, v2

    invoke-direct {p0, v10}, Lio/rong/imkit/widget/RCViewFlow;->initializeView(F)V

    .line 328
    :cond_5
    iget v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    if-ne v10, v8, :cond_0

    .line 331
    iput v6, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastMotionX:F

    .line 333
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getScrollX()I

    move-result v3

    .line 334
    .local v3, "scrollX":I
    if-gez v2, :cond_8

    .line 335
    if-lez v3, :cond_6

    .line 336
    neg-int v10, v3

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v10, v9}, Lio/rong/imkit/widget/RCViewFlow;->scrollBy(II)V

    :cond_6
    :goto_2
    move v9, v8

    .line 347
    goto :goto_0

    .end local v3    # "scrollX":I
    .end local v7    # "xMoved":Z
    :cond_7
    move v7, v9

    .line 318
    goto :goto_1

    .line 338
    .restart local v3    # "scrollX":I
    .restart local v7    # "xMoved":Z
    :cond_8
    if-lez v2, :cond_6

    .line 339
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Lio/rong/imkit/widget/RCViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getHorizontalFadingEdgeLength()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v3

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getWidth()I

    move-result v11

    sub-int v1, v10, v11

    .line 343
    .local v1, "availableToScroll":I
    if-lez v1, :cond_6

    .line 344
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {p0, v10, v9}, Lio/rong/imkit/widget/RCViewFlow;->scrollBy(II)V

    goto :goto_2

    .line 352
    .end local v1    # "availableToScroll":I
    .end local v2    # "deltaX":I
    .end local v3    # "scrollX":I
    .end local v7    # "xMoved":Z
    :pswitch_2
    iget v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    if-ne v10, v8, :cond_9

    .line 353
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 354
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    iget v8, p0, Lio/rong/imkit/widget/RCViewFlow;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v4, v11, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 355
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v5, v8

    .line 357
    .local v5, "velocityX":I
    if-le v5, v11, :cond_a

    iget v8, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentScreen:I

    if-lez v8, :cond_a

    .line 359
    iget v8, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentScreen:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v8}, Lio/rong/imkit/widget/RCViewFlow;->snapToScreen(I)V

    .line 368
    :goto_3
    iget-object v8, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_9

    .line 369
    iget-object v8, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 370
    const/4 v8, 0x0

    iput-object v8, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 374
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "velocityX":I
    :cond_9
    iput v9, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    goto/16 :goto_0

    .line 360
    .restart local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v5    # "velocityX":I
    :cond_a
    const/16 v8, -0x3e8

    if-ge v5, v8, :cond_b

    iget v8, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_b

    .line 363
    iget v8, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentScreen:I

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lio/rong/imkit/widget/RCViewFlow;->snapToScreen(I)V

    goto :goto_3

    .line 365
    :cond_b
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->snapToDestination()V

    goto :goto_3

    .line 378
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "velocityX":I
    :pswitch_3
    iput v9, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    goto/16 :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 248
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getHorizontalFadingEdgeLength()I

    move-result v6

    add-int v1, v5, v6

    .line 250
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildCount()I

    move-result v3

    .line 251
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 252
    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/RCViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 255
    .local v2, "childWidth":I
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getPaddingTop()I

    move-result v5

    add-int v6, v1, v2

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getPaddingTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 257
    add-int/2addr v1, v2

    .line 251
    .end local v2    # "childWidth":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 157
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 158
    .local v10, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 159
    .local v7, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 160
    .local v8, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 162
    .local v5, "heightMode":I
    const/4 v3, 0x0

    .line 163
    .local v3, "childWidth":I
    const/4 v1, 0x0

    .line 164
    .local v1, "childHeight":I
    const/4 v2, 0x0

    .line 166
    .local v2, "childState":I
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->getWidthPadding()I

    move-result v9

    .line 167
    .local v9, "widthPadding":I
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->getHeightPadding()I

    move-result v6

    .line 169
    .local v6, "heightPadding":I
    iget-object v11, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-nez v11, :cond_3

    const/4 v4, 0x0

    .line 170
    .local v4, "count":I
    :goto_0
    if-lez v4, :cond_0

    .line 171
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lio/rong/imkit/widget/RCViewFlow;->obtainView(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lio/rong/imkit/widget/RCViewFlow;->measureChild(Landroid/view/View;II)V

    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 176
    const/16 v11, 0x10

    const/high16 v12, -0x1000000

    shr-int v2, v11, v12

    .line 179
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    sparse-switch v8, :sswitch_data_0

    .line 191
    :cond_1
    :goto_1
    sparse-switch v5, :sswitch_data_1

    .line 204
    :cond_2
    :goto_2
    if-nez v5, :cond_4

    .line 205
    add-int v7, v6, v1

    .line 210
    :goto_3
    invoke-virtual {p0, v10, v7}, Lio/rong/imkit/widget/RCViewFlow;->setMeasuredDimension(II)V

    .line 211
    return-void

    .line 169
    .end local v4    # "count":I
    :cond_3
    iget-object v11, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v11}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    goto :goto_0

    .line 181
    .restart local v4    # "count":I
    :sswitch_0
    add-int v10, v3, v9

    .line 182
    goto :goto_1

    .line 184
    :sswitch_1
    add-int v11, v3, v9

    or-int v10, v11, v2

    .line 185
    goto :goto_1

    .line 187
    :sswitch_2
    add-int v11, v3, v9

    if-ge v10, v11, :cond_1

    .line 188
    const/high16 v11, 0x1000000

    or-int/2addr v10, v11

    goto :goto_1

    .line 193
    :sswitch_3
    add-int v7, v1, v6

    .line 194
    goto :goto_2

    .line 196
    :sswitch_4
    add-int v11, v1, v6

    shr-int/lit8 v12, v2, 0x10

    or-int v7, v11, v12

    .line 197
    goto :goto_2

    .line 199
    :sswitch_5
    add-int v11, v1, v6

    if-ge v7, v11, :cond_2

    .line 200
    const/high16 v11, 0x1000000

    or-int/2addr v7, v11

    goto :goto_2

    .line 207
    :cond_4
    const/high16 v11, -0x1000000

    and-int/2addr v11, v2

    or-int/2addr v7, v11

    goto :goto_3

    .line 179
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 191
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x0 -> :sswitch_3
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "h"    # I
    .param p2, "v"    # I
    .param p3, "oldh"    # I
    .param p4, "oldv"    # I

    .prologue
    .line 501
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onScrollChanged(IIII)V

    .line 502
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mIndicator:Lio/rong/imkit/widget/FlowIndicator;

    if-eqz v1, :cond_0

    .line 508
    iget v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int v0, p1, v1

    .line 510
    .local v0, "hPerceived":I
    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mIndicator:Lio/rong/imkit/widget/FlowIndicator;

    invoke-interface {v1, v0, p2, p3, p4}, Lio/rong/imkit/widget/FlowIndicator;->onScrolled(IIII)V

    .line 512
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

    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onSizeChanged(IIII)V

    .line 233
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildCount()I

    move-result v7

    .line 234
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 235
    invoke-virtual {p0, v8}, Lio/rong/imkit/widget/RCViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 236
    .local v6, "child":Landroid/view/View;
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildWidth()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    .line 234
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 240
    .end local v6    # "child":Landroid/view/View;
    :cond_0
    iget-boolean v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mFirstLayout:Z

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildWidth()I

    move-result v3

    mul-int/2addr v3, v2

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 242
    iput-boolean v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mFirstLayout:Z

    .line 244
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v11, 0x3e8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 385
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildCount()I

    move-result v10

    if-nez v10, :cond_1

    move v9, v8

    .line 480
    :cond_0
    :goto_0
    return v9

    .line 388
    :cond_1
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 389
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 391
    :cond_2
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 394
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 396
    .local v6, "x":F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 402
    :pswitch_0
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_3

    .line 403
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    .line 407
    :cond_3
    iput v6, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastMotionX:F

    .line 409
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_1
    iput v8, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    goto :goto_0

    :cond_4
    move v8, v9

    goto :goto_1

    .line 415
    :pswitch_1
    iget v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastMotionX:F

    sub-float/2addr v10, v6

    float-to-int v2, v10

    .line 417
    .local v2, "deltaX":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchSlop:I

    if-le v10, v11, :cond_6

    move v7, v9

    .line 419
    .local v7, "xMoved":Z
    :goto_2
    if-eqz v7, :cond_5

    .line 421
    iput v9, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    .line 423
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewInitializeListener:Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;

    if-eqz v10, :cond_5

    .line 424
    int-to-float v10, v2

    invoke-direct {p0, v10}, Lio/rong/imkit/widget/RCViewFlow;->initializeView(F)V

    .line 427
    :cond_5
    iget v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    if-ne v10, v9, :cond_0

    .line 430
    iput v6, p0, Lio/rong/imkit/widget/RCViewFlow;->mLastMotionX:F

    .line 432
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getScrollX()I

    move-result v3

    .line 433
    .local v3, "scrollX":I
    if-gez v2, :cond_7

    .line 434
    if-lez v3, :cond_0

    .line 435
    neg-int v10, v3

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v10, v8}, Lio/rong/imkit/widget/RCViewFlow;->scrollBy(II)V

    goto :goto_0

    .end local v3    # "scrollX":I
    .end local v7    # "xMoved":Z
    :cond_6
    move v7, v8

    .line 417
    goto :goto_2

    .line 437
    .restart local v3    # "scrollX":I
    .restart local v7    # "xMoved":Z
    :cond_7
    if-lez v2, :cond_0

    .line 438
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Lio/rong/imkit/widget/RCViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getHorizontalFadingEdgeLength()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v3

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildWidth()I

    move-result v11

    sub-int v1, v10, v11

    .line 442
    .local v1, "availableToScroll":I
    if-lez v1, :cond_0

    .line 443
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {p0, v10, v8}, Lio/rong/imkit/widget/RCViewFlow;->scrollBy(II)V

    goto/16 :goto_0

    .line 451
    .end local v1    # "availableToScroll":I
    .end local v2    # "deltaX":I
    .end local v3    # "scrollX":I
    .end local v7    # "xMoved":Z
    :pswitch_2
    iget v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    if-ne v10, v9, :cond_8

    .line 452
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 453
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    iget v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v4, v11, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 454
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    float-to-int v5, v10

    .line 456
    .local v5, "velocityX":I
    if-le v5, v11, :cond_9

    iget v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentScreen:I

    if-lez v10, :cond_9

    .line 458
    iget v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentScreen:I

    add-int/lit8 v10, v10, -0x1

    invoke-direct {p0, v10}, Lio/rong/imkit/widget/RCViewFlow;->snapToScreen(I)V

    .line 467
    :goto_3
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_8

    .line 468
    iget-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 469
    const/4 v10, 0x0

    iput-object v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 473
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "velocityX":I
    :cond_8
    iput v8, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    goto/16 :goto_0

    .line 459
    .restart local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v5    # "velocityX":I
    :cond_9
    const/16 v10, -0x3e8

    if-ge v5, v10, :cond_a

    iget v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_a

    .line 462
    iget v10, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentScreen:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {p0, v10}, Lio/rong/imkit/widget/RCViewFlow;->snapToScreen(I)V

    goto :goto_3

    .line 464
    :cond_a
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->snapToDestination()V

    goto :goto_3

    .line 477
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "velocityX":I
    :pswitch_3
    invoke-direct {p0}, Lio/rong/imkit/widget/RCViewFlow;->snapToDestination()V

    .line 478
    iput v8, p0, Lio/rong/imkit/widget/RCViewFlow;->mTouchState:I

    goto/16 :goto_0

    .line 396
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
    .line 643
    if-nez p1, :cond_0

    .line 647
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 646
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/RCViewFlow;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected recycleViews()V
    .locals 1

    .prologue
    .line 638
    :goto_0
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/RCViewFlow;->recycleView(Landroid/view/View;)V

    goto :goto_0

    .line 640
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/rong/imkit/widget/RCViewFlow;->setAdapter(Landroid/widget/Adapter;I)V

    .line 596
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;I)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/Adapter;
    .param p2, "initialPosition"    # I

    .prologue
    .line 599
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mDataSetObserver:Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 603
    :cond_0
    iput-object p1, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    .line 605
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 606
    new-instance v0, Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;-><init>(Lio/rong/imkit/widget/RCViewFlow;)V

    iput-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mDataSetObserver:Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;

    .line 607
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow;->mDataSetObserver:Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 610
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 614
    :cond_2
    :goto_0
    return-void

    .line 613
    :cond_3
    invoke-virtual {p0, p2}, Lio/rong/imkit/widget/RCViewFlow;->setSelection(I)V

    goto :goto_0
.end method

.method public setFlowIndicator(Lio/rong/imkit/widget/FlowIndicator;)V
    .locals 1
    .param p1, "flowIndicator"    # Lio/rong/imkit/widget/FlowIndicator;

    .prologue
    .line 633
    iput-object p1, p0, Lio/rong/imkit/widget/RCViewFlow;->mIndicator:Lio/rong/imkit/widget/FlowIndicator;

    .line 634
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow;->mIndicator:Lio/rong/imkit/widget/FlowIndicator;

    invoke-interface {v0, p0}, Lio/rong/imkit/widget/FlowIndicator;->setViewFlow(Lio/rong/imkit/widget/RCViewFlow;)V

    .line 635
    return-void
.end method

.method public setOnViewLazyInitializeListener(Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;)V
    .locals 0
    .param p1, "l"    # Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;

    .prologue
    .line 585
    iput-object p1, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewInitializeListener:Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;

    .line 586
    return-void
.end method

.method public setOnViewSwitchListener(Lio/rong/imkit/widget/RCViewFlow$ViewSwitchListener;)V
    .locals 0
    .param p1, "l"    # Lio/rong/imkit/widget/RCViewFlow$ViewSwitchListener;

    .prologue
    .line 581
    iput-object p1, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewSwitchListener:Lio/rong/imkit/widget/RCViewFlow$ViewSwitchListener;

    .line 582
    return-void
.end method

.method public setSelection(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 655
    const/4 v4, -0x1

    iput v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mNextScreen:I

    .line 656
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 657
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-nez v4, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 661
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 663
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->recycleViews()V

    .line 665
    invoke-direct {p0, p1, v7}, Lio/rong/imkit/widget/RCViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v0

    .line 666
    .local v0, "currentView":Landroid/view/View;
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 668
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewInitializeListener:Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;

    if-eqz v4, :cond_2

    .line 669
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewInitializeListener:Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;

    invoke-interface {v4, v0, p1}, Lio/rong/imkit/widget/RCViewFlow$ViewLazyInitializeListener;->onViewLazyInitialize(Landroid/view/View;I)V

    .line 671
    :cond_2
    const/4 v2, 0x1

    .local v2, "offset":I
    :goto_1
    iget v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mSideBuffer:I

    sub-int/2addr v4, v2

    if-ltz v4, :cond_5

    .line 672
    sub-int v1, p1, v2

    .line 673
    .local v1, "leftIndex":I
    add-int v3, p1, v2

    .line 674
    .local v3, "rightIndex":I
    if-ltz v1, :cond_3

    .line 675
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v1, v6}, Lio/rong/imkit/widget/RCViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 676
    :cond_3
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 677
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v3, v7}, Lio/rong/imkit/widget/RCViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 671
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 680
    .end local v1    # "leftIndex":I
    .end local v3    # "rightIndex":I
    :cond_5
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    .line 681
    iput p1, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    .line 683
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCViewFlow;->requestLayout()V

    .line 684
    iget v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentBufferIndex:I

    invoke-direct {p0, v4, v6}, Lio/rong/imkit/widget/RCViewFlow;->setVisibleView(IZ)V

    .line 685
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mIndicator:Lio/rong/imkit/widget/FlowIndicator;

    if-eqz v4, :cond_6

    .line 686
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mIndicator:Lio/rong/imkit/widget/FlowIndicator;

    iget v5, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v4, v0, v5}, Lio/rong/imkit/widget/FlowIndicator;->onSwitched(Landroid/view/View;I)V

    .line 688
    :cond_6
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewSwitchListener:Lio/rong/imkit/widget/RCViewFlow$ViewSwitchListener;

    if-eqz v4, :cond_0

    .line 689
    iget-object v4, p0, Lio/rong/imkit/widget/RCViewFlow;->mViewSwitchListener:Lio/rong/imkit/widget/RCViewFlow$ViewSwitchListener;

    iget v5, p0, Lio/rong/imkit/widget/RCViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v4, v0, v5}, Lio/rong/imkit/widget/RCViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    goto :goto_0
.end method
