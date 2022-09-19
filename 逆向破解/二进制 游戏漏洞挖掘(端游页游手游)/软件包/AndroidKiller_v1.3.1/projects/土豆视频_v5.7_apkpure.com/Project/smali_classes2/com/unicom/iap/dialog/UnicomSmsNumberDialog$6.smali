.class Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;
.super Ljava/util/TimerTask;
.source "UnicomSmsNumberDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->startTimerCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;


# direct methods
.method constructor <init>(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    .line 333
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;)Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    iget-object v0, v0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6$1;

    invoke-direct {v1, p0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6$1;-><init>(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    return-void
.end method
