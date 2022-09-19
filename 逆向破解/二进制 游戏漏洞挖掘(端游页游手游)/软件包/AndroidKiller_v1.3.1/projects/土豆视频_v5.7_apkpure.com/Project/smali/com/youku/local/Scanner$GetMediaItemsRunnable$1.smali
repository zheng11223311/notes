.class Lcom/youku/local/Scanner$GetMediaItemsRunnable$1;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/local/Scanner$GetMediaItemsRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/local/Scanner$GetMediaItemsRunnable;


# direct methods
.method constructor <init>(Lcom/youku/local/Scanner$GetMediaItemsRunnable;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$1;->this$1:Lcom/youku/local/Scanner$GetMediaItemsRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$1;->this$1:Lcom/youku/local/Scanner$GetMediaItemsRunnable;

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    invoke-static {v0}, Lcom/youku/local/Scanner;->access$200(Lcom/youku/local/Scanner;)Lcom/youku/local/IScanListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$1;->this$1:Lcom/youku/local/Scanner$GetMediaItemsRunnable;

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    invoke-static {v0}, Lcom/youku/local/Scanner;->access$200(Lcom/youku/local/Scanner;)Lcom/youku/local/IScanListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/local/IScanListener;->onScanStart()V

    .line 105
    :cond_0
    return-void
.end method
