.class Lcom/youku/laifeng/sdk/util/NetworkImageView$2;
.super Landroid/os/Handler;
.source "NetworkImageView.java"


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
.method constructor <init>(Lcom/youku/laifeng/sdk/util/NetworkImageView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/util/NetworkImageView;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 456
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 490
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v0, v3}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$1002(Lcom/youku/laifeng/sdk/util/NetworkImageView;I)I

    .line 491
    return-void

    .line 458
    :pswitch_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$500(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$600(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-virtual {v0, v3}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setAlpha(I)V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$500(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 463
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->invalidate()V

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$700(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$700(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$300(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;->onLoaderComplition(Lcom/youku/laifeng/sdk/util/NetworkImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :pswitch_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$800(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 471
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$800(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$700(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$700(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-interface {v0, v1}, Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;->onLoaderError(Lcom/youku/laifeng/sdk/util/NetworkImageView;)V

    goto :goto_0

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$900(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$900(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 482
    :pswitch_2
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$900(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 483
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$900(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    :cond_5
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$700(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->access$700(Lcom/youku/laifeng/sdk/util/NetworkImageView;)Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageView$2;->this$0:Lcom/youku/laifeng/sdk/util/NetworkImageView;

    invoke-interface {v0, v1}, Lcom/youku/laifeng/sdk/util/OnNetworkImageListener;->onLoaderCanncel(Lcom/youku/laifeng/sdk/util/NetworkImageView;)V

    goto/16 :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
