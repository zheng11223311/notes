.class public Lcom/youku/player/module/VideoSeries;
.super Ljava/lang/Object;
.source "VideoSeries.java"


# instance fields
.field public total:I

.field public type:I

.field public videoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/module/VideoSeriesItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeId(Ljava/lang/String;ILandroid/content/Context;)I
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "total"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "typeId":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$string;->detail_tv:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    if-le p1, v3, :cond_1

    .line 105
    const/16 v0, 0x130

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    const/16 v0, 0x12f

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$string;->detail_movie:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    if-le p1, v3, :cond_3

    .line 112
    const/16 v0, 0x12e

    goto :goto_0

    .line 114
    :cond_3
    const/16 v0, 0x12d

    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$string;->detail_variety:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    if-le p1, v3, :cond_5

    .line 119
    const/16 v0, 0x132

    goto :goto_0

    .line 121
    :cond_5
    const/16 v0, 0x131

    goto :goto_0

    .line 123
    :cond_6
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$string;->detail_cartoon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 125
    if-le p1, v3, :cond_7

    .line 126
    const/16 v0, 0x134

    goto :goto_0

    .line 128
    :cond_7
    const/16 v0, 0x133

    goto :goto_0

    .line 130
    :cond_8
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$string;->detail_music:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 132
    const/16 v0, 0x135

    goto :goto_0

    .line 133
    :cond_9
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$string;->detail_memory:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 135
    if-le p1, v3, :cond_a

    .line 136
    const/16 v0, 0x190

    goto :goto_0

    .line 138
    :cond_a
    const/16 v0, 0x191

    goto :goto_0

    .line 140
    :cond_b
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$string;->detail_education:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 142
    if-le p1, v3, :cond_c

    .line 143
    const/16 v0, 0x193

    goto/16 :goto_0

    .line 145
    :cond_c
    const/16 v0, 0x192

    goto/16 :goto_0

    .line 147
    :cond_d
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$string;->detail_ugc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 149
    const/16 v0, 0x194

    goto/16 :goto_0

    .line 150
    :cond_e
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$string;->detail_special:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    if-le p1, v3, :cond_f

    .line 153
    const/16 v0, 0x196

    goto/16 :goto_0

    .line 155
    :cond_f
    const/16 v0, 0x195

    goto/16 :goto_0
.end method

.method public static parseJson(Ljava/lang/String;Landroid/content/Context;)Lcom/youku/player/module/VideoSeries;
    .locals 14
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 51
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v7, "obj":Lorg/json/JSONObject;
    const-string/jumbo v11, "status"

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    move-object v10, v12

    .line 87
    .end local v7    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v10

    .line 55
    .restart local v7    # "obj":Lorg/json/JSONObject;
    :cond_0
    new-instance v10, Lcom/youku/player/module/VideoSeries;

    invoke-direct {v10}, Lcom/youku/player/module/VideoSeries;-><init>()V

    .line 56
    .local v10, "vs":Lcom/youku/player/module/VideoSeries;
    const-string/jumbo v11, "total"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/youku/player/module/VideoSeries;->total:I

    .line 57
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v9, "vList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/module/VideoSeriesItem;>;"
    const-string/jumbo v11, "results"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 60
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    .local v6, "n":I
    :goto_1
    if-ge v3, v6, :cond_2

    .line 61
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 62
    new-instance v8, Lcom/youku/player/module/VideoSeriesItem;

    invoke-direct {v8}, Lcom/youku/player/module/VideoSeriesItem;-><init>()V

    .line 63
    .local v8, "v":Lcom/youku/player/module/VideoSeriesItem;
    const-string/jumbo v11, "videoid"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/youku/player/module/VideoSeriesItem;->videoid:Ljava/lang/String;

    .line 64
    const-string/jumbo v11, "title"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/youku/player/module/VideoSeriesItem;->title:Ljava/lang/String;

    .line 65
    const-string/jumbo v11, "show_videoseq"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/youku/player/module/VideoSeriesItem;->show_videoseq:I

    .line 66
    const-string/jumbo v11, "show_videostage"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/youku/player/module/VideoSeriesItem;->show_videostage:Ljava/lang/String;

    .line 67
    const-string v11, "cats"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/youku/player/module/VideoSeriesItem;->cats:Ljava/lang/String;

    .line 68
    const-string v11, "limit"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/youku/player/module/VideoSeriesItem;->limit:I

    .line 69
    const-string v11, "is_new"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/youku/player/module/VideoSeriesItem;->is_new:Z

    .line 70
    const-string v11, "guest"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 71
    .local v2, "guestarray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 72
    .local v5, "m":I
    if-eqz v5, :cond_1

    .line 73
    new-array v11, v5, [Ljava/lang/String;

    iput-object v11, v8, Lcom/youku/player/module/VideoSeriesItem;->guest:[Ljava/lang/String;

    .line 74
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_1

    .line 75
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 76
    iget-object v11, v8, Lcom/youku/player/module/VideoSeriesItem;->guest:[Ljava/lang/String;

    const-string v13, "name"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v4

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 79
    .end local v4    # "j":I
    :cond_1
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    .end local v2    # "guestarray":Lorg/json/JSONArray;
    .end local v5    # "m":I
    .end local v8    # "v":Lcom/youku/player/module/VideoSeriesItem;
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 82
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/youku/player/module/VideoSeriesItem;

    iget-object v11, v11, Lcom/youku/player/module/VideoSeriesItem;->cats:Ljava/lang/String;

    iget v13, v10, Lcom/youku/player/module/VideoSeries;->total:I

    invoke-static {v11, v13, p1}, Lcom/youku/player/module/VideoSeries;->getTypeId(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v11

    iput v11, v10, Lcom/youku/player/module/VideoSeries;->type:I

    .line 84
    :cond_3
    iput-object v9, v10, Lcom/youku/player/module/VideoSeries;->videoList:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 86
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v6    # "n":I
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v9    # "vList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/module/VideoSeriesItem;>;"
    .end local v10    # "vs":Lcom/youku/player/module/VideoSeries;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/json/JSONException;
    move-object v10, v12

    .line 87
    goto/16 :goto_0
.end method
