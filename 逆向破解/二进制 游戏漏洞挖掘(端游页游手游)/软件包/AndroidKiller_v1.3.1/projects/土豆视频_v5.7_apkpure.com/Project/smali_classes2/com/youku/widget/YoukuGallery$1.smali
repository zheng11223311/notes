.class Lcom/youku/widget/YoukuGallery$1;
.super Ljava/util/TimerTask;
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
    .line 33
    iput-object p1, p0, Lcom/youku/widget/YoukuGallery$1;->this$0:Lcom/youku/widget/YoukuGallery;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 39
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 40
    iget-object v1, p0, Lcom/youku/widget/YoukuGallery$1;->this$0:Lcom/youku/widget/YoukuGallery;

    iget-object v1, v1, Lcom/youku/widget/YoukuGallery;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    return-void
.end method
