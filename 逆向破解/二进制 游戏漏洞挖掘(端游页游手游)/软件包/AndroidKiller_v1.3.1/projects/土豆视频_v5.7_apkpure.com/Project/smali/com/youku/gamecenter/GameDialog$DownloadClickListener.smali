.class Lcom/youku/gamecenter/GameDialog$DownloadClickListener;
.super Ljava/lang/Object;
.source "GameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadClickListener"
.end annotation


# instance fields
.field private mIsClicked:Z

.field final synthetic this$0:Lcom/youku/gamecenter/GameDialog;


# direct methods
.method private constructor <init>(Lcom/youku/gamecenter/GameDialog;)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->this$0:Lcom/youku/gamecenter/GameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->mIsClicked:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/gamecenter/GameDialog;Lcom/youku/gamecenter/GameDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/gamecenter/GameDialog;
    .param p2, "x1"    # Lcom/youku/gamecenter/GameDialog$1;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;-><init>(Lcom/youku/gamecenter/GameDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->mIsClicked:Z

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->mIsClicked:Z

    .line 201
    const-string v9, ""

    .line 202
    .local v9, "statistic":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v0, v0, Lcom/youku/gamecenter/GameDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v1, v1, Lcom/youku/gamecenter/GameDialog;->mDialogInfo:Lcom/youku/gamecenter/data/GameDialogInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameDialogInfo;->mPkg_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v2, v2, Lcom/youku/gamecenter/GameDialog;->mDialogInfo:Lcom/youku/gamecenter/data/GameDialogInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameDialogInfo;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v3, v3, Lcom/youku/gamecenter/GameDialog;->mDialogInfo:Lcom/youku/gamecenter/data/GameDialogInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameDialogInfo;->mDownload_link:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v4, v4, Lcom/youku/gamecenter/GameDialog;->mDialogInfo:Lcom/youku/gamecenter/data/GameDialogInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/data/GameDialogInfo;->mIcon:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v5, v5, Lcom/youku/gamecenter/GameDialog;->mDialogInfo:Lcom/youku/gamecenter/data/GameDialogInfo;

    iget v5, v5, Lcom/youku/gamecenter/data/GameDialogInfo;->mPkg_ver:I

    iget-object v6, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v6, v6, Lcom/youku/gamecenter/GameDialog;->mDialogInfo:Lcom/youku/gamecenter/data/GameDialogInfo;

    iget-object v6, v6, Lcom/youku/gamecenter/data/GameDialogInfo;->mSource:Ljava/lang/String;

    iget-object v7, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v7, v7, Lcom/youku/gamecenter/GameDialog;->mDialogInfo:Lcom/youku/gamecenter/data/GameDialogInfo;

    iget-object v7, v7, Lcom/youku/gamecenter/data/GameDialogInfo;->mId:Ljava/lang/String;

    iget-object v8, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->this$0:Lcom/youku/gamecenter/GameDialog;

    iget-object v8, v8, Lcom/youku/gamecenter/GameDialog;->mDialogInfo:Lcom/youku/gamecenter/data/GameDialogInfo;

    iget-object v8, v8, Lcom/youku/gamecenter/data/GameDialogInfo;->mOpenType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/youku/gamecenter/download/DownloadManager;->openGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog$DownloadClickListener;->this$0:Lcom/youku/gamecenter/GameDialog;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDialog;->access$600(Lcom/youku/gamecenter/GameDialog;)V

    goto :goto_0
.end method
