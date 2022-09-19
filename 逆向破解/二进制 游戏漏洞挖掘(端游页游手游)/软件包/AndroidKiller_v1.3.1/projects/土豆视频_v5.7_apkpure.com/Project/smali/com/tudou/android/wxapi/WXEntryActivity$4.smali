.class Lcom/tudou/android/wxapi/WXEntryActivity$4;
.super Ljava/lang/Thread;
.source "WXEntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/wxapi/WXEntryActivity;->shareLocalImage(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

.field final synthetic val$imagePath:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/android/wxapi/WXEntryActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/tudou/android/wxapi/WXEntryActivity$4;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    iput-object p2, p0, Lcom/tudou/android/wxapi/WXEntryActivity$4;->val$imagePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/android/wxapi/WXEntryActivity$4;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 579
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 581
    .local v2, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;-><init>()V

    .line 583
    .local v1, "imageObject":Lcom/tencent/mm/sdk/modelmsg/WXImageObject;
    iget-object v5, p0, Lcom/tudou/android/wxapi/WXEntryActivity$4;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->setImagePath(Ljava/lang/String;)V

    .line 585
    iput-object v1, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 586
    const-string v5, "WX_IMG"

    iget-object v6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$4;->val$type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 587
    iget-object v5, p0, Lcom/tudou/android/wxapi/WXEntryActivity$4;->val$imagePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 588
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 589
    :cond_0
    const-string/jumbo v5, "\u56fe\u7247\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u5206\u4eab"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 618
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 592
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {v0}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$100(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 593
    if-eqz v0, :cond_3

    .line 594
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 595
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 602
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 603
    .local v3, "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    iget-object v5, p0, Lcom/tudou/android/wxapi/WXEntryActivity$4;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    const-string v6, "img"

    invoke-static {v5, v6}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$200(Lcom/tudou/android/wxapi/WXEntryActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 604
    iput-object v2, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 605
    const-string v5, "WX_IMG"

    iget-object v6, p0, Lcom/tudou/android/wxapi/WXEntryActivity$4;->val$type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 606
    iput v7, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 611
    :goto_1
    iget-object v5, p0, Lcom/tudou/android/wxapi/WXEntryActivity$4;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    invoke-static {v5}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$300(Lcom/tudou/android/wxapi/WXEntryActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 613
    invoke-static {}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$400()Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v4

    .line 614
    .local v4, "result":Z
    if-nez v4, :cond_1

    .line 615
    const-string/jumbo v5, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 608
    .end local v4    # "result":Z
    :cond_4
    const/4 v5, 0x1

    iput v5, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_1
.end method
