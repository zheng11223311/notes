.class Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;
.super Ljava/lang/Object;
.source "TudouDanmakuUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/danmaku/TudouDanmakuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "starUrlRunnable"
.end annotation


# instance fields
.field danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

.field item:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field final synthetic this$0:Lcom/youku/player/danmaku/TudouDanmakuUtils;


# direct methods
.method public constructor <init>(Lcom/youku/player/danmaku/TudouDanmakuUtils;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/controller/IDanmakuView;)V
    .locals 0
    .param p2, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p3, "danmakuView"    # Lmaster/flame/danmaku/controller/IDanmakuView;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->this$0:Lcom/youku/player/danmaku/TudouDanmakuUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->item:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 111
    iput-object p3, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    .line 112
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 116
    iget-object v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->this$0:Lcom/youku/player/danmaku/TudouDanmakuUtils;

    iget-object v0, v0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->imgUrlHashMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->item:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->starUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->this$0:Lcom/youku/player/danmaku/TudouDanmakuUtils;

    iget-object v1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->item:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-object v2, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-static {v0, v1, v2}, Lcom/youku/player/danmaku/TudouDanmakuUtils;->access$000(Lcom/youku/player/danmaku/TudouDanmakuUtils;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/controller/IDanmakuView;)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->item:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-object v2, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->this$0:Lcom/youku/player/danmaku/TudouDanmakuUtils;

    iget-object v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->this$0:Lcom/youku/player/danmaku/TudouDanmakuUtils;

    iget-object v0, v0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->imgUrlHashMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->item:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->starUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->item:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->starName:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->item:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->content:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->item:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget v5, v5, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    invoke-static {v2, v0, v3, v4, v5}, Lcom/youku/player/danmaku/TudouDanmakuUtils;->access$100(Lcom/youku/player/danmaku/TudouDanmakuUtils;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    .line 120
    iget-object v0, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    iget-object v1, p0, Lcom/youku/player/danmaku/TudouDanmakuUtils$starUrlRunnable;->item:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmaster/flame/danmaku/controller/IDanmakuView;->invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    goto :goto_0
.end method
