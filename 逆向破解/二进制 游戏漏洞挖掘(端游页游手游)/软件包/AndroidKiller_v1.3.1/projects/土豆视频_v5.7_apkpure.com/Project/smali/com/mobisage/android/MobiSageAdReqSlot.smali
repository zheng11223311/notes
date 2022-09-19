.class Lcom/mobisage/android/MobiSageAdReqSlot;
.super Lcom/mobisage/android/MobiSageSlot;
.source "MobiSageAdReqSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageAdReqSlot$1;,
        Lcom/mobisage/android/MobiSageAdReqSlot$ReqADMessageCallback;
    }
.end annotation


# instance fields
.field private final callback:Lcom/mobisage/android/MobiSageAdReqSlot$ReqADMessageCallback;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageSlot;-><init>(Landroid/os/Handler;)V

    .line 20
    const/16 v1, 0x3ed

    iput v1, p0, Lcom/mobisage/android/MobiSageAdReqSlot;->messageCode:I

    .line 21
    new-instance v1, Lcom/mobisage/android/MobiSageAdReqSlot$ReqADMessageCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mobisage/android/MobiSageAdReqSlot$ReqADMessageCallback;-><init>(Lcom/mobisage/android/MobiSageAdReqSlot;Lcom/mobisage/android/MobiSageAdReqSlot$1;)V

    iput-object v1, p0, Lcom/mobisage/android/MobiSageAdReqSlot;->callback:Lcom/mobisage/android/MobiSageAdReqSlot$ReqADMessageCallback;

    .line 24
    new-instance v0, Lcom/mobisage/android/MobiSageAdReqFilter;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAdReqFilter;-><init>()V

    .line 25
    .local v0, "filter":Lcom/mobisage/android/MobiSageAdReqFilter;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdReqSlot;->filterLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method private parserADResponseBody(Ljava/lang/String;Lcom/mobisage/android/MobiSageAction;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 14
    .param p1, "responseBody"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/mobisage/android/MobiSageAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mobisage/android/MobiSageAction;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 138
    .local p3, "lpgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 140
    .local v4, "hresult":Z
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 141
    .local v1, "cacheList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {p1, v1}, Lcom/mobisage/android/MobiSageAdModuleHelper;->parserCacheData(Ljava/lang/String;Ljava/util/LinkedList;)Z

    move-result v4

    .line 143
    if-nez v4, :cond_0

    .line 145
    const/4 v11, 0x0

    .line 187
    :goto_0
    return-object v11

    .line 148
    :cond_0
    invoke-static {p1, v1}, Lcom/mobisage/android/MobiSageAdModuleHelper;->parserAdData(Ljava/lang/String;Ljava/util/LinkedList;)Z

    move-result v4

    .line 149
    if-nez v4, :cond_1

    .line 151
    const/4 v11, 0x0

    goto :goto_0

    .line 154
    :cond_1
    const/4 v2, 0x0

    .line 155
    .local v2, "digest":Ljava/security/MessageDigest;
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-ge v5, v11, :cond_6

    .line 156
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 158
    .local v6, "sourceURL":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 159
    .local v7, "startPos":I
    const/4 v11, -0x1

    if-ne v7, v11, :cond_2

    .line 155
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 162
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v9, "targetURL":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v10, "tempURL":Ljava/lang/StringBuilder;
    invoke-static {v2, v6, v9, v10}, Lcom/mobisage/android/MobiSageAdModuleHelper;->generateCacheURLFormSourceURL(Ljava/security/MessageDigest;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v4

    .line 167
    if-nez v4, :cond_3

    .line 169
    const/4 v11, 0x0

    goto :goto_0

    .line 172
    :cond_3
    const-string v11, "."

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "extName":Ljava/lang/String;
    const-string v11, "htm"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "html"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 175
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_5
    new-instance v8, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v8}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 178
    .local v8, "subAction":Lcom/mobisage/android/MobiSageAction;
    iget-object v11, v8, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v12, "SourceURL"

    invoke-virtual {v11, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v11, v8, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v12, "TempURL"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v11, v8, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v12, "TargetURL"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v11, p0, Lcom/mobisage/android/MobiSageAdReqSlot;->subActionCallback:Lcom/mobisage/android/MobiSageSlot$SubActionCallback;

    iput-object v11, v8, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    .line 182
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    iput-object v11, v8, Lcom/mobisage/android/MobiSageAction;->parentActionUUID:Ljava/util/UUID;

    .line 183
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/mobisage/android/MobiSageAction;->subActionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v11, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v6, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .end local v3    # "extName":Ljava/lang/String;
    .end local v6    # "sourceURL":Ljava/lang/String;
    .end local v7    # "startPos":I
    .end local v8    # "subAction":Lcom/mobisage/android/MobiSageAction;
    .end local v9    # "targetURL":Ljava/lang/StringBuilder;
    .end local v10    # "tempURL":Ljava/lang/StringBuilder;
    :cond_6
    move-object v11, p1

    .line 187
    goto/16 :goto_0
.end method

.method private processRequestADAction(Lcom/mobisage/android/MobiSageAction;)V
    .locals 4
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdReqSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/mobisage/android/MobiSageReqAdMessage;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageReqAdMessage;-><init>()V

    .line 47
    .local v0, "msg":Lcom/mobisage/android/MobiSageReqAdMessage;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdReqSlot;->callback:Lcom/mobisage/android/MobiSageAdReqSlot$ReqADMessageCallback;

    iput-object v1, v0, Lcom/mobisage/android/MobiSageReqAdMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    .line 48
    iget-object v1, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/mobisage/android/MobiSageReqAdMessage;->params:Landroid/os/Bundle;

    .line 50
    iget-object v1, p1, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdReqSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/mobisage/android/MobiSageReqAdMessage;->messageUUID:Ljava/util/UUID;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobisage/android/MobiSageNetModule;->pushMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    .line 53
    return-void
.end method

.method private processRequestADMessage(Lcom/mobisage/android/MobiSageReqAdMessage;)V
    .locals 19
    .param p1, "message"    # Lcom/mobisage/android/MobiSageReqAdMessage;

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageAdReqSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mobisage/android/MobiSageReqAdMessage;->messageUUID:Ljava/util/UUID;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageAdReqSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mobisage/android/MobiSageReqAdMessage;->messageUUID:Ljava/util/UUID;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 61
    .local v2, "actionUUID":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageAdReqSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 64
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageAdReqSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobisage/android/MobiSageAction;

    .line 65
    .local v1, "action":Lcom/mobisage/android/MobiSageAction;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageAdReqSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mobisage/android/MobiSageReqAdMessage;->messageUUID:Ljava/util/UUID;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v15, v1, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 68
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/mobisage/android/MobiSageReqAdMessage;->result:Landroid/os/Bundle;

    const-string v16, "StatusCode"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 70
    .local v10, "statusCode":I
    const/16 v15, 0xc8

    if-eq v10, v15, :cond_2

    const/16 v15, 0x12e

    if-eq v10, v15, :cond_2

    .line 72
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageAdReqSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0

    .line 75
    :cond_2
    const/4 v9, 0x0

    .line 78
    .local v9, "responseBody":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/mobisage/android/MobiSageReqAdMessage;->result:Landroid/os/Bundle;

    const-string v16, "ResponseBody"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "jsonBody":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_4

    .line 83
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageAdReqSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 96
    .end local v7    # "jsonBody":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 97
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 98
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageAdReqSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0

    .line 87
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v7    # "jsonBody":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v6, "json":Lorg/json/JSONObject;
    const-string/jumbo v15, "template"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 90
    .local v14, "template":Ljava/lang/String;
    const-string v15, "data"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 92
    .local v3, "data":Lorg/json/JSONArray;
    invoke-static {v14}, Lcom/mobisage/android/MobiSageAdModuleHelper;->parserTemplateCacheFromSourceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 94
    const-string v15, "[{#data#}]"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "\\"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 106
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_6

    .line 107
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageAdReqSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    goto/16 :goto_0

    .line 100
    .end local v3    # "data":Lorg/json/JSONArray;
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v7    # "jsonBody":Ljava/lang/String;
    .end local v14    # "template":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 101
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageAdReqSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    goto/16 :goto_0

    .line 110
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "data":Lorg/json/JSONArray;
    .restart local v6    # "json":Lorg/json/JSONObject;
    .restart local v7    # "jsonBody":Ljava/lang/String;
    .restart local v14    # "template":Ljava/lang/String;
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v8, "lpgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1, v8}, Lcom/mobisage/android/MobiSageAdReqSlot;->parserADResponseBody(Ljava/lang/String;Lcom/mobisage/android/MobiSageAction;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, "tempData":Ljava/lang/String;
    if-nez v13, :cond_7

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageAdReqSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    goto/16 :goto_0

    .line 116
    :cond_7
    iget-object v15, v1, Lcom/mobisage/android/MobiSageAction;->subActionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v15}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 117
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mobisage/android/MobiSageAction;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 118
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mobisage/android/MobiSageAction;

    .line 119
    .local v11, "subAction":Lcom/mobisage/android/MobiSageAction;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageAdReqSlot;->handler:Landroid/os/Handler;

    const/16 v16, 0x3f5

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 121
    .local v12, "subMessage":Landroid/os/Message;
    iput-object v11, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 125
    .end local v11    # "subAction":Lcom/mobisage/android/MobiSageAction;
    .end local v12    # "subMessage":Landroid/os/Message;
    :cond_8
    iget-object v15, v1, Lcom/mobisage/android/MobiSageAction;->result:Landroid/os/Bundle;

    const-string v16, "BannerHTML"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eqz v15, :cond_9

    .line 127
    iget-object v15, v1, Lcom/mobisage/android/MobiSageAction;->result:Landroid/os/Bundle;

    const-string v16, "LpgCache"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 129
    :cond_9
    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageAction;->isActionFinish()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageAdReqSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v15, v1, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    if-eqz v15, :cond_0

    .line 132
    iget-object v15, v1, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    invoke-interface {v15, v1}, Lcom/mobisage/android/IMobiSageActionCallback;->onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mobisage/android/MobiSageAction;

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageAdReqSlot;->filterMobiSageAction(Lcom/mobisage/android/MobiSageAction;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageAdReqSlot;->processMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageAdReqSlot;->processRequestADAction(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mobisage/android/MobiSageReqAdMessage;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageReqAdMessage;

    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageAdReqSlot;->processRequestADMessage(Lcom/mobisage/android/MobiSageReqAdMessage;)V

    goto :goto_0
.end method
