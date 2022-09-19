.class Lcom/mobisage/android/MobiSageAdSplash$3;
.super Ljava/lang/Object;
.source "MobiSageAdSplash.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageAdSplash;->initTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdSplash;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageAdSplash;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdSplash$3;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash$3;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageAdSplash;->access$300(Lcom/mobisage/android/MobiSageAdSplash;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash$3;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdSplash;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash$3;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdSplash;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdSplash$3;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-interface {v0, v1}, Lcom/mobisage/android/IMobiSageAdViewListener;->onMobiSageAdViewError(Lcom/mobisage/android/MobiSageAdView;)V

    .line 310
    :cond_0
    return-void
.end method
