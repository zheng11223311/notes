.class public Lcom/youku/player/util/DetailUtil;
.super Ljava/lang/Object;
.source "DetailUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mInch:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/player/LogTag;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/youku/player/util/DetailUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/util/DetailUtil;->TAG:Ljava/lang/String;

    .line 561
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/youku/player/util/DetailUtil;->mInch:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 554
    .local v0, "localPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    const/4 v1, 0x0

    .line 558
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static formatDouble(DI)D
    .locals 4
    .param p0, "d"    # D
    .param p2, "newScale"    # I

    .prologue
    .line 607
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 608
    .local v0, "bd":Ljava/math/BigDecimal;
    const/4 v1, 0x4

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public static formatFloat(F)F
    .locals 4
    .param p0, "value"    # F

    .prologue
    .line 439
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 440
    .local v0, "df":Ljava/text/DecimalFormat;
    const-string v1, "0.0"

    .line 441
    .local v1, "style":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 442
    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    return v2
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const-string v1, "android_id"

    invoke-static {p0, v1}, Lcom/youku/player/util/DetailUtil;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 151
    :cond_1
    const-string v1, ""

    .line 154
    :goto_0
    return-object v1

    .line 152
    :cond_2
    const-string v1, "android_id"

    invoke-static {p0, v1, v0}, Lcom/youku/player/util/DetailUtil;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v1, v0

    .line 154
    goto :goto_0
.end method

