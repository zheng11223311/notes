.class Lcom/tudou/ui/activity/HomePageActivity$4;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/HomePageActivity;->getChannelsData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/HomePageActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/HomePageActivity;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/tudou/ui/activity/HomePageActivity$4;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 869
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 8
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 837
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v5

    .line 840
    .local v5, "str":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 842
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "results"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 845
    .local v4, "resultArray":Lorg/json/JSONArray;
    sget-object v6, Lcom/tudou/ui/activity/HomePageActivity;->channelsdata:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 846
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/tudou/ui/activity/HomePageActivity;->channelsdata:Ljava/util/ArrayList;

    .line 849
    :cond_0
    sget-object v6, Lcom/tudou/ui/activity/HomePageActivity;->channelsdata:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 850
    sget-object v6, Lcom/tudou/ui/activity/HomePageActivity;->channelsdata:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 853
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 854
    new-instance v0, Lcom/youku/vo/ChannelItem;

    invoke-direct {v0}, Lcom/youku/vo/ChannelItem;-><init>()V

    .line 855
    .local v0, "channelItem":Lcom/youku/vo/ChannelItem;
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/youku/vo/ChannelItem;

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "channelItem":Lcom/youku/vo/ChannelItem;
    check-cast v0, Lcom/youku/vo/ChannelItem;

    .line 858
    .restart local v0    # "channelItem":Lcom/youku/vo/ChannelItem;
    sget-object v6, Lcom/tudou/ui/activity/HomePageActivity;->channelsdata:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 860
    .end local v0    # "channelItem":Lcom/youku/vo/ChannelItem;
    .end local v2    # "i":I
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "resultArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 862
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 864
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    return-void
.end method
