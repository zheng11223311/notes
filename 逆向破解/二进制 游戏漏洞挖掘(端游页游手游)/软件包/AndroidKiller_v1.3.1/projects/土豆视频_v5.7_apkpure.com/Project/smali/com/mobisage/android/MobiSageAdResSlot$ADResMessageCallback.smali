.class Lcom/mobisage/android/MobiSageAdResSlot$ADResMessageCallback;
.super Ljava/lang/Object;
.source "MobiSageAdResSlot.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdResSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADResMessageCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdResSlot;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageAdResSlot;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdResSlot$ADResMessageCallback;->this$0:Lcom/mobisage/android/MobiSageAdResSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageAdResSlot;Lcom/mobisage/android/MobiSageAdResSlot$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageAdResSlot;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageAdResSlot$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdResSlot$ADResMessageCallback;-><init>(Lcom/mobisage/android/MobiSageAdResSlot;)V

    return-void
.end method


# virtual methods
.method public onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageMessage;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdResSlot$ADResMessageCallback;->this$0:Lcom/mobisage/android/MobiSageAdResSlot;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageAdResSlot;->handler:Landroid/os/Handler;

    const/16 v2, 0x3f5

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
