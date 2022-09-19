.class Lcom/mobisage/android/MobiSageAdView$ADViewLPGActionCallback;
.super Ljava/lang/Object;
.source "MobiSageAdView.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADViewLPGActionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdView;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdView$ADViewLPGActionCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAdView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageAdView;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageAdView$1;

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdView$ADViewLPGActionCallback;-><init>(Lcom/mobisage/android/MobiSageAdView;)V

    return-void
.end method


# virtual methods
.method public onMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V
    .locals 3
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 734
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView$ADViewLPGActionCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageAdView;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 736
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 737
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 738
    return-void
.end method

.method public onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 3
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 726
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView$ADViewLPGActionCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageAdView;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 728
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 729
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 730
    return-void
.end method
