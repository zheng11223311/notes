.class public Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;
.super Landroid/content/BroadcastReceiver;
.source "ParticleHelperAlertDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReceiveBroadCast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;


# direct methods
.method public constructor <init>(Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;->this$0:Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->BROADCAST_GIFTPARTICLE_MOTIONEVENT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    sget-object v2, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->BROADCAST_GIFTPARTICLE_GIFTPARTICLE_EVENT:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 71
    .local v1, "mv":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;->this$0:Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;

    invoke-virtual {v2, v1}, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 79
    .end local v1    # "mv":Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->BROADCAST_GIFTPARTICLE_BACKKEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;->this$0:Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;

    invoke-virtual {v2}, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
