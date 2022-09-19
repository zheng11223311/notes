.class Lcom/tudou/service/download/DownloadServiceManager$1$3;
.super Ljava/lang/Object;
.source "DownloadServiceManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$netDialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadServiceManager$1;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/tudou/service/download/DownloadServiceManager$1$3;->this$1:Lcom/tudou/service/download/DownloadServiceManager$1;

    iput-object p2, p0, Lcom/tudou/service/download/DownloadServiceManager$1$3;->val$netDialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager$1$3;->this$1:Lcom/tudou/service/download/DownloadServiceManager$1;

    iget-object v0, v0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->stopAllTask()V

    .line 169
    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager$1$3;->val$netDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 170
    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager$1$3;->this$1:Lcom/tudou/service/download/DownloadServiceManager$1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tudou/service/download/DownloadServiceManager$1;->isShowing:Z

    .line 171
    return-void
.end method
