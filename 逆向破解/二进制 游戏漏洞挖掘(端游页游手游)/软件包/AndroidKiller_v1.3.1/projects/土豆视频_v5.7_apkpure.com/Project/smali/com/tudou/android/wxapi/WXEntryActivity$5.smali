.class Lcom/tudou/android/wxapi/WXEntryActivity$5;
.super Ljava/lang/Thread;
.source "WXEntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/wxapi/WXEntryActivity;->shareShortVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$imgUrl:Ljava/lang/String;

.field final synthetic val$shareType:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$videoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/android/wxapi/WXEntryActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/tudou/android/wxapi/WXEntryActivity$5;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    iput-object p2, p0, Lcom/tudou/android/wxapi/WXEntryActivity$5;->val$videoUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/android/wxapi/WXEntryActivity$5;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/android/wxapi/WXEntryActivity$5;->val$content:Ljava/lang/String;

    iput-object p5, p0, Lcom/tudou/android/wxapi/WXEntryActivity$5;->val$imgUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$5;->val$shareType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 645
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 647
    .local v1, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    new-instance v4, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;

    invoke-direct {v4}, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;-><init>()V

    .line 648
    .local v4, "videoObject":Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;
    iget-object v5, p0, Lcom/tudou/android/wxapi/WXEntryActivity$5;->val$videoUrl:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 649
    iput-object v4, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 651
    iget-object v5, p0, Lcom/tudou/android/wxapi/WXEntryActivity$5;->val$title:Ljava/lang/String;

    iput-object v5, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 652
    iget-object v5, p0, Lcom/tudou/android/wxapi/WXEntryActivity$5;->val$content:Ljava/lang/String;

    iput-object v5, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 654
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$5;->val$imgUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 656
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 657
    :cond_0
    const-string/jumbo v5, "\u51fa\u9519\u5566\uff0c\u8bf7\u91cd\u65b0\u5f55\u5236\u5206\u4eab "

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 685
    :cond_1
    :goto_0
    return-void

    .line 660
    :cond_2
    invoke-static {v0}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$100(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    iput-object v5, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 661
    if-eqz v0, :cond_4

    .line 662
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 663
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 665
    :cond_3
    const/4 v0, 0x0

    .line 669
    :cond_4
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 670
    .local v2, "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    iget-object v5, p0, Lcom/tudou/android/wxapi/WXEntryActivity$5;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    const-string/jumbo v6, "video"

    invoke-static {v5, v6}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$200(Lcom/tudou/android/wxapi/WXEntryActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 672
    iput-object v1, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 673
    const-string v5, "WX_SHORT"

    iget-object v6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$5;->val$shareType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 674
    iput v7, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 679
    :goto_1
    invoke-static {}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$400()Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v3

    .line 680
    .local v3, "result":Z
    iget-object v5, p0, Lcom/tudou/android/wxapi/WXEntryActivity$5;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    invoke-static {v5}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$300(Lcom/tudou/android/wxapi/WXEntryActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 681
    if-nez v3, :cond_1

    .line 682
    const-string/jumbo v5, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 676
    .end local v3    # "result":Z
    :cond_5
    const/4 v5, 0x1

    iput v5, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_1
.end method
