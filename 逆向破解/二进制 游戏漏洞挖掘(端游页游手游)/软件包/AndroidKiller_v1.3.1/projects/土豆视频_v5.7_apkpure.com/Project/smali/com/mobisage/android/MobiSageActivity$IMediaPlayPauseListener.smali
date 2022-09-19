.class Lcom/mobisage/android/MobiSageActivity$IMediaPlayPauseListener;
.super Ljava/lang/Object;
.source "MobiSageActivity.java"

# interfaces
.implements Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IMediaPlayPauseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageActivity;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageActivity;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/mobisage/android/MobiSageActivity$IMediaPlayPauseListener;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaPause()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$IMediaPlayPauseListener;->this$0:Lcom/mobisage/android/MobiSageActivity;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/mobisage/android/MobiSageActivity;->access$000(Lcom/mobisage/android/MobiSageActivity;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public onMediaPlay()V
    .locals 2

    .prologue
    .line 458
    invoke-static {}, Lcom/mobisage/android/MobiSageActivity;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mobisage/android/MobiSageActivity;->access$402(Z)Z

    .line 465
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$IMediaPlayPauseListener;->this$0:Lcom/mobisage/android/MobiSageActivity;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/mobisage/android/MobiSageActivity;->access$000(Lcom/mobisage/android/MobiSageActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
