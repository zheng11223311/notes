.class public Lcom/youku/gamecenter/services/GetCategoriesService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetCategoriesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetCategoriesService$OnCategoriesServiceListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private parseTags(Lcom/youku/gamecenter/data/CategoryInfo;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 10
    .param p1, "category"    # Lcom/youku/gamecenter/data/CategoryInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
    .param p3, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;>;"
    const/4 v0, 0x0

    .line 93
    .local v0, "array":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 99
    :cond_0
    const/4 v7, 0x0

    .line 120
    :goto_1
    return v7

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Lorg/json/JSONException;
    const-string v7, "PlayFlow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseTags error! json name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 104
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 105
    .local v4, "item":Lorg/json/JSONObject;
    if-nez v4, :cond_3

    .line 102
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 108
    :cond_3
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "key":Ljava/lang/String;
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "value":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 115
    new-instance v7, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    invoke-direct {v7, v5, v6}, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 118
    .end local v4    # "item":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    iput-object v1, p1, Lcom/youku/gamecenter/data/CategoryInfo;->tags:Ljava/util/List;

    .line 120
    const/4 v7, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetCategoriesService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetCategoriesService$OnCategoriesServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetCategoriesService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/CategoriesInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetCategoriesService$OnCategoriesServiceListener;->onSuccess(Lcom/youku/gamecenter/data/CategoriesInfo;)V

    .line 127
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 29
    const-string v9, "GameCategory"

    const-string v10, "parseResponse : jsonString = null "

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v5, 0x0

    .line 36
    .local v5, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .local v6, "jsonObject":Lorg/json/JSONObject;
    move-object v5, v6

    .line 41
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-nez v5, :cond_1

    .line 42
    const-string v9, "GameCategory"

    const-string v10, "parseResponse : jsonObject == null "

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :catch_0
    move-exception v3

    .line 38
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 46
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v9, "data"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 47
    const-string v9, "GameCategory"

    const-string v10, "parseResponse : jsonObject has not data"

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v9, "data"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 53
    .local v2, "dataArray":Lorg/json/JSONArray;
    if-nez v2, :cond_3

    .line 54
    const-string v9, "GameCategory"

    const-string v10, "parseResponse : dataArray == null"

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_3
    new-instance v0, Lcom/youku/gamecenter/data/CategoriesInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/CategoriesInfo;-><init>()V

    .line 59
    .local v0, "category":Lcom/youku/gamecenter/data/CategoriesInfo;
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/CategoriesInfo;->clear()V

    .line 61
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 62
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 63
    .local v7, "object":Lorg/json/JSONObject;
    if-nez v7, :cond_5

    .line 61
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 66
    :cond_5
    new-instance v1, Lcom/youku/gamecenter/data/CategoryInfo;

    invoke-direct {v1}, Lcom/youku/gamecenter/data/CategoryInfo;-><init>()V

    .line 68
    .local v1, "categoryInfo":Lcom/youku/gamecenter/data/CategoryInfo;
    const-string v9, "name"

    invoke-static {v7, v9}, Lcom/youku/gamecenter/services/GetCategoriesService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/youku/gamecenter/data/CategoryInfo;->name:Ljava/lang/String;

    .line 69
    const-string/jumbo v9, "short_name"

    invoke-static {v7, v9}, Lcom/youku/gamecenter/services/GetCategoriesService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/youku/gamecenter/data/CategoryInfo;->short_name:Ljava/lang/String;

    .line 70
    const-string v9, "id"

    invoke-static {v7, v9}, Lcom/youku/gamecenter/services/GetCategoriesService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/youku/gamecenter/data/CategoryInfo;->id:I

    .line 71
    const-string v9, "app_count"

    invoke-static {v7, v9}, Lcom/youku/gamecenter/services/GetCategoriesService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/youku/gamecenter/data/CategoryInfo;->app_count:I

    .line 72
    const-string v9, "icon"

    invoke-static {v7, v9}, Lcom/youku/gamecenter/services/GetCategoriesService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/youku/gamecenter/data/CategoryInfo;->icon:Ljava/lang/String;

    .line 73
    const-string/jumbo v9, "tags"

    invoke-direct {p0, v1, v7, v9}, Lcom/youku/gamecenter/services/GetCategoriesService;->parseTags(Lcom/youku/gamecenter/data/CategoryInfo;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    .line 74
    .local v8, "valid":Z
    if-eqz v8, :cond_4

    .line 77
    const-string v9, "category_describe"

    invoke-static {v7, v9}, Lcom/youku/gamecenter/services/GetCategoriesService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/youku/gamecenter/data/CategoryInfo;->category_describe:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/data/CategoriesInfo;->add(Lcom/youku/gamecenter/data/CategoryInfo;)V

    goto :goto_3

    .line 82
    .end local v1    # "categoryInfo":Lcom/youku/gamecenter/data/CategoryInfo;
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v8    # "valid":Z
    :cond_6
    iput-object v0, p0, Lcom/youku/gamecenter/services/GetCategoriesService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto/16 :goto_0
.end method
