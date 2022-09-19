.class Lcom/mobisage/android/MobiSageAdReqSlot$ReqADMessageCallback;
.super Ljava/lang/Object;
.source "MobiSageAdReqSlot.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdReqSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReqADMessageCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdReqSlot;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageAdReqSlot;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdReqSlot$ReqADMessageCallback;->this$0:Lcom/mobisage/android/MobiSageAdReqSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageAdReqSlot;Lcom/mobisage/android/MobiSageAdReqSlot$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageAdReqSlot;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageAdReqSlot$1;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdReqSlot$ReqADMessageCallback;-><init>(Lcom/mobisage/android/MobiSageAdReqSlot;)V

    return-void
.end method


# virtual methods
.method public onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageMessage;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdReqSlot$ReqADMessageCallback;->this$0:Lcom/mobisage/android/MobiSageAdReqSlot;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageAdReqSlot;->handler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 195
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 196
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 197
    return-void
.end method
