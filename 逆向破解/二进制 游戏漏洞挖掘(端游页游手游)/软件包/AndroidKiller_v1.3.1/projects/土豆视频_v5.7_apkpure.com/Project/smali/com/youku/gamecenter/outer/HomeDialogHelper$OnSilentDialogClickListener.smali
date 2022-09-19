.class Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;
.super Ljava/lang/Object;
.source "HomeDialogHelper.java"

# interfaces
.implements Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/outer/HomeDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSilentDialogClickListener"
.end annotation


# instance fields
.field private info:Lcom/youku/gamecenter/download/DownloadInfo;

.field final synthetic this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/outer/HomeDialogHelper;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 0
    .param p2, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput-object p2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;->info:Lcom/youku/gamecenter/download/DownloadInfo;

    .line 608
    return-void
.end method


# virtual methods
.method public onGameInfoClicked()V
    .locals 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->access$400(Lcom/youku/gamecenter/outer/HomeDialogHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;->info:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    const-string v2, "43"

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public onInstallClicked()V
    .locals 5

    .prologue
    .line 613
    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;->info:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;->info:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->access$300(Lcom/youku/gamecenter/outer/HomeDialogHelper;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 615
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;->info:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-static {v1}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->access$400(Lcom/youku/gamecenter/outer/HomeDialogHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;->info:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;->info:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/youku/gamecenter/util/AppInstallActionUtils;->handleAppInstallPage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    .line 618
    return-void
.end method

.method public onPosterClicked()V
    .locals 3

    .prologue
    .line 622
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->access$400(Lcom/youku/gamecenter/outer/HomeDialogHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnSilentDialogClickListener;->info:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    const-string v2, "43"

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return-void
.end method
