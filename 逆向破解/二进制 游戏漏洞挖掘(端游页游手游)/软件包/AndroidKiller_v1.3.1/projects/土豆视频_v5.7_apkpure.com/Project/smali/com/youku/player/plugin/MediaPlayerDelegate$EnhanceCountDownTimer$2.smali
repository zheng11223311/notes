.class Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;
.super Landroid/os/CountDownTimer;
.source "MediaPlayerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

.field final synthetic val$this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;JJLcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 1899
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    iput-object p6, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->val$this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 1921
    const-string v0, "nightMode2"

    const-string/jumbo v1, "timer finish . setEnhanceMode(true, 1.02f)"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    const/4 v1, 0x1

    const v2, 0x3f828f5c    # 1.02f

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/BaseMediaPlayer;->setEnhanceMode(ZF)V

    .line 1924
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 9
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v2, 0x1

    const v7, 0x3f828f5c    # 1.02f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1902
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->isFinish:Z

    if-eqz v1, :cond_1

    .line 1903
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-static {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->access$300(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)Landroid/os/CountDownTimer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-static {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->access$400(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1904
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-static {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->access$400(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1916
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    long-to-float v1, p1

    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-static {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->access$500(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)J

    move-result-wide v4

    long-to-float v3, v4

    div-float v0, v1, v3

    .line 1909
    .local v0, "percent":F
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    sub-float v3, v6, v0

    mul-float/2addr v3, v7

    invoke-static {v1, v3}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->access$602(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;F)F

    .line 1910
    const-string v1, "nightMode2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timer millisUntilFinished : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mWidthPercent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-static {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->access$600(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , percent :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-float v4, v6, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-static {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->access$600(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)F

    move-result v1

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, v3, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->isFinish:Z

    .line 1913
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v1, :cond_0

    .line 1914
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;->this$1:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-static {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->access$600(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)F

    move-result v3

    const/4 v4, 0x0

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/youku/player/BaseMediaPlayer;->setEnhanceMode(ZF)V

    goto :goto_0

    .line 1912
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
