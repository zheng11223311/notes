.class Lcom/mobisage/android/MobiSageAdResSlot;
.super Lcom/mobisage/android/MobiSageSlot;
.source "MobiSageAdResSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageAdResSlot$1;,
        Lcom/mobisage/android/MobiSageAdResSlot$ADResMessageCallback;
    }
.end annotation


# instance fields
.field private final callback:Lcom/mobisage/android/MobiSageAdResSlot$ADResMessageCallback;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageSlot;-><init>(Landroid/os/Handler;)V

    .line 11
    const/16 v0, 0x3f5

    iput v0, p0, Lcom/mobisage/android/MobiSageAdResSlot;->messageCode:I

    .line 12
    new-instance v0, Lcom/mobisage/android/MobiSageAdResSlot$ADResMessageCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mobisage/android/MobiSageAdResSlot$ADResMessageCallback;-><init>(Lcom/mobisage/android/MobiSageAdResSlot;Lcom/mobisage/android/MobiSageAdResSlot$1;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdResSlot;->callback:Lcom/mobisage/android/MobiSageAdResSlot$ADResMessageCallback;

    .line 13
    return-void
.end method

.method private processRequestADResAction(Lcom/mobisage/android/MobiSageAction;)V
    .locals 4
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdResSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Lcom/mobisage/android/MobiSageResMessage;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageResMessage;-><init>()V

    .line 34
    .local v0, "msg":Lcom/mobisage/android/MobiSageResMessage;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdResSlot;->callback:Lcom/mobisage/android/MobiSageAdResSlot$ADResMessageCallback;

    iput-object v1, v0, Lcom/mobisage/android/MobiSageResMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    .line 35
    iget-object v1, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "SourceURL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobisage/android/MobiSageResMessage;->sourceURL:Ljava/lang/String;

    .line 36
    iget-object v1, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "TempURL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobisage/android/MobiSageResMessage;->tempURL:Ljava/lang/String;

    .line 37
    iget-object v1, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "TargetURL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobisage/android/MobiSageResMessage;->targetURL:Ljava/lang/String;

    .line 39
    iget-object v1, p1, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdResSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/mobisage/android/MobiSageResMessage;->messageUUID:Ljava/util/UUID;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobisage/android/MobiSageNetModule;->pushMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    .line 42
    return-void
.end method

.method private processRequestADResMessage(Lcom/mobisage/android/MobiSageResMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageResMessage;

    .prologue
    .line 45
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdResSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageResMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdResSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageResMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 49
    .local v1, "actionUUID":Ljava/util/UUID;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdResSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageResMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdResSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdResSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    .line 55
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 57
    iget-object v2, p1, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    const-string v3, "ErrorText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    const-string v3, "StatusCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_3

    .line 59
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageAdResSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAction;->isActionFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdResSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    invoke-interface {v2, v0}, Lcom/mobisage/android/IMobiSageActionCallback;->onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 19
    invoke-super {p0}, Lcom/mobisage/android/MobiSageSlot;->finalize()V

    .line 20
    return-void
.end method

.method public processMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mobisage/android/MobiSageAction;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageAdResSlot;->processRequestADResAction(Lcom/mobisage/android/MobiSageAction;)V

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mobisage/android/MobiSageResMessage;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageResMessage;

    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageAdResSlot;->processRequestADResMessage(Lcom/mobisage/android/MobiSageResMessage;)V

    goto :goto_0
.end method
