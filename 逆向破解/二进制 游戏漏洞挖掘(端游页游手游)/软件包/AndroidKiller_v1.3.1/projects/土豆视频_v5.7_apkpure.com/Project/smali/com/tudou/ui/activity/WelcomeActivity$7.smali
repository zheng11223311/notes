.class Lcom/tudou/ui/activity/WelcomeActivity$7;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WelcomeActivity;->excuteADTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1479
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5e7f\u544a\u8bf7\u6c42\u5931\u8d25====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "========\u7528\u65f6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1700(Lcom/tudou/ui/activity/WelcomeActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1800(Lcom/tudou/ui/activity/WelcomeActivity;)V

    .line 1485
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 26
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1387
    invoke-virtual/range {p1 .. p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v12

    .line 1388
    .local v12, "jsonString":Ljava/lang/String;
    const-string v20, "TAG_TUDOU"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "\u5e7f\u544a\u8bf7\u6c42\u6210\u529f====="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "========\u7528\u65f6:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1700(Lcom/tudou/ui/activity/WelcomeActivity;)J

    move-result-wide v24

    sub-long v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1393
    .local v11, "jo":Lorg/json/JSONObject;
    const-string v20, "partner"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1394
    const-string v20, "partner"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 1396
    .local v14, "partnerArray":Lorg/json/JSONArray;
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 1397
    .local v15, "partnerLength":I
    if-lez v15, :cond_2

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v21

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/youku/vo/AdStartpage;->partner:Ljava/util/ArrayList;

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/youku/vo/AdStartpage;->partner:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/AdStartpage$Partner;

    .line 1401
    .local v9, "item":Lcom/youku/vo/AdStartpage$Partner;
    invoke-static {}, Lcom/youku/config/Profile;->getPid()Ljava/lang/String;

    move-result-object v20

    iget-object v0, v9, Lcom/youku/vo/AdStartpage$Partner;->pid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, ""

    iget-object v0, v9, Lcom/youku/vo/AdStartpage$Partner;->url:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1403
    iget-object v0, v9, Lcom/youku/vo/AdStartpage$Partner;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    sput-object v20, Lcom/youku/http/URLContainer;->REVIEW_URL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1468
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Lcom/youku/vo/AdStartpage$Partner;
    .end local v11    # "jo":Lorg/json/JSONObject;
    .end local v14    # "partnerArray":Lorg/json/JSONArray;
    .end local v15    # "partnerLength":I
    :catch_0
    move-exception v6

    .line 1469
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1800(Lcom/tudou/ui/activity/WelcomeActivity;)V

    .line 1470
    const-string v21, "TAG_TUDOU"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "\u5e7f\u544a\u63a5\u53e3\u8f6c\u4e49\u5f02\u5e38======"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_8

    const-string v20, "null"

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1474
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 1409
    .restart local v11    # "jo":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v20, "adv_page"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1410
    const-string v20, "adv_page"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1411
    .local v5, "adPage":Lorg/json/JSONObject;
    const-string v20, "VAL"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 1412
    .local v18, "val":Lorg/json/JSONArray;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 1413
    .local v19, "valJsonObject":Lorg/json/JSONObject;
    if-eqz v19, :cond_6

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    const-string v21, "TI"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/youku/vo/AdStartpage;->TI:Ljava/lang/String;

    .line 1416
    const-string v20, "SUS"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1418
    .local v4, "SUS":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v17

    .line 1419
    .local v17, "susLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/youku/vo/AdStartpage;->SUS:[Ljava/lang/String;

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/youku/vo/AdStartpage;->SUSSDK:[I

    .line 1421
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v7, v0, :cond_3

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/youku/vo/AdStartpage;->SUS:[Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "U"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v20, v7

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/youku/vo/AdStartpage;->SUSSDK:[I

    move-object/from16 v20, v0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "SDK"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    aput v21, v20, v7

    .line 1421
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1427
    :cond_3
    const-string v20, "SUE"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1429
    .local v3, "SUE":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v16

    .line 1430
    .local v16, "sueLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/youku/vo/AdStartpage;->SUE:[Ljava/lang/String;

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/youku/vo/AdStartpage;->SUESDK:[I

    .line 1432
    const/4 v7, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v7, v0, :cond_4

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/youku/vo/AdStartpage;->SUE:[Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "U"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v20, v7

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/youku/vo/AdStartpage;->SUESDK:[I

    move-object/from16 v20, v0

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "SDK"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    aput v21, v20, v7

    .line 1432
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1439
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    const-string v21, "RS"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/youku/vo/AdStartpage;->RS:Ljava/lang/String;

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    const-string v21, "CU"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/youku/vo/AdStartpage;->CU:Ljava/lang/String;

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/youku/vo/AdStartpage;->CU:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    const-string v21, "CUF"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/youku/vo/AdStartpage;->CUF:I

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/youku/vo/AdStartpage;->CUF:I

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    const-string v21, "CUU"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/youku/vo/AdStartpage;->CUU:Ljava/lang/String;

    .line 1446
    :cond_5
    const-string v20, "CUM"

    invoke-static/range {v19 .. v20}, Lcom/youku/util/JsonUtils;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1447
    .local v2, "CUM":Lorg/json/JSONArray;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_6

    .line 1448
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 1449
    .local v13, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    new-array v0, v13, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    new-array v0, v13, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/youku/vo/AdStartpage;->CUMSDK:[I

    .line 1452
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_6

    .line 1453
    invoke-static {v2, v7}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1454
    .local v10, "jItem":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "U"

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v20, v7

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/youku/vo/AdStartpage;->CUMSDK:[I

    move-object/from16 v20, v0

    const-string v21, "SDK"

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v21

    aput v21, v20, v7

    .line 1452
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1460
    .end local v2    # "CUM":Lorg/json/JSONArray;
    .end local v3    # "SUE":Lorg/json/JSONArray;
    .end local v4    # "SUS":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v10    # "jItem":Lorg/json/JSONObject;
    .end local v13    # "len":I
    .end local v16    # "sueLength":I
    .end local v17    # "susLength":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/youku/vo/AdStartpage;->RS:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1800(Lcom/tudou/ui/activity/WelcomeActivity;)V

    goto/16 :goto_2

    .line 1463
    :cond_7
    const-string v20, "TAG_TUDOU"

    const-string/jumbo v21, "\u5e7f\u544a\u7d20\u6750\u5730\u5740\u4e0d\u4e3a\u7a7a\uff0c\u663e\u793a\u524d\u66dd\u5149"

    invoke-static/range {v20 .. v21}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1900(Lcom/tudou/ui/activity/WelcomeActivity;)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/WelcomeActivity$7;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/activity/WelcomeActivity;->access$2000(Lcom/tudou/ui/activity/WelcomeActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1470
    .end local v5    # "adPage":Lorg/json/JSONObject;
    .end local v11    # "jo":Lorg/json/JSONObject;
    .end local v18    # "val":Lorg/json/JSONArray;
    .end local v19    # "valJsonObject":Lorg/json/JSONObject;
    .restart local v6    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1
.end method
