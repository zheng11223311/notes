.class public Lcom/youku/util/AddShotCutUtil;
.super Ljava/lang/Object;
.source "AddShotCutUtil.java"


# static fields
.field private static final BLAK_PAPER:[Ljava/lang/String;

.field private static LANCHER:Ljava/lang/String; = null

.field private static final READ_SETTINGS:Ljava/lang/String; = "com.android.launcher.permission.READ_SETTINGS"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SCH-I959"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "HTC+S720t"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GT-I9100"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LT26i"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Lenovo+S680"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "T8830"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "XT910"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SHV-E120L"

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/util/AddShotCutUtil;->BLAK_PAPER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addShotCutVOD(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p0, "albumId"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "bit"    # Landroid/graphics/Bitmap;

    .prologue
    .line 50
    invoke-static {p1}, Lcom/youku/util/AddShotCutUtil;->hasShortcut(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v3, "shortcutIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tudou://albumid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    .local v1, "content_url":Landroid/net/Uri;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    const-string v4, "from"

    const-string v5, "Tudou Luncher"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const/high16 v4, 0x14200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "addShortcut":Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020175

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 87
    .local v2, "deskIcon":Landroid/graphics/Bitmap;
    const-string v4, "android.intent.extra.shortcut.ICON"

    invoke-static {p2, v2}, Lcom/youku/util/AddShotCutUtil;->createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    const-string v4, "duplicate"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const-string v4, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "srcIcon"    # Landroid/graphics/Bitmap;
    .param p1, "addIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 218
    if-nez p0, :cond_0

    .line 219
    const/4 v8, 0x0

    .line 287
    :goto_0
    return-object v8

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 222
    .local v7, "sw":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 224
    .local v6, "sh":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 225
    .local v1, "aw":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 230
    .local v0, "ah":I
    const/4 v3, 0x0

    .line 231
    .local v3, "contactIcon":Landroid/graphics/Bitmap;
    if-lt v6, v7, :cond_1

    .line 232
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 233
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 243
    .local v2, "canvas":Landroid/graphics/Canvas;
    sub-int v8, v6, v7

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-int v4, v8

    .line 244
    .local v4, "marginLeft":I
    int-to-float v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, p0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 253
    sub-int v8, v7, v1

    add-int/2addr v8, v4

    int-to-float v8, v8

    sub-int v9, v6, v0

    add-int/lit8 v9, v9, -0xa

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v2, p1, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 255
    const/16 v8, 0x1f

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->save(I)I

    .line 257
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 287
    .end local v4    # "marginLeft":I
    :goto_1
    invoke-static {v3}, Lcom/youku/util/AddShotCutUtil;->zoomImg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0

    .line 259
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 260
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 270
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    sub-int v8, v7, v6

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-int v5, v8

    .line 271
    .local v5, "marginTop":I
    const/4 v8, 0x0

    int-to-float v9, v5

    const/4 v10, 0x0

    invoke-virtual {v2, p0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 280
    sub-int v8, v7, v1

    int-to-float v8, v8

    sub-int v9, v6, v0

    add-int/lit8 v9, v9, -0xa

    add-int/2addr v9, v5

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v2, p1, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 282
    const/16 v8, 0x1f

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->save(I)I

    .line 284
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method

.method private static getAuthorityFromPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 152
    if-nez p0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-object v8

    .line 154
    :cond_1
    sget-object v9, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 156
    .local v5, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v5, :cond_0

    .line 157
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 158
    .local v4, "pack":Landroid/content/pm/PackageInfo;
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 159
    .local v7, "providers":[Landroid/content/pm/ProviderInfo;
    if-eqz v7, :cond_2

    .line 160
    move-object v0, v7

    .local v0, "arr$":[Landroid/content/pm/ProviderInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v6, v0, v2

    .line 161
    .local v6, "provider":Landroid/content/pm/ProviderInfo;
    iget-object v9, v6, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 162
    iget-object v8, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_3
    iget-object v9, v6, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 164
    iget-object v8, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static hasShortcut(Ljava/lang/String;)Z
    .locals 11
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 108
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v8, "uriSb":Ljava/lang/StringBuilder;
    const-string v2, "com.android.launcher.permission.READ_SETTINGS"

    invoke-static {v2}, Lcom/youku/util/AddShotCutUtil;->getAuthorityFromPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/util/AddShotCutUtil;->LANCHER:Ljava/lang/String;

    .line 111
    const-string v2, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lancher======="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/youku/util/AddShotCutUtil;->LANCHER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v2, Lcom/youku/util/AddShotCutUtil;->LANCHER:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    const-string v2, "content://"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    sget-object v2, Lcom/youku/util/AddShotCutUtil;->LANCHER:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v2, "/favorites?notify=true"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 134
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const-string v3, "title = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v2, v9

    .line 147
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "uriSb":Ljava/lang/StringBuilder;
    :goto_0
    return v2

    .restart local v8    # "uriSb":Ljava/lang/StringBuilder;
    :cond_0
    move v2, v10

    .line 129
    goto :goto_0

    .line 142
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v6, :cond_2

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v2, v10

    .line 145
    goto :goto_0

    .line 146
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "uriSb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    move v2, v10

    .line 147
    goto :goto_0
.end method

.method public static isBlack()Z
    .locals 4

    .prologue
    .line 33
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceInfo.MODEL====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/youku/util/AddShotCutUtil;->BLAK_PAPER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 35
    sget-object v1, Lcom/youku/util/AddShotCutUtil;->BLAK_PAPER:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const/4 v1, 0x1

    .line 39
    :goto_1
    return v1

    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static zoomImg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 293
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x1050000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    .line 296
    .local v7, "newSize":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 297
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 299
    .local v4, "height":I
    const-string v0, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iconSize======="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "width======="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "height======="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    int-to-float v0, v7

    int-to-float v2, v4

    div-float v9, v0, v2

    .line 304
    .local v9, "scale":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v9, v0

    if-nez v0, :cond_0

    .line 313
    .end local p0    # "bm":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 308
    .restart local p0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 309
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 311
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .local v8, "newbm":Landroid/graphics/Bitmap;
    move-object p0, v8

    .line 313
    goto :goto_0
.end method
