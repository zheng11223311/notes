.class Lcom/youku/gamecenter/download/DownloadManager$3$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/download/DownloadManager$3;->run()V
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
.field final synthetic this$1:Lcom/youku/gamecenter/download/DownloadManager$3;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadManager$3;)V
    .locals 0

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadManager$3$1;->this$1:Lcom/youku/gamecenter/download/DownloadManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/youku/gamecenter/download/DownloadInfo;Lcom/youku/gamecenter/download/DownloadInfo;)I
    .locals 6
    .param p1, "lhs"    # Lcom/youku/gamecenter/download/DownloadInfo;
    .param p2, "rhs"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 1264
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1265
    .local v0, "t1":Ljava/lang/Long;
    new-instance v2, Ljava/io/File;

    iget-object v3, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1266
    .local v1, "t2":Ljava/lang/Long;
    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1260
    check-cast p1, Lcom/youku/gamecenter/download/DownloadInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/youku/gamecenter/download/DownloadInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/youku/gamecenter/download/DownloadManager$3$1;->compare(Lcom/youku/gamecenter/download/DownloadInfo;Lcom/youku/gamecenter/download/DownloadInfo;)I

    move-result v0

    return v0
.end method
