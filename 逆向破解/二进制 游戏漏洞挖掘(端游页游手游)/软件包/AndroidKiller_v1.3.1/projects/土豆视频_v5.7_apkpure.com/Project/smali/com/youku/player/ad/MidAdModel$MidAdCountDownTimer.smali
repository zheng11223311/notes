.class Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "MidAdModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/ad/MidAdModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MidAdCountDownTimer"
.end annotation


# instance fields
.field public isPause:Z

.field final synthetic this$0:Lcom/youku/player/ad/MidAdModel;


# direct methods
.method public constructor <init>(Lcom/youku/player/ad/MidAdModel;JJ)V
    .locals 2
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    const/4 v0, 0x0

    .line 788
    iput-object p1, p0, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->this$0:Lcom/youku/player/ad/MidAdModel;

    .line 789
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 786
    iput-boolean v0, p0, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->isPause:Z

    .line 790
    iput-boolean v0, p0, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->isPause:Z

    .line 791
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->this$0:Lcom/youku/player/ad/MidAdModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/player/ad/MidAdModel;->access$1302(Lcom/youku/player/ad/MidAdModel;Z)Z

    .line 796
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->this$0:Lcom/youku/player/ad/MidAdModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/player/ad/MidAdModel;->access$1102(Lcom/youku/player/ad/MidAdModel;Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;)Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    .line 797
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 801
    iget-boolean v2, p0, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->isPause:Z

    if-eqz v2, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    long-to-float v2, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v1, v2, v3

    .line 805
    .local v1, "time":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 806
    .local v0, "count":I
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v2}, Lcom/youku/player/ad/MidAdModel;->access$1200(Lcom/youku/player/ad/MidAdModel;)I

    move-result v2

    if-eq v2, v0, :cond_0

    if-lez v0, :cond_0

    .line 807
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v2, v0}, Lcom/youku/player/ad/MidAdModel;->access$1202(Lcom/youku/player/ad/MidAdModel;I)I

    .line 808
    invoke-static {}, Lcom/youku/player/ad/MidAdModel;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u4e2d\u63d2\u5e7f\u544a\u5012\u8ba1\u65f6 \u5269\u4f59: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v4}, Lcom/youku/player/ad/MidAdModel;->access$1200(Lcom/youku/player/ad/MidAdModel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
