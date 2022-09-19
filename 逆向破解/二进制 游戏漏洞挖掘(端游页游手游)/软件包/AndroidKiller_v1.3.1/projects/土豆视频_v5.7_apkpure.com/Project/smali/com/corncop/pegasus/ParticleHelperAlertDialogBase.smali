.class public Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;
.super Landroid/app/AlertDialog;
.source "ParticleHelperAlertDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;
    }
.end annotation


# static fields
.field public static BROADCAST_GIFTPARTICLE_BACKKEY:Ljava/lang/String;

.field public static BROADCAST_GIFTPARTICLE_GIFTPARTICLE_EVENT:Ljava/lang/String;

.field public static BROADCAST_GIFTPARTICLE_MOTIONEVENT:Ljava/lang/String;


# instance fields
.field private mReceiveBroadCast:Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "youku.laifeng.broadcast.giftparticle.activity"

    sput-object v0, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->BROADCAST_GIFTPARTICLE_MOTIONEVENT:Ljava/lang/String;

    .line 18
    const-string v0, "mouseevent"

    sput-object v0, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->BROADCAST_GIFTPARTICLE_GIFTPARTICLE_EVENT:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "youku.laifeng.broadcast.giftparticle.backkey"

    sput-object v0, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->BROADCAST_GIFTPARTICLE_BACKKEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->mReceiveBroadCast:Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;

    .line 24
    invoke-direct {p0}, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->Init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->mReceiveBroadCast:Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;

    .line 29
    invoke-direct {p0}, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->Init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->mReceiveBroadCast:Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;

    .line 34
    invoke-direct {p0}, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->Init()V

    .line 35
    return-void
.end method

.method private Init()V
    .locals 4

    .prologue
    .line 52
    :try_start_0
    new-instance v2, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;

    invoke-direct {v2, p0}, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;-><init>(Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;)V

    iput-object v2, p0, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->mReceiveBroadCast:Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;

    .line 53
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v1, "filter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->BROADCAST_GIFTPARTICLE_MOTIONEVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    sget-object v2, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->BROADCAST_GIFTPARTICLE_BACKKEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->mReceiveBroadCast:Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/corncop/pegasus/ParticleHelperAlertDialogBase;->mReceiveBroadCast:Lcom/corncop/pegasus/ParticleHelperAlertDialogBase$ReceiveBroadCast;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