.method public static getFullScreentNavigationBarHeight(Landroid/app/Activity;)I
    .locals 12
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/16 v9, 0x11

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 166
    .local v5, "w":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 167
    .local v0, "d":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 168
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 170
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 171
    .local v6, "widthPixels":I
    move v4, v6

    .line 173
    .local v4, "realWidthPixels":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v7, v8, :cond_2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v9, :cond_2

    .line 175
    :try_start_0
    const-class v7, Landroid/view/Display;

    const-string v8, "getRawWidth"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 190
    :cond_0
    :goto_0
    sub-int v1, v4, v6

    .line 191
    .local v1, "height":I
    if-gez v1, :cond_1

    .line 193
    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x42200000    # 40.0f

    mul-float/2addr v7, v8

    float-to-int v1, v7

    .line 195
    :cond_1
    return v1

    .line 181
    .end local v1    # "height":I
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_0

    .line 183
    :try_start_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 184
    .local v3, "realSize":Landroid/graphics/Point;
    const-class v7, Landroid/view/Display;

    const-string v8, "getRealSize"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/graphics/Point;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget v4, v3, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 187
    .end local v3    # "realSize":Landroid/graphics/Point;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 177
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public static getJsonArrayList(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "jsonArray"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v0, "guests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 503
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 505
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 506
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, "name"

    invoke-static {v2, v3}, Lcom/youku/player/util/DetailUtil;->getJsonValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 507
    .restart local v1    # "i":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static getJsonBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .locals 4
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 492
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 495
    :cond_0
    :goto_0
    return v1

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    sget-object v2, Lcom/youku/player/util/DetailUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getJsonDetailSeriesList(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "jsonArray"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/plugin/DetailVideoSeriesList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 450
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v4, "videoSeriesLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/plugin/DetailVideoSeriesList;>;"
    if-eqz p0, :cond_2

    .line 452
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 455
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 456
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    new-instance v3, Lcom/youku/player/plugin/DetailVideoSeriesList;

    invoke-direct {v3}, Lcom/youku/player/plugin/DetailVideoSeriesList;-><init>()V

    .line 458
    .local v3, "videoSeriesList":Lcom/youku/player/plugin/DetailVideoSeriesList;
    const-string/jumbo v5, "videoid"

    invoke-static {v2, v5}, Lcom/youku/player/util/DetailUtil;->getJsonValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/youku/player/plugin/DetailVideoSeriesList;->setId(Ljava/lang/String;)V

    .line 459
    const-string/jumbo v5, "title"

    invoke-static {v2, v5}, Lcom/youku/player/util/DetailUtil;->getJsonValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/youku/player/plugin/DetailVideoSeriesList;->setTitle(Ljava/lang/String;)V

    .line 460
    const-string v5, "desc"

    invoke-static {v2, v5}, Lcom/youku/player/util/DetailUtil;->getJsonValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/youku/player/plugin/DetailVideoSeriesList;->setDesc(Ljava/lang/String;)V

    .line 462
    const-string/jumbo v5, "show_videoseq"

    invoke-static {v2, v5}, Lcom/youku/player/util/DetailUtil;->getJsonInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/youku/player/plugin/DetailVideoSeriesList;->setShow_videoseq(I)V

    .line 465
    const-string/jumbo v5, "show_videostage"

    invoke-static {v2, v5}, Lcom/youku/player/util/DetailUtil;->getJsonValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/youku/player/plugin/DetailVideoSeriesList;->setShow_videostage(Ljava/lang/String;)V

    .line 467
    const-string v5, "is_new"

    invoke-static {v2, v5}, Lcom/youku/player/util/DetailUtil;->getJsonBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v8, :cond_0

    .line 468
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/youku/player/plugin/DetailVideoSeriesList;->setIsNew(I)V

    .line 471
    :goto_1
    const-string v5, "limit"

    invoke-static {v2, v5}, Lcom/youku/player/util/DetailUtil;->getJsonInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/youku/player/plugin/DetailVideoSeriesList;->setLimited(I)V

    .line 472
    const-string v5, "guest"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "guest"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 474
    const-string v5, "guest"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/player/util/DetailUtil;->getJsonArrayList(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/youku/player/plugin/DetailVideoSeriesList;->setGuest(Ljava/util/ArrayList;)V

    .line 478
    :goto_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "videoSeriesList":Lcom/youku/player/plugin/DetailVideoSeriesList;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "videoSeriesList":Lcom/youku/player/plugin/DetailVideoSeriesList;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/youku/player/plugin/DetailVideoSeriesList;->setIsNew(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 480
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "videoSeriesList":Lcom/youku/player/plugin/DetailVideoSeriesList;
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/youku/player/util/DetailUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "int getJsonDetailSeriesList"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 477
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "videoSeriesList":Lcom/youku/player/plugin/DetailVideoSeriesList;
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3, v5}, Lcom/youku/player/plugin/DetailVideoSeriesList;->setGuest(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 487
    .end local v1    # "i":I
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "videoSeriesList":Lcom/youku/player/plugin/DetailVideoSeriesList;
    :cond_2
    return-object v4
.end method

.method public static getJsonDouble(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)F
    .locals 4
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 423
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getFloatValue(Ljava/lang/String;)F
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 427
    :cond_0
    :goto_0
    return v1

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    sget-object v2, Lcom/youku/player/util/DetailUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getJsonInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I
    .locals 4
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 345
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 348
    :cond_0
    :goto_0
    return v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    sget-object v2, Lcom/youku/player/util/DetailUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getJsonStrings(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "jsa"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    if-nez p0, :cond_1

    .line 382
    const/4 v1, 0x0

    .line 391
    :cond_0
    :goto_0
    return-object v1

    .line 383
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 387
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 389
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getJsonValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 363
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    :goto_0
    return-object v1

    .line 363
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    sget-object v1, Lcom/youku/player/util/DetailUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v1, ""

    goto :goto_0
.end method

.method public static getLimit(I)I
    .locals 1
    .param p0, "lim"    # I

    .prologue
    .line 435
    and-int/lit8 v0, p0, 0x5

    return v0
.end method

.method public static getLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 518
    const/4 v4, 0x0

    .line 520
    .local v4, "localLocationManager":Landroid/location/LocationManager;
    :try_start_0
    const-string v5, "location"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/location/LocationManager;

    move-object v4, v0

    .line 523
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v5}, Lcom/youku/player/util/DetailUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 525
    const-string v5, "gps"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 527
    .local v3, "localLocation":Landroid/location/Location;
    if-eqz v3, :cond_1

    .line 528
    const-string v5, "getLocation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get location from gps:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .end local v3    # "localLocation":Landroid/location/Location;
    :cond_0
    :goto_0
    return-object v3

    .line 537
    :cond_1
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v5}, Lcom/youku/player/util/DetailUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 539
    const-string v5, "network"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 541
    .restart local v3    # "localLocation":Landroid/location/Location;
    if-nez v3, :cond_0

    .end local v3    # "localLocation":Landroid/location/Location;
    :cond_2
    move-object v3, v6

    .line 545
    goto :goto_0

    .line 546
    :catch_0
    move-exception v2

    .line 547
    .local v2, "localException":Ljava/lang/Exception;
    sget-object v5, Lcom/youku/player/util/DetailUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 549
    goto :goto_0
.end method

.method public static getOrientation(Landroid/app/Activity;)I
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 221
    invoke-static {p0}, Lcom/youku/player/util/DetailUtil;->getScreenHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0}, Lcom/youku/player/util/DetailUtil;->getScreenWidth(Landroid/app/Activity;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 222
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    .line 223
    :cond_0
    invoke-static {p0}, Lcom/youku/player/util/DetailUtil;->getScreenHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0}, Lcom/youku/player/util/DetailUtil;->getScreenWidth(Landroid/app/Activity;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 224
    const/4 v0, 0x2

    goto :goto_0

    .line 225
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQualityChangeTips(Landroid/content/Context;ZI)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # Z
    .param p2, "quality"    # I

    .prologue
    .line 633
    const/4 v0, -0x1

    .line 634
    .local v0, "id":I
    packed-switch p2, :pswitch_data_0

    .line 645
    :goto_0
    if-lez v0, :cond_3

    if-eqz p0, :cond_3

    .line 646
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 648
    :goto_1
    return-object v1

    .line 636
    :pswitch_0
    if-eqz p1, :cond_0

    sget v0, Lcom/youku/android/player/R$string;->quality_change_start_SD:I

    .line 637
    :goto_2
    goto :goto_0

    .line 636
    :cond_0
    sget v0, Lcom/youku/android/player/R$string;->quality_change_end_SD:I

    goto :goto_2

    .line 639
    :pswitch_1
    if-eqz p1, :cond_1

    sget v0, Lcom/youku/android/player/R$string;->quality_change_start_HD:I

    .line 640
    :goto_3
    goto :goto_0

    .line 639
    :cond_1
    sget v0, Lcom/youku/android/player/R$string;->quality_change_end_HD:I

    goto :goto_3

    .line 642
    :pswitch_2
    if-eqz p1, :cond_2

    sget v0, Lcom/youku/android/player/R$string;->quality_change_start_HD2:I

    :goto_4
    goto :goto_0

    :cond_2
    sget v0, Lcom/youku/android/player/R$string;->quality_change_end_HD2:I

    goto :goto_4

    .line 648
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 634
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRealHeight(ILandroid/view/Display;)I
    .locals 6
    .param p0, "sdk_version"    # I
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const/16 v5, 0xd

    .line 262
    const/4 v4, 0x0

    .line 263
    .local v4, "methodString":Ljava/lang/String;
    if-ne p0, v5, :cond_1

    .line 264
    const-string v4, "getRealHeight"

    .line 267
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 269
    .local v0, "c":Ljava/lang/Class;
    :try_start_0
    const-string v5, "android.view.Display"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 274
    :goto_1
    const/4 v3, 0x0

    .line 276
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 280
    :goto_2
    const/4 v2, -0x1

    .line 282
    .local v2, "height":I
    const/4 v5, 0x0

    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v2

    .line 290
    :goto_3
    return v2

    .line 265
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "height":I
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    if-le p0, v5, :cond_0

    .line 266
    const-string v4, "getRawHeight"

    goto :goto_0

    .line 270
    .restart local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 277
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 283
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "height":I
    :catch_2
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 285
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 287
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getRealWidth(ILandroid/view/Display;)I
    .locals 6
    .param p0, "sdk_version"    # I
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const/16 v5, 0xd

    .line 229
    const/4 v4, -0x1

    .line 230
    .local v4, "width":I
    const/4 v3, 0x0

    .line 231
    .local v3, "methodString":Ljava/lang/String;
    if-ne p0, v5, :cond_1

    .line 232
    const-string v3, "getRealWidth"

    .line 235
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 237
    .local v0, "c":Ljava/lang/Class;
    :try_start_0
    const-string v5, "android.view.Display"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 242
    :goto_1
    const/4 v2, 0x0

    .line 244
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 250
    :goto_2
    const/4 v5, 0x0

    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v4

    .line 258
    :goto_3
    return v4

    .line 233
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    if-le p0, v5, :cond_0

    .line 234
    const-string v3, "getRawWidth"

    goto :goto_0

    .line 238
    .restart local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 245
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 251
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 253
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 255
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getScreenDensity(Landroid/app/Activity;)I
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 139
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 140
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 142
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v1
.end method

.method public static getScreenHeight(Landroid/app/Activity;)I
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 126
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 127
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 134
    :goto_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_1

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_1
    return v1

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 134
    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1
.end method

.method public static getScreenInch(Landroid/app/Activity;)D
    .locals 13
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/16 v12, 0x11

    .line 568
    sget-wide v8, Lcom/youku/player/util/DetailUtil;->mInch:D

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    .line 569
    sget-wide v8, Lcom/youku/player/util/DetailUtil;->mInch:D

    .line 600
    :goto_0
    return-wide v8

    .line 573
    :cond_0
    const/4 v6, 0x0

    .local v6, "realWidth":I
    const/4 v5, 0x0

    .line 574
    .local v5, "realHeight":I
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 575
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 576
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 577
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v12, :cond_1

    .line 578
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 579
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 580
    iget v6, v7, Landroid/graphics/Point;->x:I

    .line 581
    iget v5, v7, Landroid/graphics/Point;->y:I

    .line 593
    .end local v7    # "size":Landroid/graphics/Point;
    :goto_1
    int-to-float v8, v6

    iget v9, v4, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v8, v9

    int-to-float v9, v6

    iget v10, v4, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    int-to-float v9, v5

    iget v10, v4, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v9, v10

    int-to-float v10, v5

    iget v11, v4, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/youku/player/util/DetailUtil;->formatDouble(DI)D

    move-result-wide v8

    sput-wide v8, Lcom/youku/player/util/DetailUtil;->mInch:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v0    # "display":Landroid/view/Display;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    :goto_2
    sget-wide v8, Lcom/youku/player/util/DetailUtil;->mInch:D

    goto :goto_0

    .line 582
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    :try_start_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v12, :cond_2

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_2

    .line 584
    const-class v8, Landroid/view/Display;

    const-string v9, "getRawHeight"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 585
    .local v2, "mGetRawH":Ljava/lang/reflect/Method;
    const-class v8, Landroid/view/Display;

    const-string v9, "getRawWidth"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 586
    .local v3, "mGetRawW":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 587
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 588
    goto :goto_1

    .line 589
    .end local v2    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v3    # "mGetRawW":Ljava/lang/reflect/Method;
    :cond_2
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 590
    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 596
    .end local v0    # "display":Landroid/view/Display;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v1

    .line 597
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getScreenWidth(Landroid/app/Activity;)I
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 113
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 114
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 121
    :goto_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_1

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    return v1

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 121
    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1
.end method

.method public static haveLandScreen(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 40
    const-string v2, "land_size"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const/4 v1, 0x1

    .line 44
    :cond_0
    return v1
.end method

.method public static havePortScreen(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    const-string v2, "port_size"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const/4 v1, 0x1

    .line 55
    :cond_0
    return v1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 316
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isUSwitchOpen(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 616
    sget v6, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v7, 0x2711

    if-ne v6, v7, :cond_2

    .line 617
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_preferences"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 618
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "u_switch"

    const/4 v7, -0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 628
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 618
    goto :goto_0

    .line 620
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    const-string v6, "DetailActivity_DetailProp"

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 621
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    const-string v6, "detail.player.u.plus.state"

    const-string v7, "-1"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "v":Ljava/lang/String;
    const/4 v2, 0x2

    .line 624
    .local v2, "state":I
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 628
    :goto_1
    if-eq v2, v4, :cond_0

    move v4, v5

    goto :goto_0

    .line 624
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public static listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "divider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 403
    :cond_0
    const/4 v2, 0x0

    .line 410
    :goto_0
    return-object v2

    .line 404
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 405
    .local v1, "sBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 406
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 409
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static readCachedFormat(Landroid/content/Context;)I
    .locals 3
    .param p0, "thisActivity"    # Landroid/content/Context;

    .prologue
    .line 299
    :try_start_0
    const-string v2, "definition"

    invoke-static {v2}, Lcom/youku/player/util/PlayerPreference;->getPreferenceInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 305
    .local v1, "i":I
    :goto_0
    return v1

    .line 300
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "definition"

    invoke-static {v2}, Lcom/youku/player/util/PlayerPreference;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public static readCachedLanguage(Landroid/content/Context;)I
    .locals 1
    .param p0, "thisActivity"    # Landroid/content/Context;

    .prologue
    .line 309
    const-string v0, "cachepreferlanguage"

    invoke-static {v0}, Lcom/youku/player/util/PlayerPreference;->getPreferenceInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static readLandScreen(Landroid/content/Context;)[I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 76
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 77
    .local v0, "land_size":[I
    const-string v2, "land_size"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 78
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "left"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v4

    .line 79
    const/4 v2, 0x1

    const-string/jumbo v3, "top"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 80
    const/4 v2, 0x2

    const-string/jumbo v3, "right"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 81
    const/4 v2, 0x3

    const-string v3, "bottom"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 82
    const/4 v2, 0x4

    const-string v3, "height"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 83
    const/4 v2, 0x5

    const-string/jumbo v3, "width"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 84
    return-object v0
.end method

.method public static readPortScreen(Landroid/content/Context;)[I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 101
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 102
    .local v0, "port_size":[I
    const-string v2, "port_size"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "left"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v4

    .line 104
    const/4 v2, 0x1

    const-string/jumbo v3, "top"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 105
    const/4 v2, 0x2

    const-string/jumbo v3, "right"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 106
    const/4 v2, 0x3

    const-string v3, "bottom"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 107
    const/4 v2, 0x4

    const-string v3, "height"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 108
    const/4 v2, 0x5

    const-string/jumbo v3, "width"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 109
    return-object v0
.end method

.method public static savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    return-void
.end method

.method public static showFailedMsg(Ljava/lang/String;)V
    .locals 0
    .param p0, "failReason"    # Ljava/lang/String;

    .prologue
    .line 333
    return-void
.end method

.method public static writeLandScreen(Landroid/content/Context;IIIIII)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "height"    # I
    .param p6, "width"    # I

    .prologue
    const/4 v3, 0x0

    .line 61
    const-string v2, "land_size"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "height"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "left"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 66
    const-string/jumbo v2, "top"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 67
    const-string/jumbo v2, "right"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    const-string v2, "bottom"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    const-string v2, "height"

    invoke-interface {v0, v2, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 70
    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, p6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static writePortScreen(Landroid/content/Context;IIIIII)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "height"    # I
    .param p6, "width"    # I

    .prologue
    .line 89
    const-string v2, "port_size"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 90
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "left"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string/jumbo v2, "top"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string/jumbo v2, "right"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v2, "bottom"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v2, "height"

    invoke-interface {v0, v2, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, p6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method
