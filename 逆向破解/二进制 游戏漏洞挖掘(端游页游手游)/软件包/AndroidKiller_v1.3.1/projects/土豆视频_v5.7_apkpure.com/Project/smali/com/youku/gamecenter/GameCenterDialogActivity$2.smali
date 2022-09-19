.class Lcom/youku/gamecenter/GameCenterDialogActivity$2;
.super Ljava/lang/Object;
.source "GameCenterDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameCenterDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameCenterDialogActivity;

.field final synthetic val$info:Lcom/youku/gamecenter/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameCenterDialogActivity;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/youku/gamecenter/GameCenterDialogActivity$2;->this$0:Lcom/youku/gamecenter/GameCenterDialogActivity;

    iput-object p2, p0, Lcom/youku/gamecenter/GameCenterDialogActivity$2;->val$info:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterDialogActivity$2;->this$0:Lcom/youku/gamecenter/GameCenterDialogActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameCenterDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameCenterDialogActivity$2;->val$info:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/download/DownloadManager;->start(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 30
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterDialogActivity$2;->this$0:Lcom/youku/gamecenter/GameCenterDialogActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameCenterDialogActivity;->finish()V

    .line 31
    return-void
.end method
