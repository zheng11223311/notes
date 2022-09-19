.class Lcom/mobisage/android/MobiSageActivity$IOnCompletionListener;
.super Ljava/lang/Object;
.source "MobiSageActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IOnCompletionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageActivity;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageActivity;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/mobisage/android/MobiSageActivity$IOnCompletionListener;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$IOnCompletionListener;->this$0:Lcom/mobisage/android/MobiSageActivity;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/mobisage/android/MobiSageActivity;->access$000(Lcom/mobisage/android/MobiSageActivity;Ljava/lang/String;)V

    .line 426
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mobisage/android/MobiSageActivity;->access$102(Z)Z

    .line 427
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$IOnCompletionListener;->this$0:Lcom/mobisage/android/MobiSageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mobisage/android/MobiSageActivity;->access$202(Lcom/mobisage/android/MobiSageActivity;Z)Z

    .line 429
    return-void
.end method
