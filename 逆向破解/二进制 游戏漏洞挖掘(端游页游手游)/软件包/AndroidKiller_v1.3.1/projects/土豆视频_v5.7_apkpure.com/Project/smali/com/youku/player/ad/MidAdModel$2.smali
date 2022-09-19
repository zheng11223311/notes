.class Lcom/youku/player/ad/MidAdModel$2;
.super Ljava/lang/Object;
.source "MidAdModel.java"

# interfaces
.implements Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/MidAdModel;->setMidADUrl(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/MidAdModel;

.field final synthetic val$index:I

.field final synthetic val$woVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

.field final synthetic val$woVideoHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/MidAdModel;Lcom/youku/player/goplay/VideoAdvInfo;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/youku/player/ad/MidAdModel$2;->this$0:Lcom/youku/player/ad/MidAdModel;

    iput-object p2, p0, Lcom/youku/player/ad/MidAdModel$2;->val$woVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iput p3, p0, Lcom/youku/player/ad/MidAdModel$2;->val$index:I

    iput-object p4, p0, Lcom/youku/player/ad/MidAdModel$2;->val$woVideoHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "resultCode"    # Ljava/lang/String;
    .param p3, "resultMessage"    # Ljava/lang/String;
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "intefaceType"    # I

    .prologue
    .line 370
    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    .line 371
    .local v0, "adurl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 372
    iget-object v3, p0, Lcom/youku/player/ad/MidAdModel$2;->val$woVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v3, v3, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    iget v4, p0, Lcom/youku/player/ad/MidAdModel$2;->val$index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/player/goplay/AdvInfo;

    iput-object v0, v3, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    .line 373
    iget-object v3, p0, Lcom/youku/player/ad/MidAdModel$2;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v3}, Lcom/youku/player/ad/MidAdModel;->access$000(Lcom/youku/player/ad/MidAdModel;)I

    move-result v3

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel$2;->val$woVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    .line 374
    iget-object v3, p0, Lcom/youku/player/ad/MidAdModel$2;->val$woVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/player/ad/MidAdModel$2;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v3}, Lcom/youku/player/ad/MidAdModel;->access$300(Lcom/youku/player/ad/MidAdModel;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/player/ad/MidAdModel$2;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v3}, Lcom/youku/player/ad/MidAdModel;->access$300(Lcom/youku/player/ad/MidAdModel;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/youku/player/ad/MidAdModel$2;->this$0:Lcom/youku/player/ad/MidAdModel;

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel$2;->val$woVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-static {v3, v4}, Lcom/youku/player/ad/MidAdModel;->access$400(Lcom/youku/player/ad/MidAdModel;Lcom/youku/player/goplay/VideoAdvInfo;)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 378
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 379
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 380
    iget-object v3, p0, Lcom/youku/player/ad/MidAdModel$2;->val$woVideoHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/youku/player/ad/MidAdModel$2;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v3}, Lcom/youku/player/ad/MidAdModel;->access$008(Lcom/youku/player/ad/MidAdModel;)I

    .line 385
    :cond_1
    return-void
.end method
