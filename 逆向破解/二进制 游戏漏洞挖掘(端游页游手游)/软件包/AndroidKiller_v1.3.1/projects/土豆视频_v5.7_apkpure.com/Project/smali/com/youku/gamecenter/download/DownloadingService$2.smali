.class Lcom/youku/gamecenter/download/DownloadingService$2;
.super Ljava/lang/Object;
.source "DownloadingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/download/DownloadingService;->sendAdvTrack(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadingService;

.field final synthetic val$trackUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService$2;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iput-object p2, p0, Lcom/youku/gamecenter/download/DownloadingService$2;->val$trackUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 458
    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadingService$2;->val$trackUrl:Ljava/lang/String;

    const-string v6, "array+_#_+divider"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, "urls":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 460
    .local v3, "url":Ljava/lang/String;
    new-instance v5, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    sget-object v6, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-direct {v5, v3, v7, v6}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;ZLandroid/content/Context;)V

    new-array v6, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method
