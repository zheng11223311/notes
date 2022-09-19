.class Lcom/youku/gamecenter/download/DownloadingService$4;
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

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService$4;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iput-object p2, p0, Lcom/youku/gamecenter/download/DownloadingService$4;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$4;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadingService$4;->val$text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1341
    return-void
.end method
