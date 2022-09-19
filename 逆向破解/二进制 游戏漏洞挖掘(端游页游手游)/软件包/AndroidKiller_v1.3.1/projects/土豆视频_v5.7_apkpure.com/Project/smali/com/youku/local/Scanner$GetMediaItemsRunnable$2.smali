.class Lcom/youku/local/Scanner$GetMediaItemsRunnable$2;
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

.field final synthetic val$mediaToScan:Ljava/util/ArrayList;

.field final synthetic val$notifyCount:I


# direct methods
.method constructor <init>(Lcom/youku/local/Scanner$GetMediaItemsRunnable;ILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$2;->this$1:Lcom/youku/local/Scanner$GetMediaItemsRunnable;

    iput p2, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$2;->val$notifyCount:I

    iput-object p3, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$2;->val$mediaToScan:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$2;->this$1:Lcom/youku/local/Scanner$GetMediaItemsRunnable;

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    invoke-static {v0}, Lcom/youku/local/Scanner;->access$200(Lcom/youku/local/Scanner;)Lcom/youku/local/IScanListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$2;->this$1:Lcom/youku/local/Scanner$GetMediaItemsRunnable;

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    invoke-static {v0}, Lcom/youku/local/Scanner;->access$200(Lcom/youku/local/Scanner;)Lcom/youku/local/IScanListener;

    move-result-object v0

    iget v1, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$2;->val$notifyCount:I

    iget-object v2, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable$2;->val$mediaToScan:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/youku/local/IScanListener;->onItemAdded(II)V

    .line 205
    :cond_0
    return-void
.end method
