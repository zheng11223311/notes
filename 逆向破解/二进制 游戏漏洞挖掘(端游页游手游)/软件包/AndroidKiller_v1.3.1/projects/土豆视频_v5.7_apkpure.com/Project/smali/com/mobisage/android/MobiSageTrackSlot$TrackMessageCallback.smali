.class Lcom/mobisage/android/MobiSageTrackSlot$TrackMessageCallback;
.super Ljava/lang/Object;
.source "MobiSageTrackSlot.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageTrackSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackMessageCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageTrackSlot;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageTrackSlot;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mobisage/android/MobiSageTrackSlot$TrackMessageCallback;->this$0:Lcom/mobisage/android/MobiSageTrackSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageTrackSlot;Lcom/mobisage/android/MobiSageTrackSlot$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageTrackSlot;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageTrackSlot$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageTrackSlot$TrackMessageCallback;-><init>(Lcom/mobisage/android/MobiSageTrackSlot;)V

    return-void
.end method


# virtual methods
.method public onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageMessage;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/mobisage/android/MobiSageTrackSlot$TrackMessageCallback;->this$0:Lcom/mobisage/android/MobiSageTrackSlot;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageTrackSlot;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackSlot$TrackMessageCallback;->this$0:Lcom/mobisage/android/MobiSageTrackSlot;

    invoke-static {v2}, Lcom/mobisage/android/MobiSageTrackSlot;->access$100(Lcom/mobisage/android/MobiSageTrackSlot;)Lcom/mobisage/android/MobiSageTrackSlot;

    move-result-object v2

    iget v2, v2, Lcom/mobisage/android/MobiSageTrackSlot;->messageCode:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 75
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 77
    return-void
.end method
