.class public abstract Lcom/mobisage/android/MobiSageLogicModule;
.super Ljava/lang/Object;
.source "MobiSageLogicModule.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected slotMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mobisage/android/MobiSageSlot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageLogicModule;->handler:Landroid/os/Handler;

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageLogicModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 26
    iget-object v0, p0, Lcom/mobisage/android/MobiSageLogicModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 27
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 31
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3ef

    if-ne v2, v3, :cond_1

    .line 32
    iget-object v2, p0, Lcom/mobisage/android/MobiSageLogicModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 33
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mobisage/android/MobiSageSlot;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobisage/android/MobiSageSlot;

    .line 35
    .local v1, "slot":Lcom/mobisage/android/MobiSageSlot;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mobisage/android/MobiSageAction;

    invoke-virtual {v1, v2}, Lcom/mobisage/android/MobiSageSlot;->hasAction(Lcom/mobisage/android/MobiSageAction;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mobisage/android/MobiSageAction;

    invoke-virtual {v1, v2}, Lcom/mobisage/android/MobiSageSlot;->processCancelMobiSageAction(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0

    .line 38
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mobisage/android/MobiSageSlot;>;"
    .end local v1    # "slot":Lcom/mobisage/android/MobiSageSlot;
    :cond_1
    iget-object v2, p0, Lcom/mobisage/android/MobiSageLogicModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    iget-object v2, p0, Lcom/mobisage/android/MobiSageLogicModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobisage/android/MobiSageSlot;

    invoke-virtual {v2, p1}, Lcom/mobisage/android/MobiSageSlot;->processMessage(Landroid/os/Message;)V

    .line 40
    const/4 v2, 0x1

    .line 42
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/mobisage/android/MobiSageLogicModule;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 47
    .local v0, "message":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 49
    return-void
.end method
