.class Lcom/youku/gamecenter/download/DownloadingService$7;
.super Ljava/lang/Object;
.source "DownloadingService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/download/DownloadingService;->continueNormalDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/youku/gamecenter/download/DownloadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadingService;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadingService;)V
    .locals 0

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService$7;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/youku/gamecenter/download/DownloadInfo;Lcom/youku/gamecenter/download/DownloadInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/youku/gamecenter/download/DownloadInfo;
    .param p2, "rhs"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 1470
    iget v0, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    iget v1, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1466
    check-cast p1, Lcom/youku/gamecenter/download/DownloadInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/youku/gamecenter/download/DownloadInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/youku/gamecenter/download/DownloadingService$7;->compare(Lcom/youku/gamecenter/download/DownloadInfo;Lcom/youku/gamecenter/download/DownloadInfo;)I

    move-result v0

    return v0
.end method
