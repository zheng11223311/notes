.class Lcom/youku/laifeng/sdk/util/NetworkImageView$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/util/NetworkImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/util/NetworkImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$1;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaderCanncel()V
    .locals 2

    .prologue
    .line 441
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$1;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$000(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 443
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 444
    invoke-static {}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$100()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 445
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$1;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$200(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 447
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onLoaderComplition(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 427
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$1;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$300(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$1;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$400(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Z

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 437
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 427
    goto :goto_0

    .line 430
    :cond_2
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$1;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v1, p1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$502(Lcom/youku/laifeng/sdk/util/NetworkImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 431
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$1;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$000(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 433
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 434
    invoke-static {}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$100()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 435
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$1;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$200(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public onLoaderError(Ljava/lang/String;)V
    .locals 2
    .param p1, "mseeage"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$1;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$000(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 419
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 420
    invoke-static {}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$100()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 421
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$1;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$200(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 423
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
