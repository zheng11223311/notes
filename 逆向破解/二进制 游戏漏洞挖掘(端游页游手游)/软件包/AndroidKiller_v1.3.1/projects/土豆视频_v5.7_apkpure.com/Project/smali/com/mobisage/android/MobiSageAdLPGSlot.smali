.class Lcom/mobisage/android/MobiSageAdLPGSlot;
.super Lcom/mobisage/android/MobiSageSlot;
.source "MobiSageAdLPGSlot.java"


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageSlot;-><init>(Landroid/os/Handler;)V

    .line 17
    const/16 v0, 0x3ee

    iput v0, p0, Lcom/mobisage/android/MobiSageAdLPGSlot;->messageCode:I

    .line 18
    return-void
.end method

.method private parserLPGResponseBody(Ljava/net/URI;Lcom/mobisage/android/MobiSageAction;)Z
    .locals 16
    .param p1, "ownerURL"    # Ljava/net/URI;
    .param p2, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 72
    const/4 v3, 0x1

    .line 74
    .local v3, "hresult":Z
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v13}, Lcom/mobisage/android/MobiSageFileUtility;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "responseBody":Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 78
    .local v1, "cacheList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {v6, v1}, Lcom/mobisage/android/MobiSageAdModuleHelper;->parserCacheData(Ljava/lang/String;Ljava/util/LinkedList;)Z

    move-result v3

    .line 80
    if-nez v3, :cond_0

    move v4, v3

    .line 119
    .end local v3    # "hresult":Z
    .local v4, "hresult":Z
    :goto_0
    return v4

    .line 84
    .end local v4    # "hresult":Z
    .restart local v3    # "hresult":Z
    :cond_0
    invoke-static {v6, v1}, Lcom/mobisage/android/MobiSageAdModuleHelper;->parserAdData(Ljava/lang/String;Ljava/util/LinkedList;)Z

    move-result v3

    .line 85
    if-nez v3, :cond_1

    move v4, v3

    .line 86
    .end local v3    # "hresult":Z
    .restart local v4    # "hresult":Z
    goto :goto_0

    .line 89
    .end local v4    # "hresult":Z
    .restart local v3    # "hresult":Z
    :cond_1
    const/4 v2, 0x0

    .line 90
    .local v2, "digest":Ljava/security/MessageDigest;
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-ge v5, v13, :cond_5

    .line 91
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    .line 92
    .local v7, "sourceURI":Ljava/net/URI;
    invoke-virtual {v7}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v13

    const-string v14, "file"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 90
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 97
    .local v8, "sourceURL":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 98
    .local v9, "startPos":I
    const/4 v13, -0x1

    if-eq v9, v13, :cond_2

    .line 101
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v11, "targetURL":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v12, "tempURL":Ljava/lang/StringBuilder;
    invoke-static {v2, v8, v11, v12}, Lcom/mobisage/android/MobiSageAdModuleHelper;->generateCacheURLFormSourceURL(Ljava/security/MessageDigest;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v3

    .line 106
    if-nez v3, :cond_4

    move v4, v3

    .line 107
    .end local v3    # "hresult":Z
    .restart local v4    # "hresult":Z
    goto :goto_0

    .line 109
    .end local v4    # "hresult":Z
    .restart local v3    # "hresult":Z
    :cond_4
    new-instance v10, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v10}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 110
    .local v10, "subAction":Lcom/mobisage/android/MobiSageAction;
    iget-object v13, v10, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v14, "OwnerURL"

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v13, v10, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v14, "SourceURL"

    invoke-virtual {v13, v14, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v13, v10, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v14, "TempURL"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v13, v10, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v14, "TargetURL"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mobisage/android/MobiSageAdLPGSlot;->subActionCallback:Lcom/mobisage/android/MobiSageSlot$SubActionCallback;

    iput-object v13, v10, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    .line 115
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    iput-object v13, v10, Lcom/mobisage/android/MobiSageAction;->parentActionUUID:Ljava/util/UUID;

    .line 117
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/mobisage/android/MobiSageAction;->subActionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v13, v10}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v7    # "sourceURI":Ljava/net/URI;
    .end local v8    # "sourceURL":Ljava/lang/String;
    .end local v9    # "startPos":I
    .end local v10    # "subAction":Lcom/mobisage/android/MobiSageAction;
    .end local v11    # "targetURL":Ljava/lang/StringBuilder;
    .end local v12    # "tempURL":Ljava/lang/StringBuilder;
    :cond_5
    move v4, v3

    .line 119
    .end local v3    # "hresult":Z
    .restart local v4    # "hresult":Z
    goto/16 :goto_0
