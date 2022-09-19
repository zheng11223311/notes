.class public Lcom/youku/widget/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/HorizontalListView$MessageRun;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_SLIDE_Y:I = 0x6


# instance fields
.field private childSelected:Landroid/view/View;

.field private isMove:Z

.field private isgetParintTouch:Z

.field protected mAdapter:Landroid/widget/ListAdapter;

.field public mAlwaysOverrideTouch:Z

.field private mChildHeight:I

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemMoveListener:Landroid/view/View$OnTouchListener;

.field private mOnItemOutUpListener:Landroid/view/View$OnTouchListener;

.field private mOnItemReceiver:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mSpacing:I

.field private xInit:F

.field private yInit:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/HorizontalListView;->mAlwaysOverrideTouch:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    .line 35
    iput v1, p0, Lcom/youku/widget/HorizontalListView;->mRightViewIndex:I

    .line 38
    const v0, 0x7fffffff

    iput v0, p0, Lcom/youku/widget/HorizontalListView;->mMaxX:I

    .line 39
    iput v1, p0, Lcom/youku/widget/HorizontalListView;->mDisplayOffset:I

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 51
    iput-boolean v1, p0, Lcom/youku/widget/HorizontalListView;->mDataChanged:Z

    .line 52
    iput-boolean v1, p0, Lcom/youku/widget/HorizontalListView;->isMove:Z

    .line 54
    iput-boolean v1, p0, Lcom/youku/widget/HorizontalListView;->isgetParintTouch:Z

    .line 134
    new-instance v0, Lcom/youku/widget/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/HorizontalListView$1;-><init>(Lcom/youku/widget/HorizontalListView;)V

    iput-object v0, p0, Lcom/youku/widget/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 394
    iput v1, p0, Lcom/youku/widget/HorizontalListView;->mSpacing:I

    .line 479
    new-instance v0, Lcom/youku/widget/HorizontalListView$3;

    invoke-direct {v0, p0}, Lcom/youku/widget/HorizontalListView$3;-><init>(Lcom/youku/widget/HorizontalListView;)V

    iput-object v0, p0, Lcom/youku/widget/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 79
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/youku/widget/HorizontalListView;->mSpacing:I

    .line 80
    iget v0, p0, Lcom/youku/widget/HorizontalListView;->mSpacing:I

    invoke-virtual {p0, v0}, Lcom/youku/widget/HorizontalListView;->setSpacing(I)V

    .line 82
    invoke-direct {p0}, Lcom/youku/widget/HorizontalListView;->initView()V

    .line 83
    return-void
.end method

