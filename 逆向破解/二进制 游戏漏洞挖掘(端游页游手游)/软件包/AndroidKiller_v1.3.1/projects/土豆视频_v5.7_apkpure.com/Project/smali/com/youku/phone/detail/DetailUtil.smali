.class public Lcom/youku/phone/detail/DetailUtil;
.super Ljava/lang/Object;
.source "DetailUtil.java"


# static fields
.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final NEW_PORT_SIZE:Ljava/lang/String; = "new_port_size"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/DetailUtil;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatFloat(F)F
    .locals 4
    .param p0, "value"    # F

    .prologue
    .line 121
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 122
    .local v0, "df":Ljava/text/DecimalFormat;
    const-string v1, "0.0"

    .line 123
    .local v1, "style":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 124
    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    return v2
.end method

.method public static getLimit(I)I
    .locals 1
    .param p0, "lim"    # I

    .prologue
    .line 131
    and-int/lit8 v0, p0, 0x5

    return v0
.end method

.method public static getOrientation(Landroid/app/Activity;)I
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/youku/phone/detail/DetailUtil;->getScreenHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0}, Lcom/youku/phone/detail/DetailUtil;->getScreenWidth(Landroid/app/Activity;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/youku/phone/detail/DetailUtil;->getScreenHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0}, Lcom/youku/phone/detail/DetailUtil;->getScreenWidth(Landroid/app/Activity;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 103
    const/4 v0, 0x2

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getRealHeight(ILandroid/view/Display;)I
    .locals 6
    .param p0, "sdk_version"    # I
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const/16 v5, 0xd

    .line 212
    const/4 v4, 0x0

    .line 213
    .local v4, "methodString":Ljava/lang/String;
    if-ne p0, v5, :cond_1

    .line 214
    const-string v4, "getRealHeight"

    .line 217
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 219
    .local v0, "c":Ljava/lang/Class;
    :try_start_0
    const-string v5, "android.view.Display"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 224
    :goto_1
    const/4 v3, 0x0

    .line 226
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 230
    :goto_2
    const/4 v2, -0x1

    .line 232
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

    .line 240
    :goto_3
    return v2

    .line 215
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "height":I
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    if-le p0, v5, :cond_0

    .line 216
    const-string v4, "getRawHeight"

    goto :goto_0

    .line 220
    .restart local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 227
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 233
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "height":I
    :catch_2
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 235
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 237
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 238
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

    .line 244
    const/4 v4, -0x1

    .line 245
    .local v4, "width":I
    const/4 v3, 0x0

    .line 246
    .local v3, "methodString":Ljava/lang/String;
    if-ne p0, v5, :cond_1

    .line 247
    const-string v3, "getRealWidth"

    .line 250
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 252
    .local v0, "c":Ljava/lang/Class;
    :try_start_0
    const-string v5, "android.view.Display"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 257
    :goto_1
    const/4 v2, 0x0

    .line 259
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 265
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

    .line 273
    :goto_3
    return v4

    .line 248
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    if-le p0, v5, :cond_0

    .line 249
    const-string v3, "getRawWidth"

    goto :goto_0

    .line 253
    .restart local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 260
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 266
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 268
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 270
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getScreenHeight(Landroid/app/Activity;)I
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 92
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 93
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 95
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getScreenWidth(Landroid/app/Activity;)I
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 84
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static goLogin(Landroid/app/Activity;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 277
    const-string v1, "goLogin"

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/ui/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .local v0, "intent1":Landroid/content/Intent;
    const/16 v1, 0x7d0

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;III)V

    goto :goto_0
.end method

.method public static haveLandScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 135
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v3, "land_size"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const/4 v1, 0x1

    .line 140
    :cond_0
    return v1
.end method

.method public static havePortScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 145
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v3, "new_port_size"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const/4 v1, 0x1

    .line 150
    :cond_0
    return v1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 78
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z
    .locals 2
    .param p0, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v0, 0x0

    .line 49
    if-nez p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const/4 v0, 0x1

    goto :goto_0
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
    .line 66
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 67
    :cond_0
    const/4 v2, 0x0

    .line 74
    :goto_0
    return-object v2

    .line 68
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v1, "sBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 70
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static readCachedFormat(Landroid/content/Context;)I
    .locals 3
    .param p0, "thisActivity"    # Landroid/content/Context;

    .prologue
    .line 36
    :try_start_0
    const-string v2, "definition"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 41
    .local v1, "i":I
    :goto_0
    return v1

    .line 37
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "definition"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

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
    .line 45
    const-string v0, "cachepreferlanguage"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static readLandScreen()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 155
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 156
    .local v0, "land_size":[I
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v3, "land_size"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 158
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "left"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v4

    .line 159
    const/4 v2, 0x1

    const-string/jumbo v3, "top"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 160
    const/4 v2, 0x2

    const-string/jumbo v3, "right"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 161
    const/4 v2, 0x3

    const-string v3, "bottom"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 162
    const/4 v2, 0x4

    const-string v3, "height"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 163
    const/4 v2, 0x5

    const-string/jumbo v3, "width"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 164
    return-object v0
.end method

.method public static readPortScreen()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 168
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 169
    .local v0, "port_size":[I
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v3, "new_port_size"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 171
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "left"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v4

    .line 172
    const/4 v2, 0x1

    const-string/jumbo v3, "top"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 173
    const/4 v2, 0x2

    const-string/jumbo v3, "right"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 174
    const/4 v2, 0x3

    const-string v3, "bottom"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 175
    const/4 v2, 0x4

    const-string v3, "height"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 176
    const/4 v2, 0x5

    const-string/jumbo v3, "width"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 177
    return-object v0
.end method

.method public static showFailedMsg(Ljava/lang/String;)V
    .locals 1
    .param p0, "failReason"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string/jumbo v0, "\u6570\u636e\u4e3a\u7a7a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const v0, 0x7f0d03d1

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string/jumbo v0, "\u4eb2\uff0c\u7f51\u7edc\u72b6\u6001\u4e0d\u7ed9\u529b\u554a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const v0, 0x7f0d0477

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 113
    :cond_1
    const-string/jumbo v0, "\u7f51\u7edc\u6ca1\u6709\u8fde\u63a5\u4e0a\u54e6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 116
    :cond_2
    const v0, 0x7f0d02a2

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0
.end method

.method public static writeCachedFormat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "thisActivity"    # Landroid/content/Context;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "definition"

    invoke-static {v0, p1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static writeLandScreen(IIIIII)V
    .locals 5
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "height"    # I
    .param p5, "width"    # I

    .prologue
    const/4 v4, 0x0

    .line 182
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v3, "land_size"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 184
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "height"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "left"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string/jumbo v2, "top"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 189
    const-string/jumbo v2, "right"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string v2, "bottom"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v2, "height"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static writePortScreen(IIIIII)V
    .locals 5
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "height"    # I
    .param p5, "width"    # I

    .prologue
    .line 199
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v3, "new_port_size"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 201
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "left"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 203
    const-string/jumbo v2, "top"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 204
    const-string/jumbo v2, "right"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 205
    const-string v2, "bottom"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 206
    const-string v2, "height"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 207
    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    return-void
.end method
