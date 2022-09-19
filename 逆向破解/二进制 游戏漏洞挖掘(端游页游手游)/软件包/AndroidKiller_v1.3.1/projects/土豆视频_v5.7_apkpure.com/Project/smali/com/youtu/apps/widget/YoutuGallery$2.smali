.class Lcom/youtu/apps/widget/YoutuGallery$2;
.super Landroid/os/Handler;
.source "YoutuGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youtu/apps/widget/YoutuGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youtu/apps/widget/YoutuGallery;


# direct methods
.method constructor <init>(Lcom/youtu/apps/widget/YoutuGallery;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/youtu/apps/widget/YoutuGallery$2;->this$0:Lcom/youtu/apps/widget/YoutuGallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuGallery$2;->this$0:Lcom/youtu/apps/widget/YoutuGallery;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuGallery;->scrollToRight()V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
