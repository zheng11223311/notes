.class Lcom/mobisage/android/MobiSageConfigureGetSlot;
.super Lcom/mobisage/android/MobiSageSlot;
.source "MobiSageConfigureGetSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageConfigureGetSlot$1;,
        Lcom/mobisage/android/MobiSageConfigureGetSlot$ConfigureCallBack;
    }
.end annotation


# instance fields
.field private final callBack:Lcom/mobisage/android/MobiSageConfigureGetSlot$ConfigureCallBack;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageSlot;-><init>(Landroid/os/Handler;)V

    .line 15
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/mobisage/android/MobiSageConfigureGetSlot;->messageCode:I

    .line 16
    new-instance v0, Lcom/mobisage/android/MobiSageConfigureGetSlot$ConfigureCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mobisage/android/MobiSageConfigureGetSlot$ConfigureCallBack;-><init>(Lcom/mobisage/android/MobiSageConfigureGetSlot;Lcom/mobisage/android/MobiSageConfigureGetSlot$1;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageConfigureGetSlot;->callBack:Lcom/mobisage/android/MobiSageConfigureGetSlot$ConfigureCallBack;

    .line 17
    return-void
.end method

.method private processMobiSageAction(Lcom/mobisage/android/MobiSageAction;)V
    .locals 5
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/mobisage/android/MobiSageConfigureGetSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/mobisage/android/MobiSageConfigureMessage;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageConfigureMessage;-><init>()V

    .line 33
    .local v0, "msg":Lcom/mobisage/android/MobiSageConfigureMessage;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageConfigureGetSlot;->callBack:Lcom/mobisage/android/MobiSageConfigureGetSlot$ConfigureCallBack;

    iput-object v1, v0, Lcom/mobisage/android/MobiSageConfigureMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    .line 34
    iget-object v1, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, v0, Lcom/mobisage/android/MobiSageConfigureMessage;->params:Landroid/os/Bundle;

    const-string v2, "key"

    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "key"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    iget-object v1, p1, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v1, p0, Lcom/mobisage/android/MobiSageConfigureGetSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/mobisage/android/MobiSageConfigureMessage;->messageUUID:Ljava/util/UUID;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobisage/android/MobiSageNetModule;->pushMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    .line 40
    return-void
.end method

.method private processMobiSageConfigueMessage(Lcom/mobisage/android/MobiSageConfigureMessage;)V
    .locals 7
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageConfigureMessage;

    .prologue
    .line 43
    iget-object v5, p0, Lcom/mobisage/android/MobiSageConfigureGetSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p1, Lcom/mobisage/android/MobiSageConfigureMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v5, p0, Lcom/mobisage/android/MobiSageConfigureGetSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p1, Lcom/mobisage/android/MobiSageConfigureMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 47
    .local v1, "actionUUID":Ljava/util/UUID;
    iget-object v5, p0, Lcom/mobisage/android/MobiSageConfigureGetSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p1, Lcom/mobisage/android/MobiSageConfigureMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v5, p0, Lcom/mobisage/android/MobiSageConfigureGetSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    iget-object v5, p0, Lcom/mobisage/android/MobiSageConfigureGetSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    .line 53
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v5, v0, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 55
    iget-object v5, p1, Lcom/mobisage/android/MobiSageConfigureMessage;->result:Landroid/os/Bundle;

    const-string v6, "StatusCode"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 56
    .local v4, "statusCode":I
    const/16 v5, 0xc8

    if-eq v4, v5, :cond_2

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_2

    .line 57
    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageConfigureGetSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0

    .line 62
    :cond_2
    :try_start_0
    iget-object v5, p1, Lcom/mobisage/android/MobiSageConfigureMessage;->result:Landroid/os/Bundle;

    const-string v6, "ResponseBody"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 63
    iget-object v5, p1, Lcom/mobisage/android/MobiSageConfigureMessage;->result:Landroid/os/Bundle;

    const-string v6, "ResponseBody"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "responseBody":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 66
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageConfigureGetSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v3    # "responseBody":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageConfigureGetSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0

    .line 70
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "responseBody":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v5, v0, Lcom/mobisage/android/MobiSageAction;->result:Landroid/os/Bundle;

    const-string v6, "ResponseBody"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAction;->isActionFinish()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    iget-object v5, p0, Lcom/mobisage/android/MobiSageConfigureGetSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v0, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v5, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    if-eqz v5, :cond_0

    .line 77
    iget-object v5, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    invoke-interface {v5, v0}, Lcom/mobisage/android/IMobiSageActionCallback;->onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V

    goto/16 :goto_0

    .line 80
    .end local v3    # "responseBody":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageConfigureGetSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mobisage/android/MobiSageAction;

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageConfigureGetSlot;->processMobiSageAction(Lcom/mobisage/android/MobiSageAction;)V

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mobisage/android/MobiSageConfigureMessage;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageConfigureMessage;

    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageConfigureGetSlot;->processMobiSageConfigueMessage(Lcom/mobisage/android/MobiSageConfigureMessage;)V

    goto :goto_0
.end method
