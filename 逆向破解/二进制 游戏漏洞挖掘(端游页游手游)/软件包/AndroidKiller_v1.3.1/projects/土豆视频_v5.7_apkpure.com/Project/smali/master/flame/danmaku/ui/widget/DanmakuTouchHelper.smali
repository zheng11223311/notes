.class public Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;
.super Ljava/lang/Object;
.source "DanmakuTouchHelper.java"


# instance fields
.field private danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

.field private mDanmakuBounds:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>(Lmaster/flame/danmaku/controller/IDanmakuView;)V
    .locals 1
    .param p1, "danmakuView"    # Lmaster/flame/danmaku/controller/IDanmakuView;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->mDanmakuBounds:Landroid/graphics/RectF;

    .line 23
    return-void
.end method

.method private fetchLatestOne(Lmaster/flame/danmaku/danmaku/model/IDanmakus;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 1
    .param p1, "danmakus"    # Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .prologue
    .line 84
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->last()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized instance(Lmaster/flame/danmaku/controller/IDanmakuView;)Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;
    .locals 2
    .param p0, "danmakuView"    # Lmaster/flame/danmaku/controller/IDanmakuView;

    .prologue
    .line 26
    const-class v1, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;-><init>(Lmaster/flame/danmaku/controller/IDanmakuView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private performClick(Lmaster/flame/danmaku/danmaku/model/IDanmakus;)V
    .locals 1
    .param p1, "danmakus"    # Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .prologue
    .line 57
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuView;->getOnDanmakuClickListener()Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuView;->getOnDanmakuClickListener()Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;->onDanmakuClick(Lmaster/flame/danmaku/danmaku/model/IDanmakus;)V

    .line 60
    :cond_0
    return-void
.end method

.method private performClickWithlatest(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "newest"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 51
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuView;->getOnDanmakuClickListener()Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuView;->getOnDanmakuClickListener()Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;->onDanmakuClick(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 54
    :cond_0
    return-void
.end method

.method private touchHitDanmaku(FF)Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 63
    new-instance v2, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    .line 64
    .local v2, "hitDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->mDanmakuBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    .line 66
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v4}, Lmaster/flame/danmaku/controller/IDanmakuView;->getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v1

    .line 67
    .local v1, "danmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 68
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v3

    .line 69
    .local v3, "iterator":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 80
    .end local v3    # "iterator":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_1
    return-object v2

    .line 70
    .restart local v3    # "iterator":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_2
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    .line 71
    .local v0, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v0, :cond_0

    .line 72
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->mDanmakuBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getLeft()F

    move-result v5

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v6

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getRight()F

    move-result v7

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 73
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->mDanmakuBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    invoke-interface {v2, v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 47
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 32
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->touchHitDanmaku(FF)Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v0

    .line 33
    .local v0, "clickDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    const/4 v1, 0x0

    .line 34
    .local v1, "newestDanmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    invoke-direct {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->performClick(Lmaster/flame/danmaku/danmaku/model/IDanmakus;)V

    .line 36
    invoke-direct {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->fetchLatestOne(Lmaster/flame/danmaku/danmaku/model/IDanmakus;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 39
    :cond_1
    if-eqz v1, :cond_0

    .line 40
    invoke-direct {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->performClickWithlatest(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