.method private ScrollToPos(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x0

    .line 755
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    const-string v0, "test2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScrollToPos \tpos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getRightViewIndex() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getRightViewIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getLeftViewIndex()=  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getLeftViewIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getRightViewIndex()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 766
    invoke-virtual {p0, v3}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/youku/widget/HorizontalListView;->scrollTo(I)V

    .line 768
    :cond_2
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getLeftViewIndex()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 769
    invoke-virtual {p0, v3}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/youku/widget/HorizontalListView;->scrollTo(I)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/youku/widget/HorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/HorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/youku/widget/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/youku/widget/HorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/HorizontalListView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/youku/widget/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/HorizontalListView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/widget/HorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/HorizontalListView;

    .prologue
    .line 31
    iget v0, p0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/youku/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/HorizontalListView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/HorizontalListView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/widget/HorizontalListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/HorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/youku/widget/HorizontalListView;->ScrollToPos(I)V

    return-void
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewPos"    # I

    .prologue
    const/high16 v3, -0x80000000

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 187
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 188
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 191
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/youku/widget/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 193
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 196
    return-void
.end method

.method private fillList(I)V
    .locals 3
    .param p1, "dx"    # I

    .prologue
    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, "edge":I
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 317
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 320
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/youku/widget/HorizontalListView;->fillListRight(II)V

    .line 322
    const/4 v1, 0x0

    .line 323
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 327
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/youku/widget/HorizontalListView;->fillListLeft(II)V

    .line 329
    return-void
.end method

.method private fillListLeft(II)V
    .locals 4
    .param p1, "leftEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 364
    :goto_0
    add-int v1, p1, p2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    if-ltz v1, :cond_0

    .line 365
    iget-object v2, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    iget-object v1, p0, Lcom/youku/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 367
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/youku/widget/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 368
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 369
    iget v1, p0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    .line 370
    iget v1, p0, Lcom/youku/widget/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/youku/widget/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    .line 372
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private fillListRight(II)V
    .locals 4
    .param p1, "rightEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 333
    :goto_0
    add-int v1, p1, p2

    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/youku/widget/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 335
    iget-object v2, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/youku/widget/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/youku/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, "child":Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/youku/widget/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 338
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 340
    iget v1, p0, Lcom/youku/widget/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 342
    const-string v1, "game"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/widget/HorizontalListView;->mCurrentX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rightEdge = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " child width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget v1, p0, Lcom/youku/widget/HorizontalListView;->mCurrentX:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 347
    const/4 v1, 0x0

    iput v1, p0, Lcom/youku/widget/HorizontalListView;->mMaxX:I

    .line 353
    :goto_1
    const-string v1, "game"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/widget/HorizontalListView;->mMaxX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/widget/HorizontalListView;->mNextX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    iget v1, p0, Lcom/youku/widget/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/youku/widget/HorizontalListView;->mRightViewIndex:I

    goto/16 :goto_0

    .line 350
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/youku/widget/HorizontalListView;->mSpacing:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/youku/widget/HorizontalListView;->mSpacing:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/youku/widget/HorizontalListView;->mMaxX:I

    goto :goto_1

    .line 361
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private declared-synchronized initView()V
    .locals 3

    .prologue
    .line 94
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/widget/HorizontalListView;->mRightViewIndex:I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/widget/HorizontalListView;->mDisplayOffset:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/widget/HorizontalListView;->mCurrentX:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/widget/HorizontalListView;->mNextX:I

    .line 99
    const v0, 0x7fffffff

    iput v0, p0, Lcom/youku/widget/HorizontalListView;->mMaxX:I

    .line 100
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    .line 101
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/widget/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/youku/widget/HorizontalListView;->mGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 7
    .param p1, "dx"    # I

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 402
    iget v4, p0, Lcom/youku/widget/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/youku/widget/HorizontalListView;->mDisplayOffset:I

    .line 403
    iget v3, p0, Lcom/youku/widget/HorizontalListView;->mDisplayOffset:I

    .line 404
    .local v3, "left":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 405
    invoke-virtual {p0, v2}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 406
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 407
    .local v1, "childWidth":I
    const/4 v4, 0x0

    add-int v5, v3, v1

    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 410
    iget v4, p0, Lcom/youku/widget/HorizontalListView;->mSpacing:I

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 411
    iget v4, p0, Lcom/youku/widget/HorizontalListView;->mSpacing:I

    add-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childWidth":I
    .end local v2    # "i":I
    .end local v3    # "left":I
    :cond_0
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .locals 4
    .param p1, "dx"    # I

    .prologue
    const/4 v3, 0x0

    .line 375
    invoke-virtual {p0, v3}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, "child":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_0

    .line 377
    iget v1, p0, Lcom/youku/widget/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/youku/widget/HorizontalListView;->mDisplayOffset:I

    .line 378
    iget-object v1, p0, Lcom/youku/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {p0, v0}, Lcom/youku/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 380
    iget v1, p0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    .line 381
    invoke-virtual {p0, v3}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 386
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 387
    iget-object v1, p0, Lcom/youku/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {p0, v0}, Lcom/youku/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 389
    iget v1, p0, Lcom/youku/widget/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/youku/widget/HorizontalListView;->mRightViewIndex:I

    .line 390
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 392
    :cond_1
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/youku/widget/HorizontalListView;->initView()V

    .line 177
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->removeAllViewsInLayout()V

    .line 178
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 242
    instance-of v0, p1, Landroid/view/ViewGroup$LayoutParams;

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 775
    sget-object v0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 776
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 258
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 253
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 248
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getLeftViewIndex()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    return v0
.end method

.method public getRightViewIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/youku/widget/HorizontalListView;->mRightViewIndex:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/HorizontalListView;->isMove:Z

    .line 473
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 474
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 463
    monitor-enter p0

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/youku/widget/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/youku/widget/HorizontalListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 465
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->requestLayout()V

    .line 468
    const/4 v0, 0x1

    return v0

    .line 465
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 781
    sget-object v0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 782
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 269
    iget-object v3, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 312
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 273
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/youku/widget/HorizontalListView;->mDataChanged:Z

    if-eqz v3, :cond_2

    .line 274
    iget v1, p0, Lcom/youku/widget/HorizontalListView;->mCurrentX:I

    .line 275
    .local v1, "oldCurrentX":I
    invoke-direct {p0}, Lcom/youku/widget/HorizontalListView;->initView()V

    .line 276
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->removeAllViewsInLayout()V

    .line 277
    iput v1, p0, Lcom/youku/widget/HorizontalListView;->mNextX:I

    .line 278
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/youku/widget/HorizontalListView;->mDataChanged:Z

    .line 281
    .end local v1    # "oldCurrentX":I
    :cond_2
    iget-object v3, p0, Lcom/youku/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    iget-object v3, p0, Lcom/youku/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 283
    .local v2, "scrollx":I
    iput v2, p0, Lcom/youku/widget/HorizontalListView;->mNextX:I

    .line 286
    .end local v2    # "scrollx":I
    :cond_3
    iget v3, p0, Lcom/youku/widget/HorizontalListView;->mNextX:I

    if-gez v3, :cond_4

    .line 287
    const/4 v3, 0x0

    iput v3, p0, Lcom/youku/widget/HorizontalListView;->mNextX:I

    .line 288
    iget-object v3, p0, Lcom/youku/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 290
    :cond_4
    iget v3, p0, Lcom/youku/widget/HorizontalListView;->mNextX:I

    iget v4, p0, Lcom/youku/widget/HorizontalListView;->mMaxX:I

    if-le v3, v4, :cond_5

    .line 291
    iget v3, p0, Lcom/youku/widget/HorizontalListView;->mMaxX:I

    iput v3, p0, Lcom/youku/widget/HorizontalListView;->mNextX:I

    .line 292
    iget-object v3, p0, Lcom/youku/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 295
    :cond_5
    iget v3, p0, Lcom/youku/widget/HorizontalListView;->mCurrentX:I

    iget v4, p0, Lcom/youku/widget/HorizontalListView;->mNextX:I

    sub-int v0, v3, v4

    .line 297
    .local v0, "dx":I
    invoke-direct {p0, v0}, Lcom/youku/widget/HorizontalListView;->removeNonVisibleItems(I)V

    .line 298
    invoke-direct {p0, v0}, Lcom/youku/widget/HorizontalListView;->fillList(I)V

    .line 299
    invoke-direct {p0, v0}, Lcom/youku/widget/HorizontalListView;->positionItems(I)V

    .line 301
    iget v3, p0, Lcom/youku/widget/HorizontalListView;->mNextX:I

    iput v3, p0, Lcom/youku/widget/HorizontalListView;->mCurrentX:I

    .line 303
    iget-object v3, p0, Lcom/youku/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    new-instance v3, Lcom/youku/widget/HorizontalListView$2;

    invoke-direct {v3, p0}, Lcom/youku/widget/HorizontalListView$2;-><init>(Lcom/youku/widget/HorizontalListView;)V

    invoke-virtual {p0, v3}, Lcom/youku/widget/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    .end local v0    # "dx":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 221
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 222
    invoke-virtual {p0, v1}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/youku/widget/HorizontalListView;->mChildHeight:I

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->getListWidth()I

    move-result v2

    iget v3, p0, Lcom/youku/widget/HorizontalListView;->mChildHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/youku/widget/HorizontalListView;->setMeasuredDimension(II)V

    .line 238
    return-void
.end method

.method public onMove(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 575
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 576
    .local v16, "xNow":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 578
    .local v18, "yNow":F
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 580
    .local v14, "viewRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 582
    .local v15, "xInit1":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    .line 584
    .local v17, "yInit1":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getChildCount()I

    move-result v2

    if-ge v9, v2, :cond_2

    .line 585
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 586
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 587
    .local v10, "left":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v12

    .line 588
    .local v12, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v13

    .line 589
    .local v13, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 590
    .local v8, "bottom":I
    invoke-virtual {v14, v10, v13, v12, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 591
    float-to-int v2, v15

    move/from16 v0, v17

    float-to-int v3, v0

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_0

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v3, v3, 0x1

    add-int v5, v3, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v9

    invoke-interface {v3, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    move-object/from16 v3, p0

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 599
    :cond_0
    move-object/from16 v0, p0

    iput v15, v0, Lcom/youku/widget/HorizontalListView;->xInit:F

    .line 600
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/widget/HorizontalListView;->yInit:F

    .line 602
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/widget/HorizontalListView;->childSelected:Landroid/view/View;

    .line 584
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 609
    .end local v4    # "child":Landroid/view/View;
    .end local v8    # "bottom":I
    .end local v9    # "i":I
    .end local v10    # "left":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v15    # "xInit1":F
    .end local v17    # "yInit1":F
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 611
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/widget/HorizontalListView;->isMove:Z

    if-nez v2, :cond_4

    .line 612
    move-object/from16 v0, p0

    iget v2, v0, Lcom/youku/widget/HorizontalListView;->yInit:F

    sub-float v2, v18, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/youku/widget/HorizontalListView;->xInit:F

    sub-float v2, v16, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/widget/HorizontalListView;->mOnItemMoveListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_3

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/widget/HorizontalListView;->mOnItemMoveListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/widget/HorizontalListView;->childSelected:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 617
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/youku/widget/HorizontalListView;->isMove:Z

    .line 618
    const/4 v2, 0x1

    .line 651
    :goto_1
    return v2

    .line 623
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/widget/HorizontalListView;->mOnItemMoveListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/widget/HorizontalListView;->childSelected:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 624
    const/4 v2, 0x1

    goto :goto_1

    .line 628
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/widget/HorizontalListView;->isMove:Z

    if-eqz v2, :cond_8

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getLeft()I

    move-result v10

    .line 630
    .restart local v10    # "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getRight()I

    move-result v12

    .line 631
    .restart local v12    # "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getTop()I

    move-result v13

    .line 632
    .restart local v13    # "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getBottom()I

    move-result v8

    .line 633
    .restart local v8    # "bottom":I
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v10, v13, v12, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 635
    .local v11, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/widget/HorizontalListView;->mOnItemMoveListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_6

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/widget/HorizontalListView;->mOnItemMoveListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/widget/HorizontalListView;->childSelected:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 639
    :cond_6
    move/from16 v0, v16

    float-to-int v2, v0

    move/from16 v0, v18

    float-to-int v3, v0

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_7

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/widget/HorizontalListView;->mOnItemOutUpListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_7

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/widget/HorizontalListView;->mOnItemOutUpListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/widget/HorizontalListView;->childSelected:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 647
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/youku/widget/HorizontalListView;->isMove:Z

    .line 648
    const/4 v2, 0x0

    goto :goto_1

    .line 651
    .end local v8    # "bottom":I
    .end local v10    # "left":I
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v12    # "right":I
    .end local v13    # "top":I
    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, "handled":Z
    sget-object v1, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 431
    iget-object v1, p0, Lcom/youku/widget/HorizontalListView;->mOnItemReceiver:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {p0, p1}, Lcom/youku/widget/HorizontalListView;->onUpReceive(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/youku/widget/HorizontalListView;->mOnItemMoveListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 435
    invoke-virtual {p0, p1}, Lcom/youku/widget/HorizontalListView;->onMove(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 437
    :cond_1
    if-nez v0, :cond_2

    .line 438
    iget-object v1, p0, Lcom/youku/widget/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 439
    :cond_2
    iget-boolean v1, p0, Lcom/youku/widget/HorizontalListView;->isgetParintTouch:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 457
    :cond_3
    :goto_0
    :pswitch_0
    return v0

    .line 442
    :pswitch_1
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 448
    :pswitch_2
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 451
    :pswitch_3
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onUpReceive(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 661
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 662
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 663
    .local v22, "viewRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    move/from16 v23, v0

    .line 664
    .local v23, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v0, v4

    move/from16 v24, v0

    .line 666
    .local v24, "y":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getChildCount()I

    move-result v4

    if-ge v15, v4, :cond_3

    .line 667
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 668
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v16

    .line 669
    .local v16, "left":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v20

    .line 670
    .local v20, "right":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getTop()I

    move-result v5

    add-int v21, v4, v5

    .line 671
    .local v21, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getBottom()I

    move-result v5

    add-int v14, v4, v5

    .line 672
    .local v14, "bottom":I
    move-object/from16 v0, v22

    move/from16 v1, v16

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 673
    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v4, :cond_0

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int v7, v5, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v8, v15

    invoke-interface {v5, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    move-object/from16 v5, p0

    invoke-interface/range {v4 .. v9}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 679
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/widget/HorizontalListView;->mOnItemReceiver:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v4, :cond_1

    .line 680
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/widget/HorizontalListView;->mOnItemReceiver:Landroid/widget/AdapterView$OnItemClickListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int v7, v5, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/youku/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v8, v15

    invoke-interface {v5, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    move-object/from16 v5, p0

    invoke-interface/range {v4 .. v9}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 684
    :cond_1
    const/4 v4, 0x1

    .line 728
    .end local v6    # "child":Landroid/view/View;
    .end local v14    # "bottom":I
    .end local v15    # "i":I
    .end local v16    # "left":I
    .end local v20    # "right":I
    .end local v21    # "top":I
    .end local v22    # "viewRect":Landroid/graphics/Rect;
    .end local v23    # "x":I
    .end local v24    # "y":I
    :goto_1
    return v4

    .line 666
    .restart local v6    # "child":Landroid/view/View;
    .restart local v14    # "bottom":I
    .restart local v15    # "i":I
    .restart local v16    # "left":I
    .restart local v20    # "right":I
    .restart local v21    # "top":I
    .restart local v22    # "viewRect":Landroid/graphics/Rect;
    .restart local v23    # "x":I
    .restart local v24    # "y":I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 689
    .end local v6    # "child":Landroid/view/View;
    .end local v14    # "bottom":I
    .end local v16    # "left":I
    .end local v20    # "right":I
    .end local v21    # "top":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getLeft()I

    move-result v16

    .line 690
    .restart local v16    # "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getRight()I

    move-result v20

    .line 691
    .restart local v20    # "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getTop()I

    move-result v21

    .line 692
    .restart local v21    # "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getBottom()I

    move-result v14

    .line 693
    .restart local v14    # "bottom":I
    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 695
    .local v19, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v17

    .line 700
    .local v17, "maxX":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/youku/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v18

    .line 702
    .local v18, "minX":I
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 703
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/widget/HorizontalListView;->mOnItemReceiver:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v9, p0

    invoke-interface/range {v8 .. v13}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 714
    :cond_4
    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    .line 706
    :cond_5
    move/from16 v0, v23

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 707
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/widget/HorizontalListView;->mOnItemReceiver:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/youku/widget/HorizontalListView;->getChildCount()I

    move-result v4

    add-int/lit8 v11, v4, -0x1

    const-wide/16 v12, 0x0

    move-object/from16 v9, p0

    invoke-interface/range {v8 .. v13}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_2

    .line 718
    .end local v17    # "maxX":I
    .end local v18    # "minX":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/widget/HorizontalListView;->mOnItemReceiver:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v4, :cond_7

    .line 719
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/widget/HorizontalListView;->mOnItemReceiver:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v9, p0

    invoke-interface/range {v8 .. v13}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 722
    :cond_7
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 728
    .end local v14    # "bottom":I
    .end local v15    # "i":I
    .end local v16    # "left":I
    .end local v19    # "rect":Landroid/graphics/Rect;
    .end local v20    # "right":I
    .end local v21    # "top":I
    .end local v22    # "viewRect":Landroid/graphics/Rect;
    .end local v23    # "x":I
    .end local v24    # "y":I
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 5
    .param p1, "x"    # I

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/youku/widget/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/youku/widget/HorizontalListView;->mNextX:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 418
    invoke-virtual {p0}, Lcom/youku/widget/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    monitor-exit p0

    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 31
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/youku/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/youku/widget/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 171
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/youku/widget/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 172
    invoke-direct {p0}, Lcom/youku/widget/HorizontalListView;->reset()V

    .line 173
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/youku/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 113
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/youku/widget/HorizontalListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 119
    return-void
.end method

.method public setOnItemMoveListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/youku/widget/HorizontalListView;->mOnItemMoveListener:Landroid/view/View$OnTouchListener;

    .line 123
    return-void
.end method

.method public setOnItemReceiverListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/youku/widget/HorizontalListView;->mOnItemReceiver:Landroid/widget/AdapterView$OnItemClickListener;

    .line 132
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/youku/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 108
    return-void
.end method

.method public setOnItemUpOutListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/youku/widget/HorizontalListView;->mOnItemOutUpListener:Landroid/view/View$OnTouchListener;

    .line 127
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 183
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    .line 397
    iput p1, p0, Lcom/youku/widget/HorizontalListView;->mSpacing:I

    .line 398
    return-void
.end method

.method public setrequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "isgetParintTouch"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/youku/widget/HorizontalListView;->isgetParintTouch:Z

    .line 423
    return-void
.end method

.method public startSrcoolTo(Landroid/os/Handler;I)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "possion"    # I

    .prologue
    .line 738
    new-instance v0, Lcom/youku/widget/HorizontalListView$MessageRun;

    invoke-direct {v0, p0, p2}, Lcom/youku/widget/HorizontalListView$MessageRun;-><init>(Lcom/youku/widget/HorizontalListView;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 739
    return-void
.end method
