.class Lcom/youku/gamecenter/download/DownloadManager$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/download/DownloadManager;->toastStartDownloadMessage(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadManager;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadManager$2;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager$2;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$1502(Lcom/youku/gamecenter/download/DownloadManager;Z)Z

    .line 697
    return-void
.end method
