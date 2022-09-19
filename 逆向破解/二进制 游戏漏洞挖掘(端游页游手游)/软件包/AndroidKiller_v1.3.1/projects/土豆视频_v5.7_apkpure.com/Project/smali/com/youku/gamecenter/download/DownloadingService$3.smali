.class Lcom/youku/gamecenter/download/DownloadingService$3;
.super Ljava/lang/Object;
.source "DownloadingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/download/DownloadingService;->cancelNotifacation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadingService;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadingService;I)V
    .locals 0

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService$3;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iput p2, p0, Lcom/youku/gamecenter/download/DownloadingService$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$3;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadingService;->access$600(Lcom/youku/gamecenter/download/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/youku/gamecenter/download/DownloadingService$3;->val$id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1030
    return-void
.end method
