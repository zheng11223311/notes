.class public Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;
.super Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
.source "YoukuDanmakuParser.java"


# instance fields
.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;-><init>()V

    .line 21
    const/16 v0, 0x19

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->size:I

    .line 20
    return-void
.end method

.method private _parse(Lorg/json/JSONObject;Lmaster/flame/danmaku/danmaku/model/android/Danmakus;I)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .locals 10
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "danmakus"    # Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .param p3, "index"    # I

    .prologue
    const/high16 v6, -0x1000000

    .line 54
    if-nez p2, :cond_0

    .line 55
    new-instance p2, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .end local p2    # "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    invoke-direct {p2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    .line 59
    .restart local p2    # "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    :cond_0
    const/4 v3, 0x1

    .line 60
    .local v3, "type":I
    :try_start_0
    const-string v7, "pub_time"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 61
    .local v4, "time":J
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->getDanmakuColor(Lorg/json/JSONObject;)I

    move-result v7

    or-int v0, v7, v6

    .line 62
    .local v0, "color":I
    const/high16 v2, 0x41c80000    # 25.0f

    .line 63
    .local v2, "textSize":F
    iget-object v7, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v7, v7, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-object v8, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v7, v3, v8}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->createDanmaku(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 64
    .local v1, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v1, :cond_2

    .line 65
    iput-wide v4, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    .line 66
    iget v7, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->mDispDensity:F

    const v8, 0x3f19999a    # 0.6f

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    iput v7, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    .line 67
    iput v0, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    .line 68
    if-gt v0, v6, :cond_1

    const/4 v6, -0x1

    :cond_1
    iput v6, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    .line 69
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->getDanmakuContent(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->fillText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/CharSequence;)V

    .line 70
    iput p3, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    .line 71
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v1, v6}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V

    .line 72
    invoke-virtual {p2, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "color":I
    .end local v1    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v2    # "textSize":F
    .end local v4    # "time":J
    :cond_2
    :goto_0
    return-object p2

    .line 74
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private _parsed(Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;Lmaster/flame/danmaku/danmaku/model/android/Danmakus;I)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .locals 9
    .param p1, "liveDanmakuInfo"    # Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;
    .param p2, "danmakus"    # Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .param p3, "index"    # I

    .prologue
    const/high16 v6, -0x1000000

    .line 146
    if-nez p2, :cond_0

    .line 147
    new-instance p2, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .end local p2    # "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    invoke-direct {p2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    .line 151
    .restart local p2    # "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    :cond_0
    const/4 v3, 0x1

    .line 152
    .local v3, "type":I
    :try_start_0
    iget-wide v4, p1, Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;->pub_time:J

    .line 153
    .local v4, "time":J
    iget v7, p1, Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;->color:I

    or-int v0, v7, v6

    .line 154
    .local v0, "color":I
    iget v7, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->size:I

    int-to-float v2, v7

    .line 155
    .local v2, "textSize":F
    iget-object v7, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v7, v7, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-object v8, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v7, v3, v8}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->createDanmaku(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 156
    .local v1, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v1, :cond_2

    .line 157
    iput-wide v4, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    .line 158
    iget v7, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->mDispDensity:F

    const v8, 0x3f19999a    # 0.6f

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    iput v7, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    .line 159
    iput v0, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    .line 160
    if-gt v0, v6, :cond_1

    const/4 v6, -0x1

    :cond_1
    iput v6, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    .line 161
    iget-object v6, p1, Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;->title:Ljava/lang/String;

    invoke-static {v1, v6}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->fillText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/CharSequence;)V

    .line 162
    iput p3, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    .line 163
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v1, v6}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V

    .line 164
    invoke-virtual {p2, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0    # "color":I
    .end local v1    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v2    # "textSize":F
    .end local v4    # "time":J
    :cond_2
    :goto_0
    return-object p2

    .line 166
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private getDanmakuColor(Lorg/json/JSONObject;)I
    .locals 8
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 103
    const v0, 0xffffff

    .line 104
    .local v0, "color":I
    const-string v5, "content"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    const-string v5, "content"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "propertis":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v1, v0

    .line 122
    .end local v0    # "color":I
    .end local v3    # "propertis":Ljava/lang/String;
    .local v1, "color":I
    :goto_0
    return v1

    .line 109
    .end local v1    # "color":I
    .restart local v0    # "color":I
    .restart local v3    # "propertis":Ljava/lang/String;
    :cond_1
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v4

    if-lt v2, v5, :cond_3

    .end local v2    # "i":I
    .end local v3    # "propertis":Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_2
    :goto_2
    move v1, v0

    .line 122
    .end local v0    # "color":I
    .restart local v1    # "color":I
    goto :goto_0

    .line 111
    .end local v1    # "color":I
    .restart local v0    # "color":I
    .restart local v2    # "i":I
    .restart local v3    # "propertis":Ljava/lang/String;
    .restart local v4    # "values":[Ljava/lang/String;
    :cond_3
    aget-object v5, v4, v2

    const-string v6, "color"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 114
    add-int/lit8 v5, v2, 0x2

    :try_start_0
    aget-object v5, v4, v5

    const/4 v6, 0x1

    add-int/lit8 v7, v2, 0x2

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    .line 113
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    long-to-int v0, v6

    goto :goto_2

    .line 110
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private getDanmakuContent(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 81
    const-string v0, ""

    .line 82
    .local v0, "content":Ljava/lang/String;
    const-string v5, "content"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    const-string v5, "content"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "propertis":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v1, v0

    .line 99
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "propertis":Ljava/lang/String;
    .local v1, "content":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 87
    .end local v1    # "content":Ljava/lang/String;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v3    # "propertis":Ljava/lang/String;
    :cond_1
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v4

    if-lt v2, v5, :cond_3

    .end local v2    # "i":I
    .end local v3    # "propertis":Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_2
    :goto_2
    move-object v1, v0

    .line 99
    .end local v0    # "content":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    goto :goto_0

    .line 89
    .end local v1    # "content":Ljava/lang/String;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "propertis":Ljava/lang/String;
    .restart local v4    # "values":[Ljava/lang/String;
    :cond_3
    aget-object v5, v4, v2

    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 91
    add-int/lit8 v5, v2, 0x2

    :try_start_0
    aget-object v0, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 88
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 92
    :catch_0
    move-exception v5

    goto :goto_2
.end method


# virtual methods
.method public doParse(Lorg/json/JSONArray;)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .locals 5
    .param p1, "danmakuListData"    # Lorg/json/JSONArray;

    .prologue
    .line 37
    new-instance v1, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    .line 38
    .local v1, "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v2, v1

    .line 50
    .end local v1    # "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .local v2, "danmakus":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 41
    .end local v2    # "danmakus":Ljava/lang/Object;
    .restart local v1    # "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v3, v4, :cond_2

    move-object v2, v1

    .line 50
    .restart local v2    # "danmakus":Ljava/lang/Object;
    goto :goto_0

    .line 43
    .end local v2    # "danmakus":Ljava/lang/Object;
    :cond_2
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 44
    .local v0, "danmakuArray":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 45
    invoke-direct {p0, v0, v1, v3}, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->_parse(Lorg/json/JSONObject;Lmaster/flame/danmaku/danmaku/model/android/Danmakus;I)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    .end local v0    # "danmakuArray":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 47
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public doParsed(Ljava/util/ArrayList;)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/Danmakus;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "liveDanmakuInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;>;"
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    .line 130
    .local v0, "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v1, v0

    .line 142
    .end local v0    # "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .local v1, "danmakus":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 133
    .end local v1    # "danmakus":Ljava/lang/Object;
    .restart local v0    # "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    move-object v1, v0

    .line 142
    .restart local v1    # "danmakus":Ljava/lang/Object;
    goto :goto_0

    .line 135
    .end local v1    # "danmakus":Ljava/lang/Object;
    :cond_2
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;

    .line 136
    .local v3, "liveDanmakuInfo":Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;
    if-eqz v3, :cond_3

    .line 137
    invoke-direct {p0, v3, v0, v2}, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->_parsed(Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;Lmaster/flame/danmaku/danmaku/model/android/Danmakus;I)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    .end local v3    # "liveDanmakuInfo":Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 139
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public bridge synthetic parse()Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->parse()Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    move-result-object v0

    return-object v0
.end method

.method public parse()Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .locals 2

    .prologue
    .line 25
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    instance-of v1, v1, Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;

    if-eqz v1, :cond_0

    .line 26
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    check-cast v0, Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;

    .line 27
    .local v0, "jsonSource":Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;->data()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->doParse(Lorg/json/JSONArray;)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    move-result-object v1

    .line 29
    .end local v0    # "jsonSource":Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    goto :goto_0
.end method

.method public setDefaultDrawale(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 173
    iput p1, p0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;->size:I

    .line 174
    return-void
.end method
