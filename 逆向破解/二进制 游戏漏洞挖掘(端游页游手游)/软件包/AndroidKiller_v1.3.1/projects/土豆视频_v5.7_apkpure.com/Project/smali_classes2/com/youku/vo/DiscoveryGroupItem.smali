.class public Lcom/youku/vo/DiscoveryGroupItem;
.super Ljava/lang/Object;
.source "DiscoveryGroupItem.java"


# static fields
.field public static search_content:Ljava/lang/String;

.field public static search_hot_word:Ljava/lang/String;

.field public static search_word_ad:Ljava/lang/String;


# instance fields
.field public disconveryItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/youku/vo/DiscoveryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseDiscorver(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 8
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/youku/vo/DiscoveryGroupItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    const-string v6, "search_hot_word"

    invoke-static {p0, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/youku/vo/DiscoveryGroupItem;->search_hot_word:Ljava/lang/String;

    .line 22
    const-string v6, "search_word_ad"

    invoke-static {p0, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/youku/vo/DiscoveryGroupItem;->search_word_ad:Ljava/lang/String;

    .line 23
    const-string v6, "search_content"

    invoke-static {p0, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/youku/vo/DiscoveryGroupItem;->search_content:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, "disconveryGroupItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/youku/vo/DiscoveryGroupItem;>;"
    const-string v6, "results"

    invoke-static {p0, v6}, Lcom/youku/util/JsonUtils;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 26
    .local v5, "results":Lorg/json/JSONArray;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 27
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 28
    invoke-static {v5, v3}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 29
    .local v4, "item":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/youku/vo/DiscoveryItem;->parseDisconveryItem(Lorg/json/JSONObject;)Lcom/youku/vo/DiscoveryItem;

    move-result-object v1

    .line 30
    .local v1, "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    if-nez v1, :cond_0

    .line 27
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    :cond_0
    iget v6, v1, Lcom/youku/vo/DiscoveryItem;->group_number:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DiscoveryGroupItem;

    .line 34
    .local v2, "groupItem":Lcom/youku/vo/DiscoveryGroupItem;
    if-nez v2, :cond_1

    .line 35
    new-instance v2, Lcom/youku/vo/DiscoveryGroupItem;

    .end local v2    # "groupItem":Lcom/youku/vo/DiscoveryGroupItem;
    invoke-direct {v2}, Lcom/youku/vo/DiscoveryGroupItem;-><init>()V

    .line 36
    .restart local v2    # "groupItem":Lcom/youku/vo/DiscoveryGroupItem;
    iget v6, v1, Lcom/youku/vo/DiscoveryItem;->group_number:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_1
    iget-object v6, v2, Lcom/youku/vo/DiscoveryGroupItem;->disconveryItems:Ljava/util/HashMap;

    if-nez v6, :cond_2

    .line 39
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v2, Lcom/youku/vo/DiscoveryGroupItem;->disconveryItems:Ljava/util/HashMap;

    .line 41
    :cond_2
    iget-object v6, v2, Lcom/youku/vo/DiscoveryGroupItem;->disconveryItems:Ljava/util/HashMap;

    iget v7, v1, Lcom/youku/vo/DiscoveryItem;->group_location:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 45
    .end local v1    # "discoveryItem":Lcom/youku/vo/DiscoveryItem;
    .end local v2    # "groupItem":Lcom/youku/vo/DiscoveryGroupItem;
    .end local v3    # "i":I
    .end local v4    # "item":Lorg/json/JSONObject;
    :cond_3
    return-object v0
.end method
