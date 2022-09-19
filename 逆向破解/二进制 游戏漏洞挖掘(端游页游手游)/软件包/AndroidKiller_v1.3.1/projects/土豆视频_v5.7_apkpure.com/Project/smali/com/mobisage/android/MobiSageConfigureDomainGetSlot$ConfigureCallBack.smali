.class Lcom/mobisage/android/MobiSageConfigureDomainGetSlot$ConfigureCallBack;
.super Ljava/lang/Object;
.source "MobiSageConfigureDomainGetSlot.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mobisage/android/MobiSageConfigureDomainGetSlot$ConfigureCallBack;->this$0:Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;Lcom/mobisage/android/MobiSageConfigureDomainGetSlot$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageConfigureDomainGetSlot$1;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageConfigureDomainGetSlot$ConfigureCallBack;-><init>(Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;)V

    return-void
.end method


# virtual methods
.method public onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageMessage;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/mobisage/android/MobiSageConfigureDomainGetSlot$ConfigureCallBack;->this$0:Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureDomainGetSlot$ConfigureCallBack;->this$0:Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;

    iget v2, v2, Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;->messageCode:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 91
    return-void
.end method
