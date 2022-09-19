.class Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$3;
.super Ljava/lang/Object;
.source "RecommendHomeActivity.java"

# interfaces
.implements Lcom/youtu/apps/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;


# direct methods
.method constructor <init>(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$3;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$3;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-static {v0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->access$000(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$3;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-static {v0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->access$200(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youtu/apps/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youtu/apps/network/HttpRequestManager;

    .prologue
    .line 222
    iget-object v3, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$3;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-static {v3}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->access$000(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/youtu/apps/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    const-class v3, Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    sput-object v3, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    .line 230
    sget-object v3, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    iget-object v3, v3, Lcom/youtu/apps/recommend/vo/AllNewRecommend;->results:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 231
    sget-object v3, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    iget-object v2, v3, Lcom/youtu/apps/recommend/vo/AllNewRecommend;->results:Ljava/util/List;

    .line 233
    .local v2, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommend;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 234
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youtu/apps/recommend/vo/NewRecommend;

    iget-object v3, v3, Lcom/youtu/apps/recommend/vo/NewRecommend;->slider_applications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sput v3, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->POSTER_CHANNELIMAGE_COUNT:I

    .line 236
    iget-object v3, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$3;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-static {v3}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->access$100(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v2    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommend;>;"
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-static {}, Lcom/youtu/apps/widget/YoutuLoading;->dismiss()V

    .line 248
    iget-object v3, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$3;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-static {v3}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->access$200(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V

    goto :goto_0

    .line 238
    .end local v0    # "e":Lcom/alibaba/fastjson/JSONException;
    .restart local v2    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommend;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$3;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-static {v3}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->access$200(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V

    goto :goto_0

    .line 241
    .end local v2    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommend;>;"
    :cond_2
    iget-object v3, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$3;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-static {v3}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->access$200(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
