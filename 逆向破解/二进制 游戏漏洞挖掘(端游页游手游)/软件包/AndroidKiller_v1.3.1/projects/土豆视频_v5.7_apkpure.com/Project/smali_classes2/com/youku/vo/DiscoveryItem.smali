.class public Lcom/youku/vo/DiscoveryItem;
.super Ljava/lang/Object;
.source "DiscoveryItem.java"


# static fields
.field public static final app_recommend:Ljava/lang/String; = "app_recommend"

.field public static final cross_platform:Ljava/lang/String; = "cross_platform"

.field public static final danmu:Ljava/lang/String; = "danmu"

.field public static final game_center:Ljava/lang/String; = "game_center"

.field public static final laifeng:Ljava/lang/String; = "laifeng"

.field public static final page_headline:Ljava/lang/String; = "page_headline"

.field public static final ranking_list:Ljava/lang/String; = "ranking_list"

.field public static final recommend_user_list:Ljava/lang/String; = "recommend_user_list"

.field public static final subscription_guide:Ljava/lang/String; = "subscription_guide"

.field public static final the_show:Ljava/lang/String; = "the_show"

.field public static final week_schedule:Ljava/lang/String; = "week_schedule"


# instance fields
.field public group_location:I

.field public group_number:I

.field public module_icon:Ljava/lang/String;

.field public sub_title:Ljava/lang/String;

.field public sub_type:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public title_corner_image:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "dataStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "dataObject":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 63
    return-object p1
.end method

.method public static parseDisconveryItem(Lorg/json/JSONObject;)Lcom/youku/vo/DiscoveryItem;
    .locals 4
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    const-string v2, "sub_type"

    invoke-static {p0, v2}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "sub_type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 33
    .local v0, "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    const-string v2, "page_headline"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/youku/vo/DiscoveryItemPageHeadline;

    invoke-direct {v3}, Lcom/youku/vo/DiscoveryItemPageHeadline;-><init>()V

    invoke-static {v2, v3}, Lcom/youku/vo/DiscoveryItem;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    check-cast v0, Lcom/youku/vo/DiscoveryItem;

    .line 56
    .restart local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    const-string v2, "danmu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/youku/vo/DiscoveryItemDanmu;

    invoke-direct {v3}, Lcom/youku/vo/DiscoveryItemDanmu;-><init>()V

    invoke-static {v2, v3}, Lcom/youku/vo/DiscoveryItem;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    check-cast v0, Lcom/youku/vo/DiscoveryItem;

    .restart local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    goto :goto_0

    .line 37
    :cond_2
    const-string v2, "ranking_list"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/youku/vo/DiscoveryItemRankingList;

    invoke-direct {v3}, Lcom/youku/vo/DiscoveryItemRankingList;-><init>()V

    invoke-static {v2, v3}, Lcom/youku/vo/DiscoveryItem;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    check-cast v0, Lcom/youku/vo/DiscoveryItem;

    .restart local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    goto :goto_0

    .line 39
    :cond_3
    const-string v2, "week_schedule"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 40
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/youku/vo/DiscoveryItem;

    invoke-direct {v3}, Lcom/youku/vo/DiscoveryItem;-><init>()V

    invoke-static {v2, v3}, Lcom/youku/vo/DiscoveryItem;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    check-cast v0, Lcom/youku/vo/DiscoveryItem;

    .restart local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    goto :goto_0

    .line 41
    :cond_4
    const-string v2, "recommend_user_list"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 42
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/youku/vo/DiscoveryItemRecommendUserList;

    invoke-direct {v3}, Lcom/youku/vo/DiscoveryItemRecommendUserList;-><init>()V

    invoke-static {v2, v3}, Lcom/youku/vo/DiscoveryItem;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    check-cast v0, Lcom/youku/vo/DiscoveryItem;

    .restart local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    goto :goto_0

    .line 43
    :cond_5
    const-string v2, "cross_platform"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 44
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/youku/vo/DiscoveryItem;

    invoke-direct {v3}, Lcom/youku/vo/DiscoveryItem;-><init>()V

    invoke-static {v2, v3}, Lcom/youku/vo/DiscoveryItem;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    check-cast v0, Lcom/youku/vo/DiscoveryItem;

    .restart local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    goto :goto_0

    .line 45
    :cond_6
    const-string v2, "app_recommend"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 46
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/youku/vo/DiscoveryItem;

    invoke-direct {v3}, Lcom/youku/vo/DiscoveryItem;-><init>()V

    invoke-static {v2, v3}, Lcom/youku/vo/DiscoveryItem;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    check-cast v0, Lcom/youku/vo/DiscoveryItem;

    .restart local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    goto/16 :goto_0

    .line 47
    :cond_7
    const-string v2, "game_center"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 48
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/youku/vo/DiscoveryItem;

    invoke-direct {v3}, Lcom/youku/vo/DiscoveryItem;-><init>()V

    invoke-static {v2, v3}, Lcom/youku/vo/DiscoveryItem;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    check-cast v0, Lcom/youku/vo/DiscoveryItem;

    .restart local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    goto/16 :goto_0

    .line 49
    :cond_8
    const-string v2, "laifeng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 50
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/youku/vo/DiscoveryItemLF;

    invoke-direct {v3}, Lcom/youku/vo/DiscoveryItemLF;-><init>()V

    invoke-static {v2, v3}, Lcom/youku/vo/DiscoveryItem;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    check-cast v0, Lcom/youku/vo/DiscoveryItem;

    .restart local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    goto/16 :goto_0

    .line 51
    :cond_9
    const-string v2, "subscription_guide"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 52
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/youku/vo/DiscoveryItem;

    invoke-direct {v3}, Lcom/youku/vo/DiscoveryItem;-><init>()V

    invoke-static {v2, v3}, Lcom/youku/vo/DiscoveryItem;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    check-cast v0, Lcom/youku/vo/DiscoveryItem;

    .restart local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    goto/16 :goto_0

    .line 53
    :cond_a
    const-string v2, "the_show"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/youku/vo/DiscoveryItem;

    invoke-direct {v3}, Lcom/youku/vo/DiscoveryItem;-><init>()V

    invoke-static {v2, v3}, Lcom/youku/vo/DiscoveryItem;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    check-cast v0, Lcom/youku/vo/DiscoveryItem;

    .restart local v0    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    goto/16 :goto_0
.end method
