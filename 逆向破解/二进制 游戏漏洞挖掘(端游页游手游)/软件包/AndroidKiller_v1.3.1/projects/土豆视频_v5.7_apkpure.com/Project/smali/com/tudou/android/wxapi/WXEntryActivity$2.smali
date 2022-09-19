.class Lcom/tudou/android/wxapi/WXEntryActivity$2;
.super Ljava/lang/Thread;
.source "WXEntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/wxapi/WXEntryActivity;->share2Session(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$picUrl:Ljava/lang/String;

.field final synthetic val$shareType:I

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$videoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/android/wxapi/WXEntryActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    iput p2, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->val$shareType:I

    iput-object p3, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->val$videoUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->val$content:Ljava/lang/String;

    iput-object p6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->val$picUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    .line 359
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 360
    .local v1, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iget v6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->val$shareType:I

    if-ne v6, v9, :cond_2

    .line 361
    new-instance v4, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;

    invoke-direct {v4}, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;-><init>()V

    .line 362
    .local v4, "videoObject":Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;
    iget-object v6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->val$videoUrl:Ljava/lang/String;

    iput-object v6, v4, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 363
    iput-object v4, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 369
    .end local v4    # "videoObject":Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;
    :goto_0
    iget-object v6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->val$title:Ljava/lang/String;

    iput-object v6, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 370
    iget-object v6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->val$content:Ljava/lang/String;

    iput-object v6, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 371
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->val$picUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 375
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 376
    :cond_0
    const-string/jumbo v6, "\u56fe\u7247\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u5206\u4eab"

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 411
    :cond_1
    :goto_1
    return-void

    .line 365
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v5, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v5}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    .line 366
    .local v5, "webPageObject":Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;
    iget-object v6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->val$videoUrl:Ljava/lang/String;

    iput-object v6, v5, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 367
    iput-object v5, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    goto :goto_0

    .line 393
    .end local v5    # "webPageObject":Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {v0}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$100(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    iput-object v6, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 395
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 396
    .local v2, "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    iget v6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->val$shareType:I

    if-ne v6, v9, :cond_4

    .line 397
    iget-object v6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    const-string/jumbo v7, "video"

    invoke-static {v6, v7}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$200(Lcom/tudou/android/wxapi/WXEntryActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 402
    :goto_2
    iput-object v1, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 403
    iput v8, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 404
    iget-object v6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    invoke-static {v6}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$300(Lcom/tudou/android/wxapi/WXEntryActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 406
    invoke-static {}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$400()Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v3

    .line 407
    .local v3, "result":Z
    if-nez v3, :cond_1

    .line 408
    const-string/jumbo v6, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 399
    .end local v3    # "result":Z
    :cond_4
    iget-object v6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$2;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    const-string v7, "img"

    invoke-static {v6, v7}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$200(Lcom/tudou/android/wxapi/WXEntryActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    goto :goto_2
.end method
