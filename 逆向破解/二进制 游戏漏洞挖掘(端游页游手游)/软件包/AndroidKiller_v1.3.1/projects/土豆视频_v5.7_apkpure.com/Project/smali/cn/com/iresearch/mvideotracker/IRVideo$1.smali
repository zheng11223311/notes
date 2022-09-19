.class Lcn/com/iresearch/mvideotracker/IRVideo$1;
.super Ljava/lang/Object;
.source "IRVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/iresearch/mvideotracker/IRVideo;->clearVideoPlayInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/iresearch/mvideotracker/IRVideo;


# direct methods
.method constructor <init>(Lcn/com/iresearch/mvideotracker/IRVideo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/IRVideo$1;->this$0:Lcn/com/iresearch/mvideotracker/IRVideo;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 484
    :try_start_0
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/IRVideo$1;->this$0:Lcn/com/iresearch/mvideotracker/IRVideo;

    invoke-static {v3}, Lcn/com/iresearch/mvideotracker/IRVideo;->access$0(Lcn/com/iresearch/mvideotracker/IRVideo;)Lcn/com/iresearch/mvideotracker/db/FinalDb;

    move-result-object v3

    .line 485
    const-class v4, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-virtual {v3, v4}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 486
    .local v2, "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 499
    .end local v2    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :goto_1
    return-void

    .line 486
    .restart local v2    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 488
    .local v1, "info":Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    :try_start_1
    const-string v4, "end"

    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 489
    iget-object v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo$1;->this$0:Lcn/com/iresearch/mvideotracker/IRVideo;

    invoke-static {v4, v1}, Lcn/com/iresearch/mvideotracker/IRVideo;->access$1(Lcn/com/iresearch/mvideotracker/IRVideo;Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "info":Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    .end local v2    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :catch_1
    move-exception v0

    .line 496
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
