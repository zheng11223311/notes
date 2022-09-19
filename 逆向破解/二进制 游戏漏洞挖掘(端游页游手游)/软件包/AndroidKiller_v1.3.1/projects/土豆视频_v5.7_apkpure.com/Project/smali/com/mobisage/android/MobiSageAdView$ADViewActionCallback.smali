.class Lcom/mobisage/android/MobiSageAdView$ADViewActionCallback;
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
    name = "ADViewActionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdView;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdView$ADViewActionCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAdView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageAdView;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageAdView$1;

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdView$ADViewActionCallback;-><init>(Lcom/mobisage/android/MobiSageAdView;)V

    return-void
.end method


# virtual methods
.method public onMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V
    .locals 3
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 715
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView$ADViewActionCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageAdView;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 717
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 718
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 719
    return-void
.end method

.method public onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 3
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 707
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView$ADViewActionCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageAdView;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 709
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 710
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 711
    return-void
.end method
