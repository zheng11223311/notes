.class public Lcom/tudou/videoshare/ShareUtil;
.super Ljava/lang/Object;
.source "ShareUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/videoshare/ShareUtil$IShareCallBack;
    }
.end annotation


# static fields
.field public static final SCOPE:Ljava/lang/String; = "get_user_info,get_simple_userinfo,get_user_profile,get_app_friends,add_share,add_topic,list_album,upload_pic,add_album,set_user_face,get_vip_info,get_vip_rich_info,get_intimate_friends_weibo,match_nick_tips_weibo"

.field private static final TAG:Ljava/lang/String; = "TAG_TUDOU"

.field public static final TYPE_OTHER:Ljava/lang/String; = "TYPE_OTHER"

.field public static final TYPE_QQ:Ljava/lang/String; = "TYPE_QQ"

.field public static final TYPE_QQ_ZONE:Ljava/lang/String; = "TYPE_QQ_ZONE"

.field public static final TYPE_SINA:Ljava/lang/String; = "TYPE_SINA"

.field public static final TYPE_WX:Ljava/lang/String; = "WX"

.field public static final TYPE_WXF:Ljava/lang/String; = "WXF"

.field public static final TYPE_WXF_IMG:Ljava/lang/String; = "WXF_IMG"

.field public static final TYPE_WXF_SHORT:Ljava/lang/String; = "WXF_SHORT"

.field public static final TYPE_WX_IMG:Ljava/lang/String; = "WX_IMG"

.field public static final TYPE_WX_SHORT:Ljava/lang/String; = "WX_SHORT"

.field public static final Tencent_APP_ID:Ljava/lang/String; = "200003"

.field public static final WX_APP_ID:Ljava/lang/String; = "wxe57789d2d05098c0"

.field private static mHandler:Landroid/os/Handler;

.field private static mTencentQQZone:Lcom/tencent/tauth/Tencent;