.end method

.method private processRequestLPGCacheAction(Lcom/mobisage/android/MobiSageAction;)V
    .locals 10
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 27
    iget-object v8, p0, Lcom/mobisage/android/MobiSageAdLPGSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v8, v9, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v8, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v9, "LpgCache"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 29
    iget-object v8, p0, Lcom/mobisage/android/MobiSageAdLPGSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v8, p1, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    if-eqz v8, :cond_0

    .line 31
    iget-object v8, p1, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    invoke-interface {v8, p1}, Lcom/mobisage/android/IMobiSageActionCallback;->onMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v8, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v9, "LpgCache"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 37
    .local v3, "lpgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 38
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 39
    .local v4, "lpgURI":Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "file"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 37
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 42
    :cond_2
    invoke-direct {p0, v4, p1}, Lcom/mobisage/android/MobiSageAdLPGSlot;->parserLPGResponseBody(Ljava/net/URI;Lcom/mobisage/android/MobiSageAction;)Z

    goto :goto_2

    .line 45
    .end local v4    # "lpgURI":Ljava/net/URI;
    :cond_3
    iget-object v8, p1, Lcom/mobisage/android/MobiSageAction;->subActionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 46
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mobisage/android/MobiSageAction;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mobisage/android/MobiSageAction;

    .line 49
    .local v6, "subAction":Lcom/mobisage/android/MobiSageAction;
    iget-object v8, v6, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v9, "SourceURL"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "sourceURL":Ljava/lang/String;
    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "extName":Ljava/lang/String;
    const-string v8, "html"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "htm"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 52
    :cond_4
    iget-object v8, p0, Lcom/mobisage/android/MobiSageAdLPGSlot;->handler:Landroid/os/Handler;

    const/16 v9, 0x3f6

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 54
    .local v7, "subMessage":Landroid/os/Message;
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 57
    .end local v7    # "subMessage":Landroid/os/Message;
    :cond_5
    iget-object v8, p0, Lcom/mobisage/android/MobiSageAdLPGSlot;->handler:Landroid/os/Handler;

    const/16 v9, 0x3f5

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 59
    .restart local v7    # "subMessage":Landroid/os/Message;
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 64
    .end local v0    # "extName":Ljava/lang/String;
    .end local v5    # "sourceURL":Ljava/lang/String;
    .end local v6    # "subAction":Lcom/mobisage/android/MobiSageAction;
    .end local v7    # "subMessage":Landroid/os/Message;
    :cond_6
    invoke-virtual {p1}, Lcom/mobisage/android/MobiSageAction;->isActionFinish()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 65
    iget-object v8, p0, Lcom/mobisage/android/MobiSageAdLPGSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v8, p1, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    if-eqz v8, :cond_0

    .line 67
    iget-object v8, p1, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    invoke-interface {v8, p1}, Lcom/mobisage/android/IMobiSageActionCallback;->onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mobisage/android/MobiSageAction;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageAdLPGSlot;->processRequestLPGCacheAction(Lcom/mobisage/android/MobiSageAction;)V

    .line 24
    :cond_0
    return-void
.end method

.method protected processSubActionFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 7
    .param p1, "subAction"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 124
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdLPGSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/mobisage/android/MobiSageAction;->parentActionUUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdLPGSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/mobisage/android/MobiSageAction;->parentActionUUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    .line 127
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->subActionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 129
    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "OwnerURL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "OwnerURL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "ownerURL":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/mobisage/android/MobiSageFileUtility;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 133
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

    .line 137
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/mobisage/android/MobiSageFileUtility;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .end local v1    # "ownerData":Ljava/lang/String;
    .end local v2    # "ownerURL":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAction;->isActionFinish()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdLPGSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    invoke-interface {v3, v0}, Lcom/mobisage/android/IMobiSageActionCallback;->onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0
.end method
