.class Lcom/tudou/detail/DetailModel$1;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->voteResult(Lcom/tudou/detail/vo/VoteInfo;Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$info:Lcom/tudou/detail/vo/VoteInfo;

.field final synthetic val$lis:Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/vo/VoteInfo;Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;)V
    .locals 0

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$1;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$1;->val$info:Lcom/tudou/detail/vo/VoteInfo;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$1;->val$lis:Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1256
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$1;->val$lis:Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$1;->val$info:Lcom/tudou/detail/vo/VoteInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2, v3}, Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;->onVoteResultGetted(ZLcom/tudou/detail/vo/VoteInfo;Ljava/lang/String;I)V

    .line 1257
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 17
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1221
    invoke-virtual/range {p1 .. p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v7

    .line 1222
    .local v7, "result":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1224
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v6, "object":Lorg/json/JSONObject;
    const-string v12, "error"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1226
    .local v2, "error":I
    if-nez v2, :cond_3

    .line 1227
    const-string v12, "voteItems"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1228
    .local v8, "tArray":Lorg/json/JSONArray;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 1229
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_1

    .line 1230
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1231
    .local v4, "item":Lorg/json/JSONObject;
    const-string v12, "voteId"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 1232
    .local v10, "voteId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tudou/detail/DetailModel$1;->val$info:Lcom/tudou/detail/vo/VoteInfo;

    invoke-virtual {v12, v10}, Lcom/tudou/detail/vo/VoteInfo;->getItemByVoteId(I)Lcom/tudou/detail/vo/VoteInfo$VoteItem;

    move-result-object v11

    .line 1233
    .local v11, "voteItem":Lcom/tudou/detail/vo/VoteInfo$VoteItem;
    if-eqz v11, :cond_0

    .line 1234
    const-string v12, "percent"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1235
    .local v9, "tPercent":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1236
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, v11, Lcom/tudou/detail/vo/VoteInfo$VoteItem;->mPercent:I

    .line 1229
    .end local v9    # "tPercent":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1242
    .end local v3    # "i":I
    .end local v4    # "item":Lorg/json/JSONObject;
    .end local v10    # "voteId":I
    .end local v11    # "voteItem":Lcom/tudou/detail/vo/VoteInfo$VoteItem;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tudou/detail/DetailModel$1;->val$lis:Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/DetailModel$1;->val$info:Lcom/tudou/detail/vo/VoteInfo;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v12 .. v16}, Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;->onVoteResultGetted(ZLcom/tudou/detail/vo/VoteInfo;Ljava/lang/String;I)V

    .line 1252
    .end local v2    # "error":I
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v8    # "tArray":Lorg/json/JSONArray;
    :cond_2
    :goto_1
    return-void

    .line 1244
    .restart local v2    # "error":I
    .restart local v6    # "object":Lorg/json/JSONObject;
    :cond_3
    const-string v12, "displayWords"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1245
    .local v5, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tudou/detail/DetailModel$1;->val$lis:Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/DetailModel$1;->val$info:Lcom/tudou/detail/vo/VoteInfo;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v12 .. v16}, Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;->onVoteResultGetted(ZLcom/tudou/detail/vo/VoteInfo;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1247
    .end local v2    # "error":I
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1248
    .local v1, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tudou/detail/DetailModel$1;->val$lis:Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/DetailModel$1;->val$info:Lcom/tudou/detail/vo/VoteInfo;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v12 .. v16}, Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;->onVoteResultGetted(ZLcom/tudou/detail/vo/VoteInfo;Ljava/lang/String;I)V

    .line 1249
    sget-object v12, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v12, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
