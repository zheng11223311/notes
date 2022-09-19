.class Lcom/youku/player/base/MediaPlayerInit$19$1;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit$19;->onPlayHeartTwentyInterval()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/base/MediaPlayerInit$19;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit$19;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 703
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v2, v2, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v2, v2, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_1

    sget v2, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v3, 0x2711

    if-ne v2, v3, :cond_1

    .line 706
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v2, v2, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v3, v3, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v4, v4, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v4}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v4

    iget-boolean v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-static {v2, v3, v4}, Lcom/youku/player/Track;->trackPlayHeartTwentyInterval(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Z)V

    .line 708
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v2, v2, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$1200(Lcom/youku/player/base/MediaPlayerInit;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 709
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v2, v2, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$1200(Lcom/youku/player/base/MediaPlayerInit;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 710
    const/4 v1, 0x0

    .line 711
    .local v1, "totalSecond":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v2, v2, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$1200(Lcom/youku/player/base/MediaPlayerInit;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 712
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v2, v2, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$1200(Lcom/youku/player/base/MediaPlayerInit;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/module/LiveInfo;

    iget-wide v4, v2, Lcom/youku/player/module/LiveInfo;->endLoadingTime:J

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v2, v2, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$1200(Lcom/youku/player/base/MediaPlayerInit;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/module/LiveInfo;

    iget-wide v2, v2, Lcom/youku/player/module/LiveInfo;->startLoadingTime:J

    sub-long v2, v4, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v2, v2, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v3, v3, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v4, v4, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v4}, Lcom/youku/player/base/MediaPlayerInit;->access$1200(Lcom/youku/player/base/MediaPlayerInit;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Lcom/youku/player/Track;->trackUserExperience(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;FI)V

    .line 719
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$19$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$19;

    iget-object v2, v2, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$1200(Lcom/youku/player/base/MediaPlayerInit;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 724
    .end local v0    # "i":I
    .end local v1    # "totalSecond":F
    :cond_1
    return-void
.end method
