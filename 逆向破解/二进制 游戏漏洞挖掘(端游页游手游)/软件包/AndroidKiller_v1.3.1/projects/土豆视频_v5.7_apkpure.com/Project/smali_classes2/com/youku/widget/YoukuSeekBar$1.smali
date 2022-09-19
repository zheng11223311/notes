.class Lcom/youku/widget/YoukuSeekBar$1;
.super Ljava/lang/Object;
.source "YoukuSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 47
    iput-object p1, p0, Lcom/youku/widget/YoukuSeekBar$1;->this$0:Lcom/youku/widget/YoukuSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-object v0, p0, Lcom/youku/widget/YoukuSeekBar$1;->this$0:Lcom/youku/widget/YoukuSeekBar;

    iget-boolean v0, v0, Lcom/youku/widget/YoukuSeekBar;->run:Z

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/YoukuSeekBar$1;->this$0:Lcom/youku/widget/YoukuSeekBar;

    iget-object v1, p0, Lcom/youku/widget/YoukuSeekBar$1;->this$0:Lcom/youku/widget/YoukuSeekBar;

    iget v1, v1, Lcom/youku/widget/YoukuSeekBar;->seekPos:I

    invoke-virtual {v0, v1}, Lcom/youku/widget/YoukuSeekBar;->setProgress(I)V

    .line 55
    iget-object v0, p0, Lcom/youku/widget/YoukuSeekBar$1;->this$0:Lcom/youku/widget/YoukuSeekBar;

    iget v0, v0, Lcom/youku/widget/YoukuSeekBar;->seekPos:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/youku/widget/YoukuSeekBar$1;->this$0:Lcom/youku/widget/YoukuSeekBar;

    iget v1, v0, Lcom/youku/widget/YoukuSeekBar;->seekPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/youku/widget/YoukuSeekBar;->seekPos:I

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/youku/widget/YoukuSeekBar$1;->this$0:Lcom/youku/widget/YoukuSeekBar;

    invoke-static {v0}, Lcom/youku/widget/YoukuSeekBar;->access$000(Lcom/youku/widget/YoukuSeekBar;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/YoukuSeekBar$1;->this$0:Lcom/youku/widget/YoukuSeekBar;

    iput v4, v0, Lcom/youku/widget/YoukuSeekBar;->seekPos:I

    goto :goto_1
.end method
