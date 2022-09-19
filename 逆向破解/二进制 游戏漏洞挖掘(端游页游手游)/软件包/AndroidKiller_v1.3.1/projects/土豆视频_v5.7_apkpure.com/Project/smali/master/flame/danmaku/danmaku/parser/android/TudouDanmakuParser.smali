.class public Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;
.super Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
.source "TudouDanmakuParser.java"


# instance fields
.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private size:I

.field private tudouContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;-><init>()V

    .line 25
    const/16 v0, 0x19

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->size:I

    .line 24
    return-void
.end method

.method private _parse(Lorg/json/JSONObject;Lmaster/flame/danmaku/danmaku/model/android/Danmakus;I)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .locals 10
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "danmakus"    # Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .param p3, "index"    # I

    .prologue
    const/high16 v6, -0x1000000

    .line 60
    if-nez p2, :cond_0

    .line 61
    new-instance p2, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .end local p2    # "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    invoke-direct {p2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    .line 65
    .restart local p2    # "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    :cond_0
    :try_start_0
    const-string/jumbo v7, "status"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0x63

    if-eq v7, v8, :cond_2

    const-string/jumbo v7, "status"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 97
    :cond_1
    :goto_0
    return-object p2

    .line 68
    :cond_2
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->getDanmakuType(Lorg/json/JSONObject;)I

    move-result v3

    .line 69
    .local v3, "type":I
    const-string v7, "playat"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 70
    .local v4, "time":J
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->getDanmakuColor(Lorg/json/JSONObject;)I

    move-result v7

    or-int v0, v7, v6

    .line 71
    .local v0, "color":I
    iget v7, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->size:I

    int-to-float v2, v7

    .line 72
    .local v2, "textSize":F
    const/4 v1, 0x0

    .line 73
    .local v1, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    iget-object v7, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v7, v7, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    if-eqz v7, :cond_3

    .line 74
    iget-object v7, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v7, v7, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-object v8, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v7, v3, v8}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->createDanmaku(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 76
    :cond_3
    if-eqz v1, :cond_1

    .line 77
    invoke-direct {p0, v1, p1}, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->getStarInfo(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lorg/json/JSONObject;)V

    .line 78
    iput-wide v4, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    .line 79
    iget v7, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->mDispDensity:F

    const v8, 0x3f19999a    # 0.6f

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    iput v7, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    .line 80
    iget-boolean v7, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isStar:Z

    if-eqz v7, :cond_4

    .line 81
    iput v0, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    .line 82
    const/4 v6, 0x0

    iput v6, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    .line 83
    const-string v6, "content"

    const-string v7, "...."

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->content:Ljava/lang/String;

    .line 84
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->starName:Ljava/lang/String;

    iget-object v8, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->content:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8, v0}, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->createSpannable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iput-object v6, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    .line 90
    :goto_1
    iput p3, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    .line 91
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v1, v6}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V

    .line 92
    invoke-virtual {p2, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    goto :goto_0

    .line 94
    .end local v0    # "color":I
    .end local v1    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v2    # "textSize":F
    .end local v3    # "type":I
    .end local v4    # "time":J
    :catch_0
    move-exception v6

    goto :goto_0

    .line 86
    .restart local v0    # "color":I
    .restart local v1    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v2    # "textSize":F
    .restart local v3    # "type":I
    .restart local v4    # "time":J
    :cond_4
    iput v0, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    .line 87
    if-gt v0, v6, :cond_5

    const/4 v6, -0x1

    :cond_5
    iput v6, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    .line 88
    const-string v6, "content"

    const-string v7, "...."

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->fillText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private createSpannable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "starName"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "color"    # I

    .prologue
    const/16 v8, 0x12

    const/4 v7, 0x0

    .line 110
    iget-object v5, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->tudouContext:Landroid/content/Context;

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v5, v6}, Lmaster/flame/danmaku/danmaku/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 111
    .local v0, "drawblelength":I
    invoke-virtual {p1, v7, v7, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    const-string v4, "bitmap"

    .line 113
    .local v4, "text":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 114
    .local v3, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v2, Lmaster/flame/danmaku/danmaku/model/VerticalImageSpan;

    invoke-direct {v2, p1}, Lmaster/flame/danmaku/danmaku/model/VerticalImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 115
    .local v2, "span":Lmaster/flame/danmaku/danmaku/model/VerticalImageSpan;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v3, v2, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 116
    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 117
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#FF612A"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v5, v7, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 118
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 119
    .local v1, "length":I
    invoke-virtual {v3, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 120
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v5, v1, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 121
    return-object v3
.end method

.method private getDanmakuColor(Lorg/json/JSONObject;)I
    .locals 8
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 163
    const v0, 0xffffff

    .line 164
    .local v0, "color":I
    const-string v4, "propertis"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    const-string v4, "propertis"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "propertis":Ljava/lang/String;
    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_1

    .line 178
    .end local v1    # "i":I
    .end local v2    # "propertis":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v0

    .line 169
    .restart local v1    # "i":I
    .restart local v2    # "propertis":Ljava/lang/String;
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_1
    aget-object v4, v3, v1

    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    add-int/lit8 v4, v1, 0x1

    :try_start_0
    aget-object v4, v3, v4

    const/4 v5, 0x1

    add-int/lit8 v6, v1, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/32 v6, 0xffffff

    and-long/2addr v4, v6

    long-to-int v0, v4

    goto :goto_1

    .line 168
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private getDanmakuTextSize(Lorg/json/JSONObject;)F
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 182
    const/16 v2, 0x12

    .line 183
    .local v2, "textSize":I
    const-string v4, "propertis"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    const-string v4, "propertis"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "propertis":Ljava/lang/String;
    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_1

    .line 208
    .end local v0    # "i":I
    .end local v1    # "propertis":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    :cond_0
    :goto_1
    int-to-float v4, v2

    return v4

    .line 188
    .restart local v0    # "i":I
    .restart local v1    # "propertis":Ljava/lang/String;
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_1
    aget-object v4, v3, v0

    const-string/jumbo v5, "size"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    add-int/lit8 v4, v0, 0x1

    aget-object v4, v3, v4

    const/4 v5, 0x1

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 190
    packed-switch v2, :pswitch_data_0

    .line 201
    const/16 v2, 0x12

    .line 204
    goto :goto_1

    .line 192
    :pswitch_0
    const/16 v2, 0x12

    .line 193
    goto :goto_1

    .line 195
    :pswitch_1
    const/16 v2, 0x18

    .line 196
    goto :goto_1

    .line 198
    :pswitch_2
    const/16 v2, 0x1e

    .line 199
    goto :goto_1

    .line 187
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDanmakuType(Lorg/json/JSONObject;)I
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, "type":I
    const-string v4, "propertis"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    const-string v4, "propertis"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "propertis":Ljava/lang/String;
    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_1

    .line 142
    .end local v0    # "i":I
    .end local v1    # "propertis":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    :cond_0
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 156
    :pswitch_0
    const/4 v2, 0x1

    .line 159
    :goto_2
    return v2

    .line 131
    .restart local v0    # "i":I
    .restart local v1    # "propertis":Ljava/lang/String;
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_1
    aget-object v4, v3, v0

    const-string v5, "pos"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    add-int/lit8 v4, v0, 0x1

    :try_start_0
    aget-object v4, v3, v4

    const/4 v5, 0x1

    .line 134
    add-int/lit8 v6, v0, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 133
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 130
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    .end local v1    # "propertis":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    :pswitch_1
    const/4 v2, 0x1

    .line 145
    goto :goto_2

    .line 147
    :pswitch_2
    const/4 v2, 0x1

    .line 148
    goto :goto_2

    .line 150
    :pswitch_3
    const/4 v2, 0x5

    .line 151
    goto :goto_2

    .line 153
    :pswitch_4
    const/4 v2, 0x4

    .line 154
    goto :goto_2

    .line 135
    .restart local v0    # "i":I
    .restart local v1    # "propertis":Ljava/lang/String;
    .restart local v3    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getStarInfo(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 101
    const-string v0, "headImg"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isVip"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nickName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isStar:Z

    .line 103
    const-string v0, "headImg"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->starUrl:Ljava/lang/String;

    .line 104
    const-string v0, "nickName"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->starName:Ljava/lang/String;

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public doParse(Lorg/json/JSONArray;)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .locals 5
    .param p1, "danmakuListData"    # Lorg/json/JSONArray;

    .prologue
    .line 43
    new-instance v1, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    .line 44
    .local v1, "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v2, v1

    .line 56
    .end local v1    # "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .local v2, "danmakus":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 47
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

    .line 56
    .restart local v2    # "danmakus":Ljava/lang/Object;
    goto :goto_0

    .line 49
    .end local v2    # "danmakus":Ljava/lang/Object;
    :cond_2
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 50
    .local v0, "danmakuArray":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 51
    invoke-direct {p0, v0, v1, v3}, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->_parse(Lorg/json/JSONObject;Lmaster/flame/danmaku/danmaku/model/android/Danmakus;I)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 47
    .end local v0    # "danmakuArray":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public doParsed(Ljava/util/ArrayList;)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .locals 1
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
    .line 218
    .local p1, "liveMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic parse()Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->parse()Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    move-result-object v0

    return-object v0
.end method

.method public parse()Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    instance-of v1, v1, Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;

    if-eqz v1, :cond_0

    .line 32
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    check-cast v0, Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;

    .line 33
    .local v0, "jsonSource":Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;->data()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->doParse(Lorg/json/JSONArray;)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    move-result-object v1

    .line 35
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
    .line 223
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->tudouContext:Landroid/content/Context;

    .line 225
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 212
    iput p1, p0, Lmaster/flame/danmaku/danmaku/parser/android/TudouDanmakuParser;->size:I

    .line 213
    return-void
.end method
