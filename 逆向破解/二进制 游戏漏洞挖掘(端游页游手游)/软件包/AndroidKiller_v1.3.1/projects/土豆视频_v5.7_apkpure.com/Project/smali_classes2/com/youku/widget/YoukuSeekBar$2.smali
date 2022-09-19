.class Lcom/youku/widget/YoukuSeekBar$2;
.super Landroid/os/Handler;
.source "YoukuSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/YoukuSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/YoukuSeekBar;


# direct methods
.method constructor <init>(Lcom/youku/widget/YoukuSeekBar;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/youku/widget/YoukuSeekBar$2;->this$0:Lcom/youku/widget/YoukuSeekBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/youku/widget/YoukuSeekBar$2;->this$0:Lcom/youku/widget/YoukuSeekBar;

    invoke-static {v0}, Lcom/youku/widget/YoukuSeekBar;->access$000(Lcom/youku/widget/YoukuSeekBar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/widget/YoukuSeekBar$2;->this$0:Lcom/youku/widget/YoukuSeekBar;

    iget-object v1, v1, Lcom/youku/widget/YoukuSeekBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method
