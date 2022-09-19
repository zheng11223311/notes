.class Lcom/youku/local/Scanner$GetMediaItemsRunnable$3;
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

.field final synthetic val$itemList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/youku/local/Scanner$GetMediaItemsRunnable;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$3;->this$1:Lcom/youku/local/Scanner$GetMediaItemsRunnable;

    iput-object p2, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$3;->val$itemList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$3;->this$1:Lcom/youku/local/Scanner$GetMediaItemsRunnable;

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    invoke-static {v0}, Lcom/youku/local/Scanner;->access$200(Lcom/youku/local/Scanner;)Lcom/youku/local/IScanListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$3;->val$itemList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/youku/local/IScanListener;->onScanStop(Ljava/util/List;)V

    .line 242
    return-void
.end method
