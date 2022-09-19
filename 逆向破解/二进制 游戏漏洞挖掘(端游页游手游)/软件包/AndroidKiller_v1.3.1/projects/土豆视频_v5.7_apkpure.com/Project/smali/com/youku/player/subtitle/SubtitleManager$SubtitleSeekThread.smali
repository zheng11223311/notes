.class Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;
.super Ljava/lang/Thread;
.source "SubtitleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/subtitle/SubtitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubtitleSeekThread"
.end annotation


# instance fields
.field seekTo:J

.field final synthetic this$0:Lcom/youku/player/subtitle/SubtitleManager;


# direct methods
.method constructor <init>(Lcom/youku/player/subtitle/SubtitleManager;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 352
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seek begin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->seekTo:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    iget-wide v4, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->seekTo:J

    invoke-virtual {v2, v4, v5}, Lcom/youku/player/subtitle/SubtitleManager;->find(J)I

    move-result v0

    .line 357
    .local v0, "index":I
    const/16 v2, -0x64

    if-eq v2, v0, :cond_3

    .line 358
    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v2}, Lcom/youku/player/subtitle/SubtitleManager;->access$100(Lcom/youku/player/subtitle/SubtitleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v2}, Lcom/youku/player/subtitle/SubtitleManager;->access$100(Lcom/youku/player/subtitle/SubtitleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v2}, Lcom/youku/player/subtitle/SubtitleManager;->access$100(Lcom/youku/player/subtitle/SubtitleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/subtitle/Subtitle;

    .line 364
    .local v1, "subtitle":Lcom/youku/player/subtitle/Subtitle;
    iget-wide v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->seekTo:J

    iget-wide v4, v1, Lcom/youku/player/subtitle/Subtitle;->start:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->seekTo:J

    iget-wide v4, v1, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :cond_1
    if-nez v0, :cond_5

    .line 365
    :cond_2
    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v2, v0}, Lcom/youku/player/subtitle/SubtitleManager;->access$202(Lcom/youku/player/subtitle/SubtitleManager;I)I

    .line 366
    iget-object v3, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v2}, Lcom/youku/player/subtitle/SubtitleManager;->access$100(Lcom/youku/player/subtitle/SubtitleManager;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v4}, Lcom/youku/player/subtitle/SubtitleManager;->access$200(Lcom/youku/player/subtitle/SubtitleManager;)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/subtitle/Subtitle;

    invoke-static {v3, v2}, Lcom/youku/player/subtitle/SubtitleManager;->access$302(Lcom/youku/player/subtitle/SubtitleManager;Lcom/youku/player/subtitle/Subtitle;)Lcom/youku/player/subtitle/Subtitle;

    .line 367
    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v2}, Lcom/youku/player/subtitle/SubtitleManager;->access$200(Lcom/youku/player/subtitle/SubtitleManager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v3}, Lcom/youku/player/subtitle/SubtitleManager;->access$100(Lcom/youku/player/subtitle/SubtitleManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 368
    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/youku/player/subtitle/SubtitleManager;->access$402(Lcom/youku/player/subtitle/SubtitleManager;Lcom/youku/player/subtitle/Subtitle;)Lcom/youku/player/subtitle/Subtitle;

    .line 388
    .end local v1    # "subtitle":Lcom/youku/player/subtitle/Subtitle;
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/player/subtitle/SubtitleManager;->access$002(Lcom/youku/player/subtitle/SubtitleManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 389
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cur.start = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v4}, Lcom/youku/player/subtitle/SubtitleManager;->access$300(Lcom/youku/player/subtitle/SubtitleManager;)Lcom/youku/player/subtitle/Subtitle;

    move-result-object v4

    iget-wide v4, v4, Lcom/youku/player/subtitle/Subtitle;->start:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cur.end = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v4}, Lcom/youku/player/subtitle/SubtitleManager;->access$300(Lcom/youku/player/subtitle/SubtitleManager;)Lcom/youku/player/subtitle/Subtitle;

    move-result-object v4

    iget-wide v4, v4, Lcom/youku/player/subtitle/Subtitle;->end:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seek end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->seekTo:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void

    .line 370
    .restart local v1    # "subtitle":Lcom/youku/player/subtitle/Subtitle;
    :cond_4
    iget-object v3, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v2}, Lcom/youku/player/subtitle/SubtitleManager;->access$100(Lcom/youku/player/subtitle/SubtitleManager;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v4}, Lcom/youku/player/subtitle/SubtitleManager;->access$200(Lcom/youku/player/subtitle/SubtitleManager;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/subtitle/Subtitle;

    invoke-static {v3, v2}, Lcom/youku/player/subtitle/SubtitleManager;->access$402(Lcom/youku/player/subtitle/SubtitleManager;Lcom/youku/player/subtitle/Subtitle;)Lcom/youku/player/subtitle/Subtitle;

    goto :goto_0

    .line 372
    :cond_5
    if-lez v0, :cond_3

    .line 373
    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Lcom/youku/player/subtitle/SubtitleManager;->access$202(Lcom/youku/player/subtitle/SubtitleManager;I)I

    .line 374
    iget-object v3, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v2}, Lcom/youku/player/subtitle/SubtitleManager;->access$100(Lcom/youku/player/subtitle/SubtitleManager;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v4}, Lcom/youku/player/subtitle/SubtitleManager;->access$200(Lcom/youku/player/subtitle/SubtitleManager;)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/subtitle/Subtitle;

    invoke-static {v3, v2}, Lcom/youku/player/subtitle/SubtitleManager;->access$302(Lcom/youku/player/subtitle/SubtitleManager;Lcom/youku/player/subtitle/Subtitle;)Lcom/youku/player/subtitle/Subtitle;

    .line 375
    iget-object v3, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-static {v2}, Lcom/youku/player/subtitle/SubtitleManager;->access$100(Lcom/youku/player/subtitle/SubtitleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/subtitle/Subtitle;

    invoke-static {v3, v2}, Lcom/youku/player/subtitle/SubtitleManager;->access$402(Lcom/youku/player/subtitle/SubtitleManager;Lcom/youku/player/subtitle/Subtitle;)Lcom/youku/player/subtitle/Subtitle;

    goto/16 :goto_0
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "seekTo"    # J

    .prologue
    .line 346
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/player/subtitle/SubtitleManager;->access$002(Lcom/youku/player/subtitle/SubtitleManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 347
    iput-wide p1, p0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->seekTo:J

    .line 348
    return-void
.end method
