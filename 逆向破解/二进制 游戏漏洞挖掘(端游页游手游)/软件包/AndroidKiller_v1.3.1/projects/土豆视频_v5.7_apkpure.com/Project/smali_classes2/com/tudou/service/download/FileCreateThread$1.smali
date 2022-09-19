.class Lcom/tudou/service/download/FileCreateThread$1;
.super Landroid/os/Handler;
.source "FileCreateThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/download/FileCreateThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/download/FileCreateThread;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/FileCreateThread;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/tudou/service/download/FileCreateThread$1;->this$0:Lcom/tudou/service/download/FileCreateThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 197
    return-void
.end method
