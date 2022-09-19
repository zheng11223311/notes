.class public abstract Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;
.super Landroid/os/Handler;
.source "AbsBaseSafeHandler.java"


# instance fields
.field protected mContext:Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;

.field protected mWithBaseHandler:Z

.field protected mWsContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;->mWithBaseHandler:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;->mWsContext:Ljava/lang/ref/WeakReference;

    .line 25
    return-void
.end method

.method protected constructor <init>(Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;)V
    .locals 1
    .param p1, "activity"    # Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;->mWithBaseHandler:Z

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;->mWsContext:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;->mWsContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 47
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 50
    :cond_0
    return-void
.end method

.method public setHandler(Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;)V
    .locals 1
    .param p1, "This"    # Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 40
    .local v0, "activity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;>;"
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;->mWsContext:Ljava/lang/ref/WeakReference;

    .line 41
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;->mContext:Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;

    .line 42
    return-void
.end method

.method public setHandler(Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;Z)V
    .locals 1
    .param p1, "This"    # Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;
    .param p2, "witchBaseHandler"    # Z

    .prologue
    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 33
    .local v0, "activity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;>;"
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;->mWsContext:Ljava/lang/ref/WeakReference;

    .line 34
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;->mContext:Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;

    .line 35
    iput-boolean p2, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;->mWithBaseHandler:Z

    .line 36
    return-void
.end method
