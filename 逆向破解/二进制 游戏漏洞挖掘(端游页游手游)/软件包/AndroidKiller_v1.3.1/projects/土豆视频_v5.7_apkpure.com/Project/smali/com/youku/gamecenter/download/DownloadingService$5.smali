.class Lcom/youku/gamecenter/download/DownloadingService$5;
.super Ljava/lang/Object;
.source "DownloadingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/download/DownloadingService;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadingService;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadingService;)V
    .locals 0

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService$5;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1345
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadingService;->access$3002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1346
    return-void
.end method
