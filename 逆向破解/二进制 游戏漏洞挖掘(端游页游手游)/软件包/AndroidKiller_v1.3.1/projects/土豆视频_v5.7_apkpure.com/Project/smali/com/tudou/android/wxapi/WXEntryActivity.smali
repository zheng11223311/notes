.class public Lcom/tudou/android/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# static fields
.field private static Dep:I = 0x0

.field private static final FINISH:I = 0x7

.field private static final MAX_SIZE:J = 0x8000L

.field private static api:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# instance fields
.field private SINCE_SHARE_LIST:[Ljava/lang/String;

.field private isActive:Z

.field private isDanmu:Z

.field private mCid:Ljava/lang/String;

.field private mEachTitle:Ljava/lang/String;

.field private mLoadingHandler:Landroid/os/Handler;

.field private mPlayCount:Ljava/lang/String;

.field private mShareType:I

.field private newBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 507
    const/16 v0, 0xa

    sput v0, Lcom/tudou/android/wxapi/WXEntryActivity;->Dep:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u6765\u5230\u571f\u8c46\u81ea\u9891\u9053\uff0c\u6211\u6574\u4e2a\u4eba\u90fdduang\u4e86"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "\u571f\u8c46\u81ea\u9891\u9053\uff0c\u65f6\u5c1a\u65f6\u5c1a\u6700\u65f6\u5c1a"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u6765\u6216\u662f\u4e0d\u6765\uff0c\u571f\u8c46\u81ea\u9891\u9053\u5c31\u5728\u8fd9\u91cc\uff0c\u7b49\u7740\u4f60"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\u5988\u5988\u8bf4\uff0c\u591a\u591a\u571f\u8c46\u8ba2\u9605\u81ea\u9891\u9053\u6709\u52a9\u4e8e\u6210\u7ee9\u63d0\u5347\u54e6"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u81ea\u4ece\u8ba2\u9605\u571f\u8c46\u81ea\u9891\u9053\uff0c\u4e00\u53e3\u6c14\u4e0a\u4e03\u697c\u90fd\u4e0d\u8d39\u52b2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u6709\u4e00\u4e2a\u4f20\u8bf4\uff0c\u989c\u503c\u9ad8\u7684\u4eba\u90fd\u8ba2\u9605\u4e86\u571f\u8c46\u81ea\u9891\u9053"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u5f53\u6709\u4eba\u544a\u8bc9\u6211\uff0c\u4ed6\u6ca1\u6709\u8ba2\u9605\u571f\u8c46\u81ea\u9891\u9053\u7684\u65f6\u5019\uff0c\u6211\u7684\u5185\u5fc3\u51e0\u4e4e\u662f\u5d29\u6e83\u7684"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->SINCE_SHARE_LIST:[Ljava/lang/String;

    .line 255
    iput-boolean v3, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->isActive:Z

    .line 319
    new-instance v0, Lcom/tudou/android/wxapi/WXEntryActivity$1;

    invoke-direct {v0, p0}, Lcom/tudou/android/wxapi/WXEntryActivity$1;-><init>(Lcom/tudou/android/wxapi/WXEntryActivity;)V

    iput-object v0, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->mLoadingHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/android/wxapi/WXEntryActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/wxapi/WXEntryActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->isActive:Z

    return v0
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap;)[B
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/tudou/android/wxapi/WXEntryActivity;->compressBitmapArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/android/wxapi/WXEntryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/wxapi/WXEntryActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tudou/android/wxapi/WXEntryActivity;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/android/wxapi/WXEntryActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/wxapi/WXEntryActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->mLoadingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/tudou/android/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 559
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static compressBitmapArray(Landroid/graphics/Bitmap;)[B
    .locals 12
    .param p0, "aBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/high16 v10, 0x40e0000000000000L    # 32768.0

    .line 511
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 512
    .local v5, "output":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p0, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 513
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 515
    .local v0, "bitArr":[B
    array-length v6, v0

    int-to-double v2, v6

    .line 516
    .local v2, "len":D
    const-string v6, "TAG_TUDOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "raw len=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    cmpl-double v6, v2, v10

    if-lez v6, :cond_1

    .line 520
    const/16 v4, 0x64

    .line 521
    .local v4, "options":I
    :goto_0
    cmpl-double v6, v2, v10

    if-lez v6, :cond_0

    .line 522
    invoke-static {v2, v3}, Lcom/tudou/android/wxapi/WXEntryActivity;->setDep(D)V

    .line 523
    sget v6, Lcom/tudou/android/wxapi/WXEntryActivity;->Dep:I

    sub-int/2addr v4, v6

    .line 524
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 525
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v6, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 526
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    int-to-double v2, v6

    .line 527
    const-string v6, "TAG_TUDOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "last len=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "===option=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 538
    .end local v4    # "options":I
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_1
    return-object v0

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static declared-synchronized getAPIInstance()Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 4

    .prologue
    .line 74
    const-class v1, Lcom/tudou/android/wxapi/WXEntryActivity;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tudou/android/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string/jumbo v2, "wxe57789d2d05098c0"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 77
    sget-object v0, Lcom/tudou/android/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string/jumbo v2, "wxe57789d2d05098c0"

    invoke-interface {v0, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 79
    :cond_0
    sget-object v0, Lcom/tudou/android/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSinceShareRandom()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 67
    .local v1, "random":Ljava/util/Random;
    iget-object v2, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->SINCE_SHARE_LIST:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 68
    .local v0, "num":I
    iget-object v2, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->SINCE_SHARE_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    return-object v2
.end method

.method private getSinceWXContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const-string/jumbo p1, "\u611f\u5174\u8da3\u5c31\u8ba2\u9605\uff0c\u81ea\u52a8\u63a8\u9001\u66f4\u65b0\u54e6"

    .line 277
    :cond_0
    return-object p1
.end method

.method public static isWXInstalled()Z
    .locals 1

    .prologue
    .line 694
    invoke-static {}, Lcom/tudou/android/wxapi/WXEntryActivity;->getAPIInstance()Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 695
    sget-object v0, Lcom/tudou/android/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    return v0
.end method

.method private static setDep(D)V
    .locals 4
    .param p0, "len"    # D

    .prologue
    .line 546
    const-wide/high16 v0, 0x40e0000000000000L    # 32768.0

    sub-double v0, p0, v0

    const-wide/high16 v2, 0x40c4000000000000L    # 10240.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 547
    const/16 v0, 0xa

    sput v0, Lcom/tudou/android/wxapi/WXEntryActivity;->Dep:I

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    const/4 v0, 0x5

    sput v0, Lcom/tudou/android/wxapi/WXEntryActivity;->Dep:I

    goto :goto_0
.end method

.method public static startWX()V
    .locals 1

    .prologue
    .line 699
    invoke-static {}, Lcom/tudou/android/wxapi/WXEntryActivity;->getAPIInstance()Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 700
    sget-object v0, Lcom/tudou/android/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->openWXApp()Z

    .line 701
    return-void
.end method


# virtual methods
.method public bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 627
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 628
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 629
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tudou/android/wxapi/WXEntryActivity;->requestWindowFeature(I)Z

    .line 85
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const-string v4, "TAG_TUDOU"

    const-string v9, "WXEntryActivity====onCreate"

    invoke-static {v4, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/tudou/android/wxapi/WXEntryActivity;->getAPIInstance()Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v4

    sput-object v4, Lcom/tudou/android/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 88
    sget-object v4, Lcom/tudou/android/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/android/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-interface {v4, v9, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/android/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    .line 92
    .local v20, "intent":Landroid/content/Intent;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    .line 95
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "title"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "videoTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "targetUrl"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "videoUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string v9, "imageUrl"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "picUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "summary"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 100
    .local v13, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string v9, "mShareType"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    .line 101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "shareType"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 103
    .local v19, "shareType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "shortDes"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 104
    .local v23, "shortDes":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string v9, "imgUrl"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 105
    .local v12, "imgUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string v9, "isUGC"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 107
    .local v21, "isUGC":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string v9, "cid"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mCid:Ljava/lang/String;

    .line 108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string v9, "eachTitle"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mEachTitle:Ljava/lang/String;

    .line 109
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string v9, "playCount"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mPlayCount:Ljava/lang/String;

    .line 110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string v9, "isDanmu"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->isDanmu:Z

    .line 112
    const-string v4, "TAG_TUDOU"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "shortDes==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "===eachTitle=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mEachTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v4, "WX"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 116
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    const/4 v9, 0x6

    if-ne v4, v9, :cond_8

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u3010\u9ad8\u6e05\u3011"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    const/4 v8, 0x0

    .line 126
    .local v8, "subTitle":Ljava/lang/String;
    const-string v4, "22"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mCid:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/android/wxapi/WXEntryActivity;->mEachTitle:Ljava/lang/String;

    .line 129
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->isDanmu:Z

    if-eqz v4, :cond_3

    .line 130
    const-string/jumbo v8, "\u4e2d\u56fd\u5f39\u5e55\u54ea\u5bb6\u5f3a\uff1f\u6765\u571f\u8c46\uff0c\u627e\u69fd\u573a\uff01"

    .line 140
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/tudou/android/wxapi/WXEntryActivity;->share2Session(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    .line 142
    .local v22, "result":Z
    if-nez v22, :cond_1

    .line 143
    const-string/jumbo v4, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 168
    .end local v8    # "subTitle":Ljava/lang/String;
    .end local v13    # "summary":Ljava/lang/String;
    .end local v19    # "shareType":Ljava/lang/String;
    .end local v22    # "result":Z
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mLoadingHandler:Landroid/os/Handler;

    const/4 v9, 0x7

    const-wide/16 v10, 0x1f4

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 253
    :cond_2
    :goto_2
    return-void

    .line 131
    .restart local v8    # "subTitle":Ljava/lang/String;
    .restart local v13    # "summary":Ljava/lang/String;
    .restart local v19    # "shareType":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mEachTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v21, :cond_7

    .line 132
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mPlayCount:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mPlayCount:Ljava/lang/String;

    invoke-static {v4}, Lcom/youku/util/Util;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 133
    :cond_5
    const-string/jumbo v8, "\u5c0f\u4f19\u4f34\u4eec\u6b63\u5728\u770b"

    goto :goto_0

    .line 135
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mPlayCount:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "\u5c0f\u4f19\u4f34\u6b63\u5728\u770b"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 138
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mEachTitle:Ljava/lang/String;

    goto :goto_0

    .line 145
    .end local v8    # "subTitle":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_9

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u3010\u9ad8\u6e05\u3011"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/tudou/android/wxapi/WXEntryActivity;->getSinceShareRandom()Ljava/lang/String;

    move-result-object v13

    .end local v13    # "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    move-object/from16 v9, p0

    move-object v10, v5

    move-object v11, v6

    invoke-virtual/range {v9 .. v14}, Lcom/tudou/android/wxapi/WXEntryActivity;->share2Session(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    .line 150
    .restart local v22    # "result":Z
    if-nez v22, :cond_1

    .line 151
    const-string/jumbo v4, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    .end local v22    # "result":Z
    .restart local v13    # "summary":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_a

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string v9, "picUrl"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 155
    move-object/from16 v0, p0

    iget v14, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    move-object/from16 v9, p0

    move-object v10, v5

    move-object v11, v6

    invoke-virtual/range {v9 .. v14}, Lcom/tudou/android/wxapi/WXEntryActivity;->share2Session(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    .line 156
    .restart local v22    # "result":Z
    if-nez v22, :cond_1

    .line 157
    const-string/jumbo v4, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 159
    .end local v22    # "result":Z
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    const/4 v9, 0x3

    if-ne v4, v9, :cond_1

    .line 160
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    move/from16 v19, v0

    .end local v19    # "shareType":Ljava/lang/String;
    move-object/from16 v14, p0

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v13

    invoke-virtual/range {v14 .. v19}, Lcom/tudou/android/wxapi/WXEntryActivity;->share2Session(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    .line 162
    .restart local v22    # "result":Z
    if-nez v22, :cond_1

    .line 163
    const-string/jumbo v4, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 169
    .end local v22    # "result":Z
    .restart local v19    # "shareType":Ljava/lang/String;
    :cond_b
    const-string v4, "WXF"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 170
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    const/4 v9, 0x6

    if-ne v4, v9, :cond_13

    .line 176
    const/16 v24, 0x0

    .line 177
    .local v24, "showTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->isDanmu:Z

    if-eqz v4, :cond_e

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u3010\u571f\u8c46\u3011"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " \u4e2d\u56fd\u5f39\u5e55\u54ea\u5bb6\u5f3a\uff1f\u6765\u571f\u8c46\uff0c\u627e\u69fd\u573a\uff01"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 208
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6, v7, v4}, Lcom/tudou/android/wxapi/WXEntryActivity;->share2Timeline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    .line 210
    .restart local v22    # "result":Z
    if-nez v22, :cond_d

    .line 211
    const-string/jumbo v4, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 234
    .end local v22    # "result":Z
    .end local v24    # "showTitle":Ljava/lang/String;
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mLoadingHandler:Landroid/os/Handler;

    const/4 v9, 0x7

    const-wide/16 v10, 0x1f4

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 180
    .restart local v24    # "showTitle":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mPlayCount:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mPlayCount:Ljava/lang/String;

    invoke-static {v4}, Lcom/youku/util/Util;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 181
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u5c0f\u4f19\u4f34\u4eec\u6b63\u5728\u770b\u300c"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "\u300d"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 194
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mEachTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 195
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mEachTitle:Ljava/lang/String;

    .line 197
    :cond_10
    const-string v4, "22"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mCid:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    if-nez v21, :cond_c

    .line 199
    const-string v4, "30"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mCid:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mEachTitle:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_3

    .line 183
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mPlayCount:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "\u5c0f\u4f19\u4f34\u6b63\u5728\u770b\u300c"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "\u300d"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_5

    .line 201
    :cond_12
    const-string v4, "31"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mCid:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 203
    const-string v4, "9"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mCid:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mEachTitle:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_3

    .line 213
    .end local v24    # "showTitle":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_14

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u3010\u571f\u8c46\u81ea\u9891\u9053\u3011"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/tudou/android/wxapi/WXEntryActivity;->getSinceShareRandom()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 215
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v12, v4}, Lcom/tudou/android/wxapi/WXEntryActivity;->share2Timeline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    .line 217
    .restart local v22    # "result":Z
    if-nez v22, :cond_d

    .line 218
    const-string/jumbo v4, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 220
    .end local v22    # "result":Z
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_15

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string v9, "picUrl"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 222
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v12, v4}, Lcom/tudou/android/wxapi/WXEntryActivity;->share2Timeline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    .line 224
    .restart local v22    # "result":Z
    if-nez v22, :cond_d

    .line 225
    const-string/jumbo v4, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 227
    .end local v22    # "result":Z
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    const/4 v9, 0x3

    if-ne v4, v9, :cond_d

    .line 228
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mShareType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/tudou/android/wxapi/WXEntryActivity;->share2Timeline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    .line 230
    .restart local v22    # "result":Z
    if-nez v22, :cond_d

    .line 231
    const-string/jumbo v4, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 236
    .end local v22    # "result":Z
    :cond_16
    const-string v4, "WX_IMG"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "WXF_IMG"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 237
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string v9, "imagePath"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 238
    .local v18, "imagePath":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/tudou/android/wxapi/WXEntryActivity;->shareLocalImage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    .line 239
    .restart local v22    # "result":Z
    if-nez v22, :cond_18

    .line 240
    const-string/jumbo v4, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 242
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mLoadingHandler:Landroid/os/Handler;

    const/4 v9, 0x7

    const-wide/16 v10, 0x1f4

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 243
    .end local v18    # "imagePath":Ljava/lang/String;
    .end local v22    # "result":Z
    :cond_19
    const-string v4, "WX_SHORT"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "WXF_SHORT"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->newBundle:Landroid/os/Bundle;

    const-string v9, "imagePath"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "imagePath":Ljava/lang/String;
    move-object/from16 v14, p0

    move-object v15, v5

    move-object/from16 v16, v13

    move-object/from16 v17, v6

    .line 245
    invoke-virtual/range {v14 .. v19}, Lcom/tudou/android/wxapi/WXEntryActivity;->shareShortVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    .line 246
    .restart local v22    # "result":Z
    if-nez v22, :cond_1b

    .line 247
    const-string/jumbo v4, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 249
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/android/wxapi/WXEntryActivity;->mLoadingHandler:Landroid/os/Handler;

    const/4 v9, 0x7

    const-wide/16 v10, 0x1f4

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 284
    invoke-virtual {p0, p1}, Lcom/tudou/android/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 285
    sget-object v0, Lcom/tudou/android/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 286
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 291
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 4
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "result":I
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resp.errCode===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    packed-switch v1, :pswitch_data_0

    .line 308
    :pswitch_0
    const v0, 0x7f0d0122

    .line 311
    :goto_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 316
    :goto_1
    iget-object v1, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->mLoadingHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    return-void

    .line 299
    :pswitch_1
    const v0, 0x7f0d0121

    .line 300
    goto :goto_0

    .line 302
    :pswitch_2
    const v0, 0x7f0d011f

    .line 303
    goto :goto_0

    .line 305
    :pswitch_3
    const v0, 0x7f0d0120

    .line 306
    goto :goto_0

    .line 314
    :cond_0
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_1

    .line 297
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->isActive:Z

    .line 261
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->isActive:Z

    .line 267
    return-void
.end method

.method public share2Session(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "picUrl"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "shareType"    # I

    .prologue
    const/4 v7, 0x1

    .line 353
    iget-object v0, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->mLoadingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 354
    new-instance v0, Lcom/tudou/android/wxapi/WXEntryActivity$2;

    move-object v1, p0

    move v2, p5

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tudou/android/wxapi/WXEntryActivity$2;-><init>(Lcom/tudou/android/wxapi/WXEntryActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tudou/android/wxapi/WXEntryActivity$2;->start()V

    .line 415
    return v7
.end method

.method public share2Timeline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "picUrl"    # Ljava/lang/String;
    .param p4, "shareType"    # I

    .prologue
    const/4 v6, 0x1

    .line 428
    iget-object v0, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->mLoadingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 429
    new-instance v0, Lcom/tudou/android/wxapi/WXEntryActivity$3;

    move-object v1, p0

    move v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tudou/android/wxapi/WXEntryActivity$3;-><init>(Lcom/tudou/android/wxapi/WXEntryActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tudou/android/wxapi/WXEntryActivity$3;->start()V

    .line 503
    return v6
.end method

.method public shareLocalImage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 573
    iget-object v0, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->mLoadingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 574
    new-instance v0, Lcom/tudou/android/wxapi/WXEntryActivity$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/tudou/android/wxapi/WXEntryActivity$4;-><init>(Lcom/tudou/android/wxapi/WXEntryActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tudou/android/wxapi/WXEntryActivity$4;->start()V

    .line 622
    return v1
.end method

.method public shareShortVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "videoUrl"    # Ljava/lang/String;
    .param p4, "imgUrl"    # Ljava/lang/String;
    .param p5, "shareType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 639
    iget-object v0, p0, Lcom/tudou/android/wxapi/WXEntryActivity;->mLoadingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 640
    new-instance v0, Lcom/tudou/android/wxapi/WXEntryActivity$5;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tudou/android/wxapi/WXEntryActivity$5;-><init>(Lcom/tudou/android/wxapi/WXEntryActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tudou/android/wxapi/WXEntryActivity$5;->start()V

    .line 689
    return v7
.end method
