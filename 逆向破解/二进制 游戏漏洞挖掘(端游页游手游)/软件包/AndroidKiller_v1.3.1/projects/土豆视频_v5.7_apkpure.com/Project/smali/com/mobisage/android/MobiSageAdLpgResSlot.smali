.class Lcom/mobisage/android/MobiSageAdLpgResSlot;
.super Lcom/mobisage/android/MobiSageSlot;
.source "MobiSageAdLpgResSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageAdLpgResSlot$1;,
        Lcom/mobisage/android/MobiSageAdLpgResSlot$LPGResMessageCallback;
    }
.end annotation


# instance fields
.field private final callback:Lcom/mobisage/android/MobiSageAdLpgResSlot$LPGResMessageCallback;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageSlot;-><init>(Landroid/os/Handler;)V

    .line 14
    const/16 v0, 0x3f6

    iput v0, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->messageCode:I

    .line 15
    new-instance v0, Lcom/mobisage/android/MobiSageAdLpgResSlot$LPGResMessageCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mobisage/android/MobiSageAdLpgResSlot$LPGResMessageCallback;-><init>(Lcom/mobisage/android/MobiSageAdLpgResSlot;Lcom/mobisage/android/MobiSageAdLpgResSlot$1;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->callback:Lcom/mobisage/android/MobiSageAdLpgResSlot$LPGResMessageCallback;

    .line 16
    return-void
.end method

.method private processRequestLPGResAction(Lcom/mobisage/android/MobiSageAction;)V
    .locals 4
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/mobisage/android/MobiSageResMessage;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageResMessage;-><init>()V

    .line 32
    .local v0, "msg":Lcom/mobisage/android/MobiSageResMessage;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->callback:Lcom/mobisage/android/MobiSageAdLpgResSlot$LPGResMessageCallback;

    iput-object v1, v0, Lcom/mobisage/android/MobiSageResMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    .line 33
    iget-object v1, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "SourceURL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobisage/android/MobiSageResMessage;->sourceURL:Ljava/lang/String;

    .line 34
    iget-object v1, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "TragetURL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobisage/android/MobiSageResMessage;->targetURL:Ljava/lang/String;

    .line 35
    iget-object v1, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "TempURL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobisage/android/MobiSageResMessage;->tempURL:Ljava/lang/String;

    .line 37
    iget-object v1, p1, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/mobisage/android/MobiSageResMessage;->messageUUID:Ljava/util/UUID;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobisage/android/MobiSageNetModule;->pushMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    .line 40
    return-void
.end method

.method private processRequestResMessage(Lcom/mobisage/android/MobiSageResMessage;)V
    .locals 10
    .param p1, "message"    # Lcom/mobisage/android/MobiSageResMessage;

    .prologue
    .line 43
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, p1, Lcom/mobisage/android/MobiSageResMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 45
    .local v1, "actionUUID":Ljava/util/UUID;
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    .line 46
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, p1, Lcom/mobisage/android/MobiSageResMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v6, v0, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 50
    iget-object v6, p1, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    const-string v7, "StatusCode"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 51
    .local v3, "statusCode":I
    const/16 v6, 0x190

    if-lt v3, v6, :cond_1

    .line 52
    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageAdLpgResSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "lpgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p1, Lcom/mobisage/android/MobiSageResMessage;->targetURL:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v4, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v4}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 59
    .local v4, "subAction":Lcom/mobisage/android/MobiSageAction;
    iget-object v6, v4, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v7, "OwnerURL"

    iget-object v8, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v9, "TragetURL"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v6, v4, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v7, "LpgCache"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 62
    iget-object v6, v0, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    iput-object v6, v4, Lcom/mobisage/android/MobiSageAction;->parentActionUUID:Ljava/util/UUID;

    .line 63
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->subActionCallback:Lcom/mobisage/android/MobiSageSlot$SubActionCallback;

    iput-object v6, v4, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    .line 64
    iget-object v6, v0, Lcom/mobisage/android/MobiSageAction;->subActionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->handler:Landroid/os/Handler;

    const/16 v7, 0x3ee

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 68
    .local v5, "subMessage":Landroid/os/Message;
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 71
    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAction;->isActionFinish()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 72
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, v0, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v6, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    if-eqz v6, :cond_0

    .line 74
    iget-object v6, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    invoke-interface {v6, v0}, Lcom/mobisage/android/IMobiSageActionCallback;->onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mobisage/android/MobiSageAction;

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageAdLpgResSlot;->processRequestLPGResAction(Lcom/mobisage/android/MobiSageAction;)V

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mobisage/android/MobiSageResMessage;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageResMessage;

    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageAdLpgResSlot;->processRequestResMessage(Lcom/mobisage/android/MobiSageResMessage;)V

    goto :goto_0
.end method

.method protected processSubActionFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 7
    .param p1, "subAction"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 90
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/mobisage/android/MobiSageAction;->parentActionUUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/mobisage/android/MobiSageAction;->parentActionUUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    .line 93
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->subActionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 95
    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "OwnerURL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "OwnerURL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "ownerURL":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/mobisage/android/MobiSageFileUtility;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "ownerData":Ljava/lang/String;
    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "SourceURL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v6, "TargetURL"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/mobisage/android/MobiSageFileUtility;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .end local v1    # "ownerData":Ljava/lang/String;
    .end local v2    # "ownerURL":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAction;->isActionFinish()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    invoke-interface {v3, v0}, Lcom/mobisage/android/IMobiSageActionCallback;->onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0
.end method
