.class Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;
.super Ljava/lang/Object;
.source "GiftLogicFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->showStarGift(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

.field final synthetic val$count:I

.field final synthetic val$isSelf:Z


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    iput p2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;->val$count:I

    iput-boolean p3, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;->val$isSelf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 92
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->access$000(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;->val$count:I

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    iget-object v1, v1, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->starQueue:Ljava/util/Queue;

    new-instance v3, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;

    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    iget-boolean v5, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;->val$isSelf:Z

    invoke-direct {v3, v4, v5}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;-><init>(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;Z)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    monitor-exit v2

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
