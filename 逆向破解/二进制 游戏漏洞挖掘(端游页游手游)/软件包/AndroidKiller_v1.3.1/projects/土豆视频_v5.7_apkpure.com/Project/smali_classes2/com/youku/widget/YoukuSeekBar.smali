.class public Lcom/youku/widget/YoukuSeekBar;
.super Landroid/widget/SeekBar;
.source "YoukuSeekBar.java"


# instance fields
.field mRunnable:Ljava/lang/Runnable;

.field run:Z

.field private seekHandler:Landroid/os/Handler;

.field seekPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 30
    iput-boolean v0, p0, Lcom/youku/widget/YoukuSeekBar;->run:Z

    .line 46
    iput v0, p0, Lcom/youku/widget/YoukuSeekBar;->seekPos:I

    .line 47
    new-instance v0, Lcom/youku/widget/YoukuSeekBar$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuSeekBar$1;-><init>(Lcom/youku/widget/YoukuSeekBar;)V

    iput-object v0, p0, Lcom/youku/widget/YoukuSeekBar;->mRunnable:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lcom/youku/widget/YoukuSeekBar$2;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuSeekBar$2;-><init>(Lcom/youku/widget/YoukuSeekBar;)V

    iput-object v0, p0, Lcom/youku/widget/YoukuSeekBar;->seekHandler:Landroid/os/Handler;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v0, p0, Lcom/youku/widget/YoukuSeekBar;->run:Z

    .line 46
    iput v0, p0, Lcom/youku/widget/YoukuSeekBar;->seekPos:I

    .line 47
    new-instance v0, Lcom/youku/widget/YoukuSeekBar$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuSeekBar$1;-><init>(Lcom/youku/widget/YoukuSeekBar;)V

    iput-object v0, p0, Lcom/youku/widget/YoukuSeekBar;->mRunnable:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lcom/youku/widget/YoukuSeekBar$2;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuSeekBar$2;-><init>(Lcom/youku/widget/YoukuSeekBar;)V

    iput-object v0, p0, Lcom/youku/widget/YoukuSeekBar;->seekHandler:Landroid/os/Handler;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020725

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/widget/YoukuSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020724

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/widget/YoukuSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/youku/widget/YoukuSeekBar;->setMax(I)V

    .line 26
    const/16 v0, -0xa

    invoke-virtual {p0, v0}, Lcom/youku/widget/YoukuSeekBar;->setThumbOffset(I)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/YoukuSeekBar;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/YoukuSeekBar;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/youku/widget/YoukuSeekBar;->seekHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/YoukuSeekBar;->run:Z

    .line 42
    iget-object v0, p0, Lcom/youku/widget/YoukuSeekBar;->seekHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 43
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/youku/widget/YoukuSeekBar;->setVisibility(I)V

    .line 44
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onVisibilityChanged(Landroid/view/View;I)V

    .line 73
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/YoukuSeekBar;->seekHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/YoukuSeekBar;->seekHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcom/youku/widget/YoukuSeekBar;->seekPos:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/YoukuSeekBar;->run:Z

    .line 36
    iget-object v0, p0, Lcom/youku/widget/YoukuSeekBar;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37
    invoke-virtual {p0, v1}, Lcom/youku/widget/YoukuSeekBar;->setVisibility(I)V

    .line 38
    return-void
.end method
