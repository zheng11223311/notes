.class Lcom/youtu/apps/widget/YoutuGallery$1;
.super Ljava/util/TimerTask;
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
    .line 32
    iput-object p1, p0, Lcom/youtu/apps/widget/YoutuGallery$1;->this$0:Lcom/youtu/apps/widget/YoutuGallery;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 38
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 39
    iget-object v1, p0, Lcom/youtu/apps/widget/YoutuGallery$1;->this$0:Lcom/youtu/apps/widget/YoutuGallery;

    iget-object v1, v1, Lcom/youtu/apps/widget/YoutuGallery;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    return-void
.end method
