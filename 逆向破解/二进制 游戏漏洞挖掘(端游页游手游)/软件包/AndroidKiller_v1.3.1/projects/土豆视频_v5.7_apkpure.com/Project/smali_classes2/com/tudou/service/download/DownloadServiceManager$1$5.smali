.class Lcom/tudou/service/download/DownloadServiceManager$1$5;
.super Ljava/lang/Object;
.source "DownloadServiceManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/download/DownloadServiceManager$1;->showNetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/service/download/DownloadServiceManager$1;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadServiceManager$1;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/tudou/service/download/DownloadServiceManager$1$5;->this$1:Lcom/tudou/service/download/DownloadServiceManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager$1$5;->this$1:Lcom/tudou/service/download/DownloadServiceManager$1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tudou/service/download/DownloadServiceManager$1;->isShowing:Z

    .line 190
    return-void
.end method
