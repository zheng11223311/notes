.class Lcom/youku/widget/YoukuGallery$2;
.super Landroid/os/Handler;
.source "YoukuGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/YoukuGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/YoukuGallery;


# direct methods
.method constructor <init>(Lcom/youku/widget/YoukuGallery;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youku/widget/YoukuGallery$2;->this$0:Lcom/youku/widget/YoukuGallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/youku/widget/YoukuGallery$2;->this$0:Lcom/youku/widget/YoukuGallery;

    invoke-static {v0}, Lcom/youku/widget/YoukuGallery;->access$000(Lcom/youku/widget/YoukuGallery;)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
