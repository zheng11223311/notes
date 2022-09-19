.class public Lcom/tudou/detail/Test;
.super Ljava/lang/Object;
.source "Test.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/Test$OnUploadCompleteListener;
    }
.end annotation


# static fields
.field private static AUTHORITY_LANCHER_FAVORITES:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DEVICE_LIST_NEED_ZOOM_SHORTCUT_ICON:[Ljava/lang/String;

.field private static final DEVICE_LIST_SHORTCUT_NO_TOAST:[Ljava/lang/String;

.field private static final DEVICE_LIST_SHORTCUT_OFF:[Ljava/lang/String;

.field private static final DEVICE_LIST_USE_DEFAULT_ICON:[Ljava/lang/String;

.field private static final DEVICE_LIST_USE_INTENT_VALID_SHORTCUT:[Ljava/lang/String;

.field private static final READ_SETTINGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const-class v0, Lcom/tudou/detail/Test;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    .line 166
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.launcher.permission.READ_SETTINGS"

    aput-object v1, v0, v3

    const-string v1, "com.android.launcher3.permission.READ_SETTINGS"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.launcher.permission.READ_SETTINGS"

    aput-object v1, v0, v5

    const-string v1, "com.htc.launcher.permission.READ_SETTINGS"

    aput-object v1, v0, v6

    const-string v1, "com.teslacoilsw.launcher.permission.READ_SETTINGS"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.ztemt.launcher.permission.READ_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.huawei.android.launcher.permission.READ_SETTINGS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tudou/detail/Test;->READ_SETTINGS:[Ljava/lang/String;

    .line 178
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "vivo+X3t"

    aput-object v1, v0, v3

    const-string/jumbo v1, "vivo  X3t"

    aput-object v1, v0, v4

    const-string v1, "HTC+S720t"

    aput-object v1, v0, v5

    const-string v1, "M5"

    aput-object v1, v0, v6

    sput-object v0, Lcom/tudou/detail/Test;->DEVICE_LIST_SHORTCUT_OFF:[Ljava/lang/String;

    .line 182
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SM-T520"

    aput-object v1, v0, v3

    sput-object v0, Lcom/tudou/detail/Test;->DEVICE_LIST_USE_DEFAULT_ICON:[Ljava/lang/String;

    .line 186
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "K00F"

    aput-object v1, v0, v3

    const-string v1, "HTC+S720t"

    aput-object v1, v0, v4

    const-string v1, "T8830"

    aput-object v1, v0, v5

    const-string v1, "XT910"

    aput-object v1, v0, v6

    sput-object v0, Lcom/tudou/detail/Test;->DEVICE_LIST_NEED_ZOOM_SHORTCUT_ICON:[Ljava/lang/String;

    .line 190
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "L55t"

    aput-object v1, v0, v3

    sput-object v0, Lcom/tudou/detail/Test;->DEVICE_LIST_SHORTCUT_NO_TOAST:[Ljava/lang/String;

    .line 194
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "MI+3"

    aput-object v1, v0, v3

    const-string v1, "Hol-U10"

    aput-object v1, v0, v4

    const-string v1, "NX403A"

    aput-object v1, v0, v5

    sput-object v0, Lcom/tudou/detail/Test;->DEVICE_LIST_USE_INTENT_VALID_SHORTCUT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static addShotCutVOD(Landroid/content/Context;Lcom/youku/vo/NewVideoDetail;Landroid/graphics/Bitmap;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "bit"    # Landroid/graphics/Bitmap;

    .prologue
    .line 272
    sget-object v8, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    const-string v9, "addShotCutVOD"

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-nez p1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v8, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v8, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    .line 277
    .local v1, "albumId":Ljava/lang/String;
    iget-object v8, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v8, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    .line 278
    .local v6, "title":Ljava/lang/String;
    iget-object v8, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v2, v8, Lcom/youku/vo/NewVideoDetail$Detail;->cid:I

    .line 280
    .local v2, "channelId":I
    invoke-static {p0, p1}, Lcom/tudou/detail/Test;->makeVideoShortcutIntent(Landroid/content/Context;Lcom/youku/vo/NewVideoDetail;)Landroid/content/Intent;

    move-result-object v5

    .line 282
    .local v5, "shortcutIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/tudou/detail/Test;->isUserIntentValidShortcut()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v6, v5}, Lcom/tudou/detail/Test;->hasShortcut(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 283
    :cond_1
    sget-object v8, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    const-string v9, "addShotCutVOD fail, already exist."

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_2
    invoke-static {v6}, Lcom/tudou/detail/Test;->hasShortcut(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 288
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 289
    .local v0, "addShortcut":Landroid/content/Intent;
    const-string v8, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    const-string v8, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v8, "duplicate"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    const-string v8, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-static {}, Lcom/tudou/detail/Test;->isUseDefaultShortcutIcon()Z

    move-result v7

    .line 295
    .local v7, "useDefault":Z
    sget-object v8, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addShotCutVOD useDefaultIcon = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " customIcon = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    if-nez v7, :cond_4

    if-nez p2, :cond_8

    .line 297
    :cond_4
    const/4 v4, 0x0

    .line 298
    .local v4, "icon":Landroid/os/Parcelable;
    const/16 v8, 0x9

    if-ne v2, v8, :cond_5

    .line 299
    const v8, 0x7f0201cc

    invoke-static {p0, v8}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    .line 307
    :goto_1
    const-string v8, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 312
    .end local v4    # "icon":Landroid/os/Parcelable;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 300
    .restart local v4    # "icon":Landroid/os/Parcelable;
    :cond_5
    const/16 v8, 0x1f

    if-ne v2, v8, :cond_6

    .line 301
    const v8, 0x7f0201ce

    invoke-static {p0, v8}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    goto :goto_1

    .line 302
    :cond_6
    const/16 v8, 0x16

    if-ne v2, v8, :cond_7

    .line 303
    const v8, 0x7f0201cd

    invoke-static {p0, v8}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    goto :goto_1

    .line 305
    :cond_7
    const v8, 0x7f0201cb

    invoke-static {p0, v8}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    goto :goto_1

    .line 309
    .end local v4    # "icon":Landroid/os/Parcelable;
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020a25

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 310
    .local v3, "deskIcon":Landroid/graphics/Bitmap;
    const-string v8, "android.intent.extra.shortcut.ICON"

    invoke-static {p2, v3}, Lcom/tudou/detail/Test;->createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private static createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "srcIcon"    # Landroid/graphics/Bitmap;
    .param p1, "addIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 401
    if-nez p0, :cond_1

    .line 402
    const/4 v3, 0x0

    .line 470
    :cond_0
    :goto_0
    return-object v3

    .line 404
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 405
    .local v7, "sw":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 407
    .local v6, "sh":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 408
    .local v1, "aw":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 413
    .local v0, "ah":I
    const/4 v3, 0x0

    .line 414
    .local v3, "contactIcon":Landroid/graphics/Bitmap;
    if-lt v6, v7, :cond_2

    .line 415
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 416
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 426
    .local v2, "canvas":Landroid/graphics/Canvas;
    sub-int v8, v6, v7

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-int v4, v8

    .line 427
    .local v4, "marginLeft":I
    int-to-float v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, p0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 436
    sub-int v8, v7, v1

    add-int/2addr v8, v4

    int-to-float v8, v8

    sub-int v9, v6, v0

    add-int/lit8 v9, v9, -0xa

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v2, p1, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 438
    const/16 v8, 0x1f

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->save(I)I

    .line 440
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 470
    .end local v4    # "marginLeft":I
    :goto_1
    invoke-static {}, Lcom/tudou/detail/Test;->isNeedZoomShortcutIcon()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v3}, Lcom/tudou/detail/Test;->zoomImg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 442
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 443
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 453
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    sub-int v8, v7, v6

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-int v5, v8

    .line 454
    .local v5, "marginTop":I
    const/4 v8, 0x0

    int-to-float v9, v5

    const/4 v10, 0x0

    invoke-virtual {v2, p0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 463
    sub-int v8, v7, v1

    int-to-float v8, v8

    sub-int v9, v6, v0

    add-int/lit8 v9, v9, -0xa

    add-int/2addr v9, v5

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v2, p1, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 465
    const/16 v8, 0x1f

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->save(I)I

    .line 467
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method

.method private static getAuthorityFromPermission([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "permission"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    sget-object v13, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    .line 376
    .local v9, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v12, "rets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_3

    .line 378
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 379
    .local v8, "pack":Landroid/content/pm/PackageInfo;
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 380
    .local v11, "providers":[Landroid/content/pm/ProviderInfo;
    if-eqz v11, :cond_0

    .line 381
    move-object v0, v11

    .local v0, "arr$":[Landroid/content/pm/ProviderInfo;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Landroid/content/pm/ProviderInfo;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v10, v0, v4

    .line 383
    .local v10, "provider":Landroid/content/pm/ProviderInfo;
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 384
    .local v7, "p":Ljava/lang/String;
    iget-object v13, v10, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 385
    iget-object v13, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 381
    .end local v7    # "p":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 391
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "pack":Landroid/content/pm/PackageInfo;
    .end local v10    # "provider":Landroid/content/pm/ProviderInfo;
    .end local v11    # "providers":[Landroid/content/pm/ProviderInfo;
    :cond_3
    return-object v12
.end method

.method public static final getSeriesItemTitle(Lcom/tudou/detail/vo/VideoList;I)Ljava/lang/String;
    .locals 6
    .param p0, "list"    # Lcom/tudou/detail/vo/VideoList;
    .param p1, "position"    # I

    .prologue
    .line 523
    const-string v2, ""

    .line 524
    .local v2, "title":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 525
    invoke-virtual {p0, p1}, Lcom/tudou/detail/vo/VideoList;->get(I)Lcom/tudou/detail/vo/Video;

    move-result-object v3

    .line 526
    .local v3, "video":Lcom/tudou/detail/vo/Video;
    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->isCached()Z

    move-result v4

    if-nez v4, :cond_1

    .line 547
    iget-object v2, v3, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    .line 562
    .end local v3    # "video":Lcom/tudou/detail/vo/Video;
    :cond_0
    :goto_0
    return-object v2

    .line 549
    .restart local v3    # "video":Lcom/tudou/detail/vo/Video;
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "mode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->getCacheVer()I

    move-result v0

    .line 551
    .local v0, "cacheVer":I
    const-string v4, "chinese"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 552
    iget-object v2, v3, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 554
    :cond_2
    const/16 v4, 0x39

    if-ge v0, v4, :cond_3

    .line 555
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lcom/tudou/detail/vo/Video;->mEpisode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 557
    :cond_3
    iget-object v2, v3, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final getSeriesMode(Lcom/tudou/detail/vo/VideoList;)Ljava/lang/String;
    .locals 4
    .param p0, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 499
    const/4 v1, 0x0

    .line 500
    .local v1, "mode":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->isCached()Z

    move-result v3

    if-nez v3, :cond_6

    .line 502
    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->getVideoType()Lcom/tudou/android/Youku$VideoType;

    move-result-object v2

    .line 503
    .local v2, "tVideoType":Lcom/tudou/android/Youku$VideoType;
    sget-object v3, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v2, v3, :cond_5

    .line 504
    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->getChannelId()I

    move-result v0

    .line 505
    .local v0, "channelId":I
    const/16 v3, 0x16

    if-eq v0, v3, :cond_0

    const/16 v3, 0x1f

    if-ne v0, v3, :cond_2

    .line 506
    :cond_0
    const-string v1, "chinese"

    .line 519
    .end local v0    # "channelId":I
    .end local v2    # "tVideoType":Lcom/tudou/android/Youku$VideoType;
    :cond_1
    :goto_0
    return-object v1

    .line 507
    .restart local v0    # "channelId":I
    .restart local v2    # "tVideoType":Lcom/tudou/android/Youku$VideoType;
    :cond_2
    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_4

    .line 508
    :cond_3
    const-string v1, "number"

    goto :goto_0

    .line 510
    :cond_4
    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 513
    .end local v0    # "channelId":I
    :cond_5
    const-string v1, "chinese"

    goto :goto_0

    .line 516
    .end local v2    # "tVideoType":Lcom/tudou/android/Youku$VideoType;
    :cond_6
    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getStringToArrayList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 58
    if-eqz v0, :cond_0

    .line 59
    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hasShortcut(Ljava/lang/String;)Z
    .locals 1
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tudou/detail/Test;->hasShortcut(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static hasShortcut(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 14
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 326
    sget-object v5, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hasShortcut appName = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", intent = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v10, 0x0

    .line 330
    .local v10, "tHas":Z
    const/4 v11, 0x0

    .line 332
    .local v11, "uriSb":Ljava/lang/StringBuilder;
    :try_start_0
    sget-object v2, Lcom/tudou/detail/Test;->READ_SETTINGS:[Ljava/lang/String;

    invoke-static {v2}, Lcom/tudou/detail/Test;->getAuthorityFromPermission([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/tudou/detail/Test;->AUTHORITY_LANCHER_FAVORITES:Ljava/util/ArrayList;

    .line 333
    sget-object v2, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hasShortcut AUTHORITY_LANCHER_FAVORITES size = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v13, Lcom/tudou/detail/Test;->AUTHORITY_LANCHER_FAVORITES:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v2, Lcom/tudou/detail/Test;->AUTHORITY_LANCHER_FAVORITES:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 335
    sget-object v2, Lcom/tudou/detail/Test;->AUTHORITY_LANCHER_FAVORITES:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    move-object v12, v11

    .end local v11    # "uriSb":Ljava/lang/StringBuilder;
    .local v12, "uriSb":Ljava/lang/StringBuilder;
    :goto_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 336
    .local v6, "authority":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    .end local v12    # "uriSb":Ljava/lang/StringBuilder;
    .restart local v11    # "uriSb":Ljava/lang/StringBuilder;
    :try_start_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    const-string v2, "content://"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v2, "/favorites?notify=true"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 344
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hasShortcut uri = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 346
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 347
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_4

    const-string/jumbo v3, "title=? and intent=?"

    .line 348
    .local v3, "selection":Ljava/lang/String;
    :goto_2
    if-eqz p1, :cond_5

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v4, v2

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 350
    .local v4, "selectionArgs":[Ljava/lang/String;
    :goto_3
    const/4 v2, 0x2

    :try_start_3
    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v13, "title"

    aput-object v13, v2, v5

    const/4 v5, 0x1

    const-string v13, "intent"

    aput-object v13, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v7

    .line 354
    :goto_4
    if-eqz v7, :cond_2

    .line 355
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 356
    const/4 v10, 0x1

    .line 358
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    move-object v12, v11

    .line 360
    .end local v11    # "uriSb":Ljava/lang/StringBuilder;
    .restart local v12    # "uriSb":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 326
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "authority":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "tHas":Z
    .end local v12    # "uriSb":Ljava/lang/StringBuilder;
    :cond_3
    const-string v2, " null"

    goto/16 :goto_0

    .line 347
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "authority":Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "tHas":Z
    .restart local v11    # "uriSb":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_5
    const-string/jumbo v3, "title=? "

    goto :goto_2

    .line 348
    .restart local v3    # "selection":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v4, v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 366
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "authority":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v8

    .line 367
    .local v8, "e":Ljava/lang/Exception;
    :goto_5
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "uriSb":Ljava/lang/StringBuilder;
    :cond_6
    sget-object v2, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hasShortcut appName = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " tHas = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v10

    .line 370
    :goto_6
    return v2

    .line 363
    .restart local v11    # "uriSb":Ljava/lang/StringBuilder;
    :cond_7
    :try_start_6
    sget-object v2, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hasShortcut appName = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " LANCHER is NULL, tHas = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 364
    const/4 v2, 0x0

    goto :goto_6

    .line 366
    .end local v11    # "uriSb":Ljava/lang/StringBuilder;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "uriSb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "uriSb":Ljava/lang/StringBuilder;
    .restart local v11    # "uriSb":Ljava/lang/StringBuilder;
    goto :goto_5

    .line 351
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "authority":Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v2

    goto :goto_4
.end method

.method public static isBlack()Z
    .locals 4

    .prologue
    .line 240
    sget-object v1, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBlack DeviceInfo.MODEL====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/tudou/detail/Test;->DEVICE_LIST_SHORTCUT_OFF:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 242
    sget-object v1, Lcom/tudou/detail/Test;->DEVICE_LIST_SHORTCUT_OFF:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const/4 v1, 0x1

    .line 246
    :goto_1
    return v1

    .line 241
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isNeedAddShortcutFinishToast()Z
    .locals 4

    .prologue
    .line 199
    sget-object v1, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUserIntentValidShortcut DeviceInfo.MODEL====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/tudou/detail/Test;->DEVICE_LIST_SHORTCUT_NO_TOAST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 201
    sget-object v1, Lcom/tudou/detail/Test;->DEVICE_LIST_SHORTCUT_NO_TOAST:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x0

    .line 205
    :goto_1
    return v1

    .line 200
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isNeedZoomShortcutIcon()Z
    .locals 4

    .prologue
    .line 230
    sget-object v1, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedZoomShortcutIcon DeviceInfo.MODEL====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/tudou/detail/Test;->DEVICE_LIST_NEED_ZOOM_SHORTCUT_ICON:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 232
    sget-object v1, Lcom/tudou/detail/Test;->DEVICE_LIST_NEED_ZOOM_SHORTCUT_ICON:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x1

    .line 236
    :goto_1
    return v1

    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z
    .locals 1
    .param p0, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUseDefaultShortcutIcon()Z
    .locals 4

    .prologue
    .line 220
    sget-object v1, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUseDefaultShortcutIcon DeviceInfo.MODEL====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/tudou/detail/Test;->DEVICE_LIST_USE_DEFAULT_ICON:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 222
    sget-object v1, Lcom/tudou/detail/Test;->DEVICE_LIST_USE_DEFAULT_ICON:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const/4 v1, 0x1

    .line 226
    :goto_1
    return v1

    .line 221
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isUserIntentValidShortcut()Z
    .locals 4

    .prologue
    .line 209
    sget-object v1, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUserIntentValidShortcut DeviceInfo.MODEL====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/tudou/detail/Test;->DEVICE_LIST_USE_INTENT_VALID_SHORTCUT:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 211
    sget-object v1, Lcom/tudou/detail/Test;->DEVICE_LIST_USE_INTENT_VALID_SHORTCUT:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v1, 0x1

    .line 215
    :goto_1
    return v1

    .line 210
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static makeVideoShortcutIntent(Landroid/content/Context;Lcom/youku/vo/NewVideoDetail;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 263
    :goto_0
    return-object v3

    .line 253
    :cond_0
    iget-object v5, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v5, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    .line 254
    .local v0, "albumId":Ljava/lang/String;
    iget-object v5, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v5, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    .line 255
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v1, v5, Lcom/youku/vo/NewVideoDetail$Detail;->cid:I

    .line 257
    .local v1, "channelId":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v3, "shortcutIntent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tudou://albumid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 260
    .local v2, "content_url":Landroid/net/Uri;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 261
    const-string v5, "from"

    const-string v6, "Tudou Luncher"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const/high16 v5, 0x14200000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static onRecommentClick(Lcom/youku/vo/DetailRecomment;ILjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V
    .locals 6
    .param p0, "recomment"    # Lcom/youku/vo/DetailRecomment;
    .param p1, "pos"    # I
    .param p2, "itemCode"    # Ljava/lang/String;
    .param p3, "newVideoDetail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    const/4 v5, 0x1

    .line 136
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 138
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    const-string/jumbo v2, "wangyan"

    invoke-static {p0, p1, p2, p3}, Lcom/youku/http/TudouURLContainer;->getAlbumRecommentCliclLogURL(Lcom/youku/vo/DetailRecomment;ILjava/lang/String;Lcom/youku/vo/NewVideoDetail;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p0, p1, p2, p3}, Lcom/youku/http/TudouURLContainer;->getAlbumRecommentCliclLogURL(Lcom/youku/vo/DetailRecomment;ILjava/lang/String;Lcom/youku/vo/NewVideoDetail;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-static {p0, p1, p2, p3}, Lcom/youku/http/TudouURLContainer;->getAlbumRecommentCliclLogURLMapString(Lcom/youku/vo/DetailRecomment;ILjava/lang/String;Lcom/youku/vo/NewVideoDetail;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 144
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/detail/Test$2;

    invoke-direct {v2}, Lcom/tudou/detail/Test$2;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 156
    return-void
.end method

.method public static onStartFromH5(Ljava/lang/String;)V
    .locals 13
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    .line 68
    const/4 v0, 0x0

    .local v0, "source":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "cookieid":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "ua":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "tuid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 69
    .local v4, "refer":Ljava/lang/String;
    sget-object v5, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStartFromH5 url = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v5, "source"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .local v9, "result":I
    if-eq v9, v12, :cond_0

    .line 74
    const-string v5, "&"

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .local v6, "end":I
    if-eq v6, v12, :cond_5

    .line 75
    const-string/jumbo v5, "source"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 81
    .end local v6    # "end":I
    :cond_0
    :goto_0
    const-string v5, "cookieid"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_1

    .line 82
    const-string v5, "&"

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "end":I
    if-eq v6, v12, :cond_6

    .line 83
    const-string v5, "cookieid"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 89
    .end local v6    # "end":I
    :cond_1
    :goto_1
    const-string/jumbo v5, "ua"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_2

    .line 90
    const-string v5, "&"

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "end":I
    if-eq v6, v12, :cond_7

    .line 91
    const-string/jumbo v5, "ua"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 97
    .end local v6    # "end":I
    :cond_2
    :goto_2
    const-string/jumbo v5, "tuid"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_3

    .line 98
    const-string v5, "&"

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "end":I
    if-eq v6, v12, :cond_8

    .line 99
    const-string/jumbo v5, "tuid"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 105
    .end local v6    # "end":I
    :cond_3
    :goto_3
    const-string/jumbo v5, "refer"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_4

    .line 106
    const-string v5, "&"

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "end":I
    if-eq v6, v12, :cond_9

    .line 107
    const-string/jumbo v5, "refer"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 113
    .end local v6    # "end":I
    :cond_4
    :goto_4
    sget-object v5, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStartFromH5 source = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v5, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStartFromH5 cookieid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v5, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStartFromH5 ua = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v5, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStartFromH5 tuid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v5, Lcom/tudou/detail/Test;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStartFromH5 refer = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-class v5, Lcom/youku/network/IHttpRequest;

    const/4 v10, 0x1

    invoke-static {v5, v10}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/network/IHttpRequest;

    .line 120
    .local v8, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v7, Lcom/youku/network/HttpIntent;

    const-string v5, "1"

    invoke-static/range {v0 .. v5}, Lcom/youku/http/TudouURLContainer;->getStartFromH5URL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v7, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v5, Lcom/tudou/detail/Test$1;

    invoke-direct {v5}, Lcom/tudou/detail/Test$1;-><init>()V

    invoke-interface {v8, v7, v5}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 133
    return-void

    .line 77
    .end local v7    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v8    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v6    # "end":I
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 78
    const-string/jumbo v5, "source"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 85
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 86
    const-string v5, "cookieid"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 93
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 94
    const-string/jumbo v5, "ua"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 101
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 102
    const-string/jumbo v5, "tuid"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 109
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 110
    const-string/jumbo v5, "refer"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4
.end method

.method public static uploadCommentImage(Ljava/io/File;Ljava/lang/String;Lcom/tudou/detail/Test$OnUploadCompleteListener;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "RequestURL"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/tudou/detail/Test$OnUploadCompleteListener;

    .prologue
    .line 572
    new-instance v0, Lcom/tudou/detail/Test$3;

    invoke-direct {v0, p1, p0, p2}, Lcom/tudou/detail/Test$3;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/tudou/detail/Test$OnUploadCompleteListener;)V

    invoke-virtual {v0}, Lcom/tudou/detail/Test$3;->start()V

    .line 645
    return-void
.end method

.method public static zoomImg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 475
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x1050000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    .line 478
    .local v7, "newSize":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 479
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 481
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

    .line 482
    const-string v0, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "width======="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
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

    .line 485
    int-to-float v0, v7

    int-to-float v2, v4

    div-float v9, v0, v2

    .line 486
    .local v9, "scale":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v9, v0

    if-nez v0, :cond_0

    .line 495
    .end local p0    # "bm":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 490
    .restart local p0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 491
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 493
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .local v8, "newbm":Landroid/graphics/Bitmap;
    move-object p0, v8

    .line 495
    goto :goto_0
.end method
