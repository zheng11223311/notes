.class Lcom/youku/gamecenter/widgets/YoukuGallery$2;
.super Landroid/os/Handler;
.source "YoukuGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/widgets/YoukuGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/YoukuGallery;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/widgets/YoukuGallery;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/YoukuGallery$2;->this$0:Lcom/youku/gamecenter/widgets/YoukuGallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGallery$2;->this$0:Lcom/youku/gamecenter/widgets/YoukuGallery;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/YoukuGallery;->scrollToRight()V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
