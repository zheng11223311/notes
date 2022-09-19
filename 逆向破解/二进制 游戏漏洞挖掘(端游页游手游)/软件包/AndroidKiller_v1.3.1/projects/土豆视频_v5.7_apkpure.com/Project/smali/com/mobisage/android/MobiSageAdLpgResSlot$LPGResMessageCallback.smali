.class Lcom/mobisage/android/MobiSageAdLpgResSlot$LPGResMessageCallback;
.super Ljava/lang/Object;
.source "MobiSageAdLpgResSlot.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdLpgResSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LPGResMessageCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdLpgResSlot;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageAdLpgResSlot;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot$LPGResMessageCallback;->this$0:Lcom/mobisage/android/MobiSageAdLpgResSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageAdLpgResSlot;Lcom/mobisage/android/MobiSageAdLpgResSlot$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageAdLpgResSlot;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageAdLpgResSlot$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdLpgResSlot$LPGResMessageCallback;-><init>(Lcom/mobisage/android/MobiSageAdLpgResSlot;)V

    return-void
.end method


# virtual methods
.method public onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageMessage;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdLpgResSlot$LPGResMessageCallback;->this$0:Lcom/mobisage/android/MobiSageAdLpgResSlot;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageAdLpgResSlot;->handler:Landroid/os/Handler;

    const/16 v2, 0x3f6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 83
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 85
    return-void
.end method
