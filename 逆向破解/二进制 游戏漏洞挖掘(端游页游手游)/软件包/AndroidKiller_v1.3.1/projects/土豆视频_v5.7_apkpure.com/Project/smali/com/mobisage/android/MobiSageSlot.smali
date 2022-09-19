.class public abstract Lcom/mobisage/android/MobiSageSlot;
.super Ljava/lang/Object;
.source "MobiSageSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageSlot$1;,
        Lcom/mobisage/android/MobiSageSlot$SubActionCallback;
    }
.end annotation


# instance fields
.field protected actionMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/mobisage/android/MobiSageAction;",
            ">;"
        }
    .end annotation
.end field

.field protected filterLinkedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mobisage/android/MobiSageFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;

.field public messageCode:I

.field protected mtaMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field protected retryTimesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected subActionCallback:Lcom/mobisage/android/MobiSageSlot$SubActionCallback;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mobisage/android/MobiSageSlot;->handler:Landroid/os/Handler;

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageSlot;->filterLinkedList:Ljava/util/LinkedList;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    new-instance v0, Lcom/mobisage/android/MobiSageSlot$SubActionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mobisage/android/MobiSageSlot$SubActionCallback;-><init>(Lcom/mobisage/android/MobiSageSlot;Lcom/mobisage/android/MobiSageSlot$1;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageSlot;->subActionCallback:Lcom/mobisage/android/MobiSageSlot$SubActionCallback;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageSlot;->retryTimesMap:Ljava/util/Map;

    .line 25
    return-void
.end method


# virtual methods
.method protected filterMobiSageAction(Lcom/mobisage/android/MobiSageAction;)Z
    .locals 3
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 47
    iget-object v2, p0, Lcom/mobisage/android/MobiSageSlot;->filterLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 48
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mobisage/android/MobiSageFilter;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageFilter;

    .line 50
    .local v0, "filter":Lcom/mobisage/android/MobiSageFilter;
    invoke-virtual {v0, p1}, Lcom/mobisage/android/MobiSageFilter;->filterMobiSageAction(Lcom/mobisage/android/MobiSageAction;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const/4 v2, 0x1

    .line 53
    .end local v0    # "filter":Lcom/mobisage/android/MobiSageFilter;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageSlot;->handler:Landroid/os/Handler;

    .line 40
    iget-object v0, p0, Lcom/mobisage/android/MobiSageSlot;->filterLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 41
    iget-object v0, p0, Lcom/mobisage/android/MobiSageSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 42
    iget-object v0, p0, Lcom/mobisage/android/MobiSageSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 43
    iget-object v0, p0, Lcom/mobisage/android/MobiSageSlot;->retryTimesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 44
    return-void
.end method

.method public hasAction(Lcom/mobisage/android/MobiSageAction;)Z
    .locals 2
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mobisage/android/MobiSageSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processCancelMobiSageAction(Lcom/mobisage/android/MobiSageAction;)V
    .locals 4
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 107
    iget-object v2, p0, Lcom/mobisage/android/MobiSageSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_0
    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageMessage;

    .line 111
    .local v0, "msg":Lcom/mobisage/android/MobiSageMessage;
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mobisage/android/MobiSageNetModule;->cancelMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    .line 112
    iget-object v2, p0, Lcom/mobisage/android/MobiSageSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/mobisage/android/MobiSageMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    .end local v0    # "msg":Lcom/mobisage/android/MobiSageMessage;
    :cond_0
    :goto_1
    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->subActionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->subActionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobisage/android/MobiSageAction;

    .line 117
    .local v1, "subAction":Lcom/mobisage/android/MobiSageAction;
    invoke-static {}, Lcom/mobisage/android/MobiSageAdModule;->getInstance()Lcom/mobisage/android/MobiSageAdModule;

    move-result-object v2

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3, v1}, Lcom/mobisage/android/MobiSageAdModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V

    goto :goto_1

    .line 120
    .end local v1    # "subAction":Lcom/mobisage/android/MobiSageAction;
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 57
    return-void
.end method

.method public final processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V
    .locals 4
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 60
    iget-object v2, p0, Lcom/mobisage/android/MobiSageSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    invoke-interface {v2, p1}, Lcom/mobisage/android/IMobiSageActionCallback;->onMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/mobisage/android/MobiSageSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :goto_1
    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageMessage;

    .line 68
    .local v0, "resMsg":Lcom/mobisage/android/MobiSageMessage;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/mobisage/android/MobiSageMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mobisage/android/MobiSageNetModule;->cancelMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    goto :goto_1

    .line 71
    .end local v0    # "resMsg":Lcom/mobisage/android/MobiSageMessage;
    :cond_2
    :goto_2
    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->subActionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->subActionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobisage/android/MobiSageAction;

    .line 73
    .local v1, "subAction":Lcom/mobisage/android/MobiSageAction;
    invoke-virtual {p0, v1}, Lcom/mobisage/android/MobiSageSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_2

    .line 75
    .end local v1    # "subAction":Lcom/mobisage/android/MobiSageAction;
    :cond_3
    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    invoke-interface {v2, p1}, Lcom/mobisage/android/IMobiSageActionCallback;->onMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0
.end method

.method protected processSubActionError(Lcom/mobisage/android/MobiSageAction;)V
    .locals 3
    .param p1, "subAction"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/mobisage/android/MobiSageSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->parentActionUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->parentActionUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    .line 96
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->subActionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0
.end method

.method protected processSubActionFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 3
    .param p1, "subAction"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/mobisage/android/MobiSageSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->parentActionUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/mobisage/android/MobiSageSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->parentActionUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    .line 83
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->subActionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAction;->isActionFinish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/mobisage/android/MobiSageSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    invoke-interface {v1, v0}, Lcom/mobisage/android/IMobiSageActionCallback;->onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0
.end method
