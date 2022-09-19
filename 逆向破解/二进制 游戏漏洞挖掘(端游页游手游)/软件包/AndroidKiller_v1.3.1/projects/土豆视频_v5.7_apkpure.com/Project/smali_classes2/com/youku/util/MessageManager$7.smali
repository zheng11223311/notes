.class Lcom/youku/util/MessageManager$7;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/MessageManager;->getCheckedMessage(ILcom/youku/util/IMessageFinish;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/util/MessageManager;

.field final synthetic val$onFinish:Lcom/youku/util/IMessageFinish;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/youku/util/MessageManager;ILcom/youku/util/IMessageFinish;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/youku/util/MessageManager$7;->this$0:Lcom/youku/util/MessageManager;

    iput p2, p0, Lcom/youku/util/MessageManager$7;->val$page:I

    iput-object p3, p0, Lcom/youku/util/MessageManager$7;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 357
    const-string v0, "MessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCheckedMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/youku/util/MessageManager$7;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/youku/util/MessageManager$7;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v0}, Lcom/youku/util/IMessageFinish;->onFailed()V

    .line 360
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 13
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v12, 0x0

    .line 318
    iget v10, p0, Lcom/youku/util/MessageManager$7;->val$page:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 319
    iget-object v10, p0, Lcom/youku/util/MessageManager$7;->this$0:Lcom/youku/util/MessageManager;

    iget-object v10, v10, Lcom/youku/util/MessageManager;->checks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 320
    iget-object v10, p0, Lcom/youku/util/MessageManager$7;->this$0:Lcom/youku/util/MessageManager;

    iput v12, v10, Lcom/youku/util/MessageManager;->currentCheckNo:I

    .line 322
    :cond_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v9

    .line 323
    .local v9, "str":Ljava/lang/String;
    const-string v10, "MessageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCheckedMessage "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 326
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v10, "msg"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, "state":Ljava/lang/String;
    const-string v10, "success"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 328
    const-string v10, "data"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 329
    .local v1, "data":Lorg/json/JSONObject;
    iget-object v10, p0, Lcom/youku/util/MessageManager$7;->this$0:Lcom/youku/util/MessageManager;

    const-string v11, "total"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/youku/util/MessageManager;->currentCheckNo:I

    .line 330
    const-string v10, "dataList"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 331
    .local v7, "result":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 332
    new-instance v0, Lcom/youku/vo/MessageChecked;

    invoke-direct {v0}, Lcom/youku/vo/MessageChecked;-><init>()V

    .line 333
    .local v0, "check":Lcom/youku/vo/MessageChecked;
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 334
    .local v4, "item":Lorg/json/JSONObject;
    const-string v10, "status"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/vo/MessageChecked;->status:Ljava/lang/String;

    .line 335
    const-string v10, "msgId"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/vo/MessageChecked;->msgId:Ljava/lang/String;

    .line 336
    const-string v10, "destUid"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/vo/MessageChecked;->destUid:Ljava/lang/String;

    .line 337
    const-string v10, "createTime"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/vo/MessageChecked;->createTime:Ljava/lang/String;

    .line 338
    const-string v10, "channel"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/vo/MessageChecked;->channel:Ljava/lang/String;

    .line 339
    const-string v10, "msg"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 340
    .local v5, "jb":Lorg/json/JSONObject;
    iget-object v10, v0, Lcom/youku/vo/MessageChecked;->msg:Lcom/youku/vo/MessageChecked$CheckMsg;

    const-string v11, "content"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/youku/vo/MessageChecked$CheckMsg;->content:Ljava/lang/String;

    .line 341
    iget-object v10, v0, Lcom/youku/vo/MessageChecked;->msg:Lcom/youku/vo/MessageChecked$CheckMsg;

    const-string v11, "title"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/youku/vo/MessageChecked$CheckMsg;->title:Ljava/lang/String;

    .line 342
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checked"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/youku/vo/MessageChecked;->msgId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v0, Lcom/youku/vo/MessageChecked;->isReaded:Z

    .line 343
    iget-object v10, p0, Lcom/youku/util/MessageManager$7;->this$0:Lcom/youku/util/MessageManager;

    iget-object v10, v10, Lcom/youku/util/MessageManager;->checks:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    .end local v0    # "check":Lcom/youku/vo/MessageChecked;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v4    # "item":Lorg/json/JSONObject;
    .end local v5    # "jb":Lorg/json/JSONObject;
    .end local v7    # "result":Lorg/json/JSONArray;
    :cond_1
    iget-object v10, p0, Lcom/youku/util/MessageManager$7;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v10, :cond_2

    .line 347
    iget-object v10, p0, Lcom/youku/util/MessageManager$7;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v10}, Lcom/youku/util/IMessageFinish;->onSuccess()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v8    # "state":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e":Lorg/json/JSONException;
    iget-object v10, p0, Lcom/youku/util/MessageManager$7;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v10, :cond_2

    .line 350
    iget-object v10, p0, Lcom/youku/util/MessageManager$7;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v10}, Lcom/youku/util/IMessageFinish;->onFailed()V

    goto :goto_1
.end method
