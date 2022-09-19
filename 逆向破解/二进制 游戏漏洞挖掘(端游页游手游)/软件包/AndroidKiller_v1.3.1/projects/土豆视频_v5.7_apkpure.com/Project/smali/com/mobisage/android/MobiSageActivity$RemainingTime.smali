.class Lcom/mobisage/android/MobiSageActivity$RemainingTime;
.super Ljava/util/TimerTask;
.source "MobiSageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemainingTime"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageActivity;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageActivity;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/mobisage/android/MobiSageActivity$RemainingTime;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageActivity;Lcom/mobisage/android/MobiSageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageActivity;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageActivity$1;

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageActivity$RemainingTime;-><init>(Lcom/mobisage/android/MobiSageActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$RemainingTime;->this$0:Lcom/mobisage/android/MobiSageActivity;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity$RemainingTime;->this$0:Lcom/mobisage/android/MobiSageActivity;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageActivity;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    return-void
.end method