.field public static mTencentWeibo:Lcom/tencent/tauth/Tencent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 331
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/tudou/videoshare/ShareUtil;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/videoshare/ShareUtil$IShareCallBack;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/tudou/videoshare/ShareUtil;->setCallBack(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/tauth/Tencent;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/tudou/videoshare/ShareUtil;->mTencentQQZone:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method public static bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
    .locals 6
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "needRecycle"    # Z

    .prologue
    .line 219
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 221
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 227
    .local v2, "result":[B
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "share_len==========="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-object v2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static doShareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
    .locals 7
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "aBundle"    # Landroid/os/Bundle;
    .param p2, "shareType"    # Ljava/lang/String;
    .param p3, "aCallback"    # Lcom/tudou/videoshare/ShareUtil$IShareCallBack;
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 558
    const-string v0, "com.tencent.mobileqq"

    invoke-static {p0, v0}, Lcom/tudou/videoshare/ShareUtil;->isInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    const-string/jumbo v0, "\u60a8\u8fd8\u6ca1\u6709\u5b89\u88c5QQ\u5ba2\u6237\u7aef"

    new-instance v1, Lcom/tudou/videoshare/ShareUtil$10;

    invoke-direct {v1, p3, p4}, Lcom/tudou/videoshare/ShareUtil$10;-><init>(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    invoke-static {p0, v0, v1, v2, v2}, Lcom/tudou/videoshare/ShareUtil;->popUpDialog(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/IAlertPositive;IZ)Lcom/youku/widget/TudouDialog;

    .line 636
    :goto_0
    return-void

    .line 575
    :cond_0
    const-string v0, "com.tencent.mobileqq"

    invoke-static {p0, v0}, Lcom/tudou/videoshare/ShareUtil;->getAppVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x4b

    if-gt v0, v1, :cond_1

    .line 577
    const-string/jumbo v0, "\u7531\u4e8e\u60a8\u5b89\u88c5\u7684QQ\u7248\u672c\u592a\u4f4e\uff0c\u65e0\u6cd5\u5206\u4eab"

    new-instance v1, Lcom/tudou/videoshare/ShareUtil$11;

    invoke-direct {v1, p3, p4}, Lcom/tudou/videoshare/ShareUtil$11;-><init>(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    invoke-static {p0, v0, v1, v2, v2}, Lcom/tudou/videoshare/ShareUtil;->popUpDialog(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/IAlertPositive;IZ)Lcom/youku/widget/TudouDialog;

    goto :goto_0

    .line 593
    :cond_1
    invoke-static {}, Lcom/tudou/videoshare/ShareUtil;->getTencentInstance()Lcom/tencent/tauth/Tencent;

    move-result-object v0

    sput-object v0, Lcom/tudou/videoshare/ShareUtil;->mTencentQQZone:Lcom/tencent/tauth/Tencent;

    .line 594
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/tudou/videoshare/ShareUtil$12;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tudou/videoshare/ShareUtil$12;-><init>(Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static getAppVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 267
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 268
    .local v2, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_1

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 270
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 271
    .local v3, "pn":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 276
    .end local v0    # "i":I
    .end local v3    # "pn":Ljava/lang/String;
    :goto_1
    return v4

    .line 269
    .restart local v0    # "i":I
    .restart local v3    # "pn":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "i":I
    .end local v3    # "pn":Ljava/lang/String;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public static getCMSChatContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    const-string v0, ""

    .line 206
    .local v0, "netWord":Ljava/lang/String;
    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->share_document:Lcom/youku/vo/Initial$ShareDocument;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->share_document:Lcom/youku/vo/Initial$ShareDocument;

    iget-object v1, v1, Lcom/youku/vo/Initial$ShareDocument;->entrance:Lcom/youku/vo/Entrance;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->share_document:Lcom/youku/vo/Initial$ShareDocument;

    iget-object v1, v1, Lcom/youku/vo/Initial$ShareDocument;->entrance:Lcom/youku/vo/Entrance;

    iget-object v1, v1, Lcom/youku/vo/Entrance;->watch_and_chat:Lcom/youku/vo/PhotoCut;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->share_document:Lcom/youku/vo/Initial$ShareDocument;

    iget-object v1, v1, Lcom/youku/vo/Initial$ShareDocument;->entrance:Lcom/youku/vo/Entrance;

    iget-object v1, v1, Lcom/youku/vo/Entrance;->watch_and_chat:Lcom/youku/vo/PhotoCut;

    iget-object v1, v1, Lcom/youku/vo/PhotoCut;->content:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->share_document:Lcom/youku/vo/Initial$ShareDocument;

    iget-object v1, v1, Lcom/youku/vo/Initial$ShareDocument;->entrance:Lcom/youku/vo/Entrance;

    iget-object v1, v1, Lcom/youku/vo/Entrance;->watch_and_chat:Lcom/youku/vo/PhotoCut;

    iget-object v1, v1, Lcom/youku/vo/PhotoCut;->content:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 209
    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->share_document:Lcom/youku/vo/Initial$ShareDocument;

    iget-object v1, v1, Lcom/youku/vo/Initial$ShareDocument;->entrance:Lcom/youku/vo/Entrance;

    iget-object v1, v1, Lcom/youku/vo/Entrance;->watch_and_chat:Lcom/youku/vo/PhotoCut;

    iget-object v1, v1, Lcom/youku/vo/PhotoCut;->content:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 211
    :cond_0
    return-object v0
.end method

.method private static getQQShareShortBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "shareType"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 528
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 529
    .local v1, "qqBundle":Landroid/os/Bundle;
    const-string v2, "TYPE_QQ"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    const-string/jumbo v2, "req_type"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    const-string v2, "imageUrl"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :goto_0
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string/jumbo v2, "targetUrl"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string/jumbo v2, "summary"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v2, "appName"

    const-string v3, " \u571f\u8c46\u89c6\u9891\u5ba2\u6237\u7aef"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-object v1

    .line 535
    :cond_0
    const-string/jumbo v2, "req_type"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v0, "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    const-string v2, "imageUrl"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static getResolveInfo()Lcom/tudou/videoshare/ShareHolder;
    .locals 10

    .prologue
    .line 643
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "text/plain"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    sget-object v7, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 646
    .local v6, "targetedResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v6}, Lcom/tudou/videoshare/ShareUtil;->removeRepeatInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 647
    new-instance v1, Lcom/tudou/videoshare/ShareHolder;

    invoke-direct {v1}, Lcom/tudou/videoshare/ShareHolder;-><init>()V

    .line 648
    .local v1, "holder":Lcom/tudou/videoshare/ShareHolder;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 649
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 650
    .local v5, "pkg":Ljava/lang/String;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 651
    .local v0, "cls":Ljava/lang/String;
    const-string v7, "TAG_TUDOU"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===packageName removed==="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "==className=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v7, "com.tencent.mm"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 653
    new-instance v7, Lcom/tudou/videoshare/ShareHolder$ShareItem;

    invoke-direct {v7}, Lcom/tudou/videoshare/ShareHolder$ShareItem;-><init>()V

    iput-object v7, v1, Lcom/tudou/videoshare/ShareHolder;->itemWX:Lcom/tudou/videoshare/ShareHolder$ShareItem;

    .line 654
    iget-object v7, v1, Lcom/tudou/videoshare/ShareHolder;->itemWX:Lcom/tudou/videoshare/ShareHolder$ShareItem;

    iput-object v5, v7, Lcom/tudou/videoshare/ShareHolder$ShareItem;->packageName:Ljava/lang/String;

    .line 655
    iget-object v7, v1, Lcom/tudou/videoshare/ShareHolder;->itemWX:Lcom/tudou/videoshare/ShareHolder$ShareItem;

    iput-object v0, v7, Lcom/tudou/videoshare/ShareHolder$ShareItem;->className:Ljava/lang/String;

    goto :goto_0

    .line 656
    :cond_1
    const-string v7, "com.tencent.mobileqq"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 657
    new-instance v7, Lcom/tudou/videoshare/ShareHolder$ShareItem;

    invoke-direct {v7}, Lcom/tudou/videoshare/ShareHolder$ShareItem;-><init>()V

    iput-object v7, v1, Lcom/tudou/videoshare/ShareHolder;->itemQQ:Lcom/tudou/videoshare/ShareHolder$ShareItem;

    .line 658
    iget-object v7, v1, Lcom/tudou/videoshare/ShareHolder;->itemQQ:Lcom/tudou/videoshare/ShareHolder$ShareItem;

    iput-object v5, v7, Lcom/tudou/videoshare/ShareHolder$ShareItem;->packageName:Ljava/lang/String;

    .line 659
    iget-object v7, v1, Lcom/tudou/videoshare/ShareHolder;->itemQQ:Lcom/tudou/videoshare/ShareHolder$ShareItem;

    iput-object v0, v7, Lcom/tudou/videoshare/ShareHolder$ShareItem;->className:Ljava/lang/String;

    goto :goto_0

    .line 662
    .end local v0    # "cls":Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public static getShareCopySpannable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 10
    .param p0, "roomId"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u590d\u5236\u8be5\u6761\u4fe1\u606f\uff0c\u6253\u5f00\u3010\u571f\u8c46\u89c6\u9891\u3011\u5373\u53ef\u8fdb\u5165\u623f\u95f4\uff0c\u548c\u6211\u4e00\u8d77\u8fb9\u770b\u8fb9\u804a\u3002"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u300c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u300d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "one":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u623f\u95f4\u53f7\u300c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u300d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "two":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/videoshare/ShareUtil;->getCMSChatContent()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "three":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "showStr":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 196
    .local v3, "ss":Landroid/text/SpannableString;
    sget-object v6, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090132

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 197
    .local v0, "color":I
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 200
    return-object v3
.end method

.method public static getShareHolder()Lcom/tudou/videoshare/ShareHolder;
    .locals 3

    .prologue
    .line 666
    new-instance v0, Lcom/tudou/videoshare/ShareHolder;

    invoke-direct {v0}, Lcom/tudou/videoshare/ShareHolder;-><init>()V

    .line 667
    .local v0, "holder":Lcom/tudou/videoshare/ShareHolder;
    new-instance v1, Lcom/tudou/videoshare/ShareHolder$ShareItem;

    invoke-direct {v1}, Lcom/tudou/videoshare/ShareHolder$ShareItem;-><init>()V

    iput-object v1, v0, Lcom/tudou/videoshare/ShareHolder;->itemWX:Lcom/tudou/videoshare/ShareHolder$ShareItem;

    .line 668
    iget-object v1, v0, Lcom/tudou/videoshare/ShareHolder;->itemWX:Lcom/tudou/videoshare/ShareHolder$ShareItem;

    const-string v2, "com.tencent.mm"

    iput-object v2, v1, Lcom/tudou/videoshare/ShareHolder$ShareItem;->packageName:Ljava/lang/String;

    .line 669
    iget-object v1, v0, Lcom/tudou/videoshare/ShareHolder;->itemWX:Lcom/tudou/videoshare/ShareHolder$ShareItem;

    const-string v2, "com.tencent.mm.ui.tools.ShareImgUI"

    iput-object v2, v1, Lcom/tudou/videoshare/ShareHolder$ShareItem;->className:Ljava/lang/String;

    .line 671
    new-instance v1, Lcom/tudou/videoshare/ShareHolder$ShareItem;

    invoke-direct {v1}, Lcom/tudou/videoshare/ShareHolder$ShareItem;-><init>()V

    iput-object v1, v0, Lcom/tudou/videoshare/ShareHolder;->itemQQ:Lcom/tudou/videoshare/ShareHolder$ShareItem;

    .line 672
    iget-object v1, v0, Lcom/tudou/videoshare/ShareHolder;->itemQQ:Lcom/tudou/videoshare/ShareHolder$ShareItem;

    const-string v2, "com.tencent.mobileqq"

    iput-object v2, v1, Lcom/tudou/videoshare/ShareHolder$ShareItem;->packageName:Ljava/lang/String;

    .line 673
    iget-object v1, v0, Lcom/tudou/videoshare/ShareHolder;->itemQQ:Lcom/tudou/videoshare/ShareHolder$ShareItem;

    const-string v2, "com.tencent.mobileqq.activity.JumpActivity"

    iput-object v2, v1, Lcom/tudou/videoshare/ShareHolder$ShareItem;->className:Ljava/lang/String;

    .line 674
    return-object v0
.end method

.method public static getShortVideoContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uff08\u4e0b\u8f7d\u571f\u8c46app\uff1ahttp://mobile.tudou.com\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "content":Ljava/lang/String;
    return-object v0
.end method

.method public static getTencentInstance()Lcom/tencent/tauth/Tencent;
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/tudou/videoshare/ShareUtil;->mTencentQQZone:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_0

    .line 245
    const-string v0, "200003"

    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    sput-object v0, Lcom/tudou/videoshare/ShareUtil;->mTencentQQZone:Lcom/tencent/tauth/Tencent;

    .line 247
    :cond_0
    sget-object v0, Lcom/tudou/videoshare/ShareUtil;->mTencentQQZone:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method private static getUriFromImgPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .param p0, "imgPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 403
    const/4 v9, 0x0

    .line 404
    .local v9, "uri":Landroid/net/Uri;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 405
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 407
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 408
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 409
    .local v6, "buff":Ljava/lang/StringBuffer;
    const-string v1, "("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 418
    .local v7, "cur":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 419
    .local v8, "index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 423
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 419
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 425
    :cond_0
    if-nez v8, :cond_2

    .line 437
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "buff":Ljava/lang/StringBuffer;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v8    # "index":I
    :cond_1
    :goto_1
    return-object v9

    .line 428
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "buff":Ljava/lang/StringBuffer;
    .restart local v7    # "cur":Landroid/database/Cursor;
    .restart local v8    # "index":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/external/images/media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 432
    .local v10, "uri_temp":Landroid/net/Uri;
    if-eqz v10, :cond_1

    .line 433
    move-object v9, v10

    goto :goto_1
.end method

.method private static getWXImgShareBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "imagePath"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 383
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "shareType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v1, "imagePath"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-object v0
.end method

.method private static getWXShortVideoBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "imagePath"    # Ljava/lang/String;
    .param p4, "shareType"    # Ljava/lang/String;

    .prologue
    .line 389
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 390
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "shareType"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v1, "imagePath"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string/jumbo v1, "summary"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string/jumbo v1, "targetUrl"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-object v0
.end method

.method public static goShareSina(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
    .locals 2
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "aBundle"    # Landroid/os/Bundle;
    .param p2, "aCallBack"    # Lcom/tudou/videoshare/ShareUtil$IShareCallBack;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 324
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/videoshare/WBShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 326
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 327
    const/4 v1, 0x1

    invoke-static {p2, v1, p3}, Lcom/tudou/videoshare/ShareUtil;->setCallBack(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;ZLjava/lang/String;)V

    .line 328
    return-void
.end method

.method public static goShareSinaAdvance(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
    .locals 2
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "aBundle"    # Landroid/os/Bundle;
    .param p2, "aCallBack"    # Lcom/tudou/videoshare/ShareUtil$IShareCallBack;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string v0, "TAG_TUDOU"

    const-string/jumbo v1, "sina\u5206\u4eab"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/tudou/videoshare/WBShareActivity;->isBlackMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tudou/videoshare/WBShareActivity;->createWeiboShareAPI(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->isWeiboAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {}, Lcom/tudou/videoshare/SinaShare;->getInstance()Lcom/tudou/videoshare/SinaShare;

    move-result-object v0

    new-instance v1, Lcom/tudou/videoshare/ShareUtil$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tudou/videoshare/ShareUtil$7;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/tudou/videoshare/SinaShare;->authorize(Landroid/app/Activity;Lcom/tudou/videoshare/SinaShare$IAuthCallBack;)V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/tudou/videoshare/ShareUtil;->goShareSina(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 252
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 253
    .local v3, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v1, "pName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 257
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 259
    .local v4, "pn":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "i":I
    .end local v4    # "pn":Ljava/lang/String;
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public static onShareClick(Landroid/app/Activity;Ljava/lang/String;Lcom/tudou/videoshare/ShareHolder$ShareItem;)V
    .locals 5
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "shareWord"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/tudou/videoshare/ShareHolder$ShareItem;

    .prologue
    .line 678
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 679
    .local v1, "targetIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/tudou/videoshare/ShareHolder$ShareItem;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/tudou/videoshare/ShareHolder$ShareItem;->className:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 680
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 684
    const-string v2, "android.intent.extra.SUBJECT"

    const-string/jumbo v3, "\u5206\u4eab"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    return-void

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static popChatSure(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/IAlertPositive;ILandroid/text/SpannableString;)Lcom/youku/widget/TudouDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mes"    # Ljava/lang/String;
    .param p2, "aIAlertDelete"    # Lcom/tudou/videoshare/IAlertPositive;
    .param p3, "tag"    # I
    .param p4, "mContent"    # Landroid/text/SpannableString;

    .prologue
    .line 138
    new-instance v0, Lcom/youku/widget/TudouDialog;

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->chat_sure:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v0, p0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 142
    .local v0, "ab":Lcom/youku/widget/TudouDialog;
    invoke-virtual {v0, p4}, Lcom/youku/widget/TudouDialog;->setColorMessage(Landroid/text/SpannableString;)V

    .line 143
    const-string/jumbo v1, "\u5206\u4eab\u6d88\u606f\u5df2\u751f\u6210"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setTitle(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "\u53bb\u7c98\u8d34"

    new-instance v2, Lcom/tudou/videoshare/ShareUtil$4;

    invoke-direct {v2, p2, p3, v0}, Lcom/tudou/videoshare/ShareUtil$4;-><init>(Lcom/tudou/videoshare/IAlertPositive;ILcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 158
    const-string/jumbo v1, "\u4e0d\u5206\u4eab\u4e86"

    new-instance v2, Lcom/tudou/videoshare/ShareUtil$5;

    invoke-direct {v2, p2, p3, v0}, Lcom/tudou/videoshare/ShareUtil$5;-><init>(Lcom/tudou/videoshare/IAlertPositive;ILcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v1, Lcom/tudou/videoshare/ShareUtil$6;

    invoke-direct {v1, p2, p3}, Lcom/tudou/videoshare/ShareUtil$6;-><init>(Lcom/tudou/videoshare/IAlertPositive;I)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 183
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 184
    return-object v0
.end method

.method public static popUpDialog(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/IAlertPositive;IZ)Lcom/youku/widget/TudouDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mes"    # Ljava/lang/String;
    .param p2, "aIAlertDelete"    # Lcom/tudou/videoshare/IAlertPositive;
    .param p3, "tag"    # I
    .param p4, "flag"    # Z

    .prologue
    .line 84
    new-instance v0, Lcom/youku/widget/TudouDialog;

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v0, p0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 87
    .local v0, "ab":Lcom/youku/widget/TudouDialog;
    invoke-virtual {v0, p1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 88
    const v1, 0x7f0d00c9

    new-instance v2, Lcom/tudou/videoshare/ShareUtil$1;

    invoke-direct {v2, p2, p3, v0}, Lcom/tudou/videoshare/ShareUtil$1;-><init>(Lcom/tudou/videoshare/IAlertPositive;ILcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 102
    if-eqz p4, :cond_0

    .line 103
    const v1, 0x7f0d00b2

    new-instance v2, Lcom/tudou/videoshare/ShareUtil$2;

    invoke-direct {v2, p2, p3, v0}, Lcom/tudou/videoshare/ShareUtil$2;-><init>(Lcom/tudou/videoshare/IAlertPositive;ILcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 118
    :cond_0
    new-instance v1, Lcom/tudou/videoshare/ShareUtil$3;

    invoke-direct {v1, p2, p3}, Lcom/tudou/videoshare/ShareUtil$3;-><init>(Lcom/tudou/videoshare/IAlertPositive;I)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 129
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 130
    return-object v0
.end method

.method private static removeRepeatInfo(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    .local p0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 706
    :cond_0
    const/4 v4, 0x0

    .line 726
    :cond_1
    return-object v4

    .line 707
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v4, "resultResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 711
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    const-string v5, "TAG_TUDOU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===packageName==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==className=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, "have":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_4

    .line 714
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "com.alibaba.android.babylon"

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 718
    const/4 v0, 0x1

    .line 722
    :cond_4
    if-nez v0, :cond_3

    .line 723
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 713
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method private static setCallBack(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;ZLjava/lang/String;)V
    .locals 2
    .param p0, "aCallback"    # Lcom/tudou/videoshare/ShareUtil$IShareCallBack;
    .param p1, "needDismiss"    # Z
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 340
    if-eqz p0, :cond_0

    .line 341
    sget-object v0, Lcom/tudou/videoshare/ShareUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tudou/videoshare/ShareUtil$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/tudou/videoshare/ShareUtil$8;-><init>(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    :cond_0
    return-void
.end method

.method public static share2Other(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
    .locals 5
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "aCallBack"    # Lcom/tudou/videoshare/ShareUtil$IShareCallBack;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 64
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, "other":Landroid/content/Intent;
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v3, "\u8bf7\u9009\u62e9\uff1a"

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 69
    .local v1, "exeOther":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-static {p2, v4, p3}, Lcom/tudou/videoshare/ShareUtil;->setCallBack(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;ZLjava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "\u6ca1\u6709\u53ef\u5206\u4eab\u5ba2\u6237\u7aef"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {p2, v4, p3}, Lcom/tudou/videoshare/ShareUtil;->setCallBack(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;ZLjava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {p2, v4, p3}, Lcom/tudou/videoshare/ShareUtil;->setCallBack(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;ZLjava/lang/String;)V

    throw v3
.end method

.method public static shareImg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
    .locals 1
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "shareType"    # Ljava/lang/String;
    .param p3, "videoUrl"    # Ljava/lang/String;
    .param p4, "aCallback"    # Lcom/tudou/videoshare/ShareUtil$IShareCallBack;
    .param p5, "path"    # Ljava/lang/String;

    .prologue
    .line 478
    const-string v0, "TYPE_SINA"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const-string p3, ""

    .line 482
    :cond_0
    invoke-static {p0, p3, p1, p4, p5}, Lcom/tudou/videoshare/ShareUtil;->shareWeiboImg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    .line 491
    :cond_1
    :goto_0
    return-void

    .line 483
    :cond_2
    const-string v0, "TYPE_OTHER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 484
    invoke-static {p0, p1}, Lcom/tudou/videoshare/ShareUtil;->shareImgOther(Landroid/app/Activity;Ljava/lang/String;)V

    .line 485
    if-eqz p4, :cond_1

    .line 486
    const/4 v0, 0x1

    invoke-interface {p4, v0, p5}, Lcom/tudou/videoshare/ShareUtil$IShareCallBack;->dismiss(ZLjava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_3
    invoke-static {p1, p2}, Lcom/tudou/videoshare/ShareUtil;->getWXImgShareBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0, p4, p5}, Lcom/tudou/videoshare/ShareUtil;->shareWX(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static shareImgOther(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "imgPath"    # Ljava/lang/String;

    .prologue
    .line 442
    invoke-static {p1}, Lcom/tudou/videoshare/ShareUtil;->getUriFromImgPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 443
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 444
    const-string/jumbo v4, "\u56fe\u7247\u8def\u5f84\u83b7\u53d6\u5931\u8d25"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 459
    :goto_0
    return-void

    .line 447
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v2, "other":Landroid/content/Intent;
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 449
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string/jumbo v4, "\u8bf7\u9009\u62e9\uff1a"

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 452
    .local v1, "exeOther":Landroid/content/Intent;
    const/16 v4, 0x21

    :try_start_0
    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "\u6ca1\u6709\u53ef\u5206\u4eab\u5ba2\u6237\u7aef"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static shareShortVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "videoUrl"    # Ljava/lang/String;
    .param p4, "shareType"    # Ljava/lang/String;
    .param p5, "imgUrl"    # Ljava/lang/String;
    .param p6, "aCallback"    # Lcom/tudou/videoshare/ShareUtil$IShareCallBack;
    .param p7, "path"    # Ljava/lang/String;

    .prologue
    .line 498
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "title===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=videoUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=shareType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=img="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v0, "TYPE_SINA"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-static {p0, p1, p3, p6, p7}, Lcom/tudou/videoshare/ShareUtil;->shareSinaShortVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    .line 509
    :goto_0
    return-void

    .line 502
    :cond_0
    const-string v0, "WX_SHORT"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WXF_SHORT"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    :cond_1
    invoke-static {p1, p2, p3, p5, p4}, Lcom/tudou/videoshare/ShareUtil;->getWXShortVideoBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0, p6, p7}, Lcom/tudou/videoshare/ShareUtil;->shareWX(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_2
    const-string v0, "TYPE_QQ"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TYPE_QQ_ZONE"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 505
    :cond_3
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tudou/videoshare/ShareUtil;->getQQShareShortBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0, p4, p6, p7}, Lcom/tudou/videoshare/ShareUtil;->doShareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_4
    invoke-static {p1, p3}, Lcom/tudou/videoshare/ShareUtil;->getShortVideoContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p6, p7}, Lcom/tudou/videoshare/ShareUtil;->share2Other(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static shareSinaShortVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "aCallBack"    # Lcom/tudou/videoshare/ShareUtil$IShareCallBack;
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 513
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 514
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mShareType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string/jumbo v1, "videoPath"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {p0, v0, p3, p4}, Lcom/tudou/videoshare/ShareUtil;->goShareSinaAdvance(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public static shareWX(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
    .locals 4
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "aCallback"    # Lcom/tudou/videoshare/ShareUtil$IShareCallBack;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 352
    invoke-static {}, Lcom/tudou/android/wxapi/WXEntryActivity;->isWXInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    if-eqz p2, :cond_0

    .line 354
    const/4 v1, 0x1

    invoke-interface {p2, v1, p3}, Lcom/tudou/videoshare/ShareUtil$IShareCallBack;->dismiss(ZLjava/lang/String;)V

    .line 356
    :cond_0
    const-string v1, "TAG_TUDOU"

    const-string v2, "go  wx  share"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/android/wxapi/WXEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 359
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 379
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 361
    :cond_1
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v2, 0x7f0d0483

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tudou/videoshare/ShareUtil$9;

    invoke-direct {v2, p2, p3}, Lcom/tudou/videoshare/ShareUtil$9;-><init>(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    invoke-static {p0, v1, v2, v3, v3}, Lcom/tudou/videoshare/ShareUtil;->popUpDialog(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/IAlertPositive;IZ)Lcom/youku/widget/TudouDialog;

    goto :goto_0
.end method

.method private static shareWeiboImg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "videoPath"    # Ljava/lang/String;
    .param p2, "imgPath"    # Ljava/lang/String;
    .param p3, "aCallBack"    # Lcom/tudou/videoshare/ShareUtil$IShareCallBack;
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mShareType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string/jumbo v1, "videoPath"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "imgPath"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v1, "sharetype"

    const-string/jumbo v2, "sinaweibo"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {p0, v0, p3, p4}, Lcom/tudou/videoshare/ShareUtil;->goShareSinaAdvance(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public static startQQ()V
    .locals 3

    .prologue
    .line 696
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 697
    .local v0, "targetIntent":Landroid/content/Intent;
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 699
    return-void
.end method
