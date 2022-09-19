.class Lcom/mobisage/android/MobiSageActivity$IOnErrorListener;
.super Ljava/lang/Object;
.source "MobiSageActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IOnErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageActivity;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageActivity;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/mobisage/android/MobiSageActivity$IOnErrorListener;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v1, 0x1

    .line 436
    invoke-static {v1}, Lcom/mobisage/android/MobiSageActivity;->access$102(Z)Z

    .line 437
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$IOnErrorListener;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-static {v0, v1}, Lcom/mobisage/android/MobiSageActivity;->access$202(Lcom/mobisage/android/MobiSageActivity;Z)Z

    .line 439
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$IOnErrorListener;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageActivity;->access$300(Lcom/mobisage/android/MobiSageActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$IOnErrorListener;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageActivity;->access$300(Lcom/mobisage/android/MobiSageActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 441
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
