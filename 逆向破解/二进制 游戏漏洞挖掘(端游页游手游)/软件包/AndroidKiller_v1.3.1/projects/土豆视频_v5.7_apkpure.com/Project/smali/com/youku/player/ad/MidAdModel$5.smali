.class Lcom/youku/player/ad/MidAdModel$5;
.super Ljava/lang/Object;
.source "MidAdModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/MidAdModel;->timerStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/MidAdModel;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/MidAdModel;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lcom/youku/player/ad/MidAdModel$5;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 776
    iget-object v6, p0, Lcom/youku/player/ad/MidAdModel$5;->this$0:Lcom/youku/player/ad/MidAdModel;

    new-instance v0, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$5;->this$0:Lcom/youku/player/ad/MidAdModel;

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel$5;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v2}, Lcom/youku/player/ad/MidAdModel;->access$1200(Lcom/youku/player/ad/MidAdModel;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;-><init>(Lcom/youku/player/ad/MidAdModel;JJ)V

    invoke-static {v6, v0}, Lcom/youku/player/ad/MidAdModel;->access$1102(Lcom/youku/player/ad/MidAdModel;Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;)Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    .line 778
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel$5;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v0}, Lcom/youku/player/ad/MidAdModel;->access$1100(Lcom/youku/player/ad/MidAdModel;)Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 779
    return-void
.end method
