.class Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$2;
.super Ljava/lang/Object;
.source "ScreenShotShareView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ct"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    iget-boolean v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mFromGuide:Z

    if-eqz v1, :cond_1

    const-string v1, "\u5f15\u5bfc"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "t1.detail_player.shootmecancel"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 176
    const-string v1, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v2, 0x190

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    :cond_0
    :goto_1
    return-void

    .line 174
    :cond_1
    const-string v1, "\u4e3b\u52a8"

    goto :goto_0

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$OnDismissListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$OnDismissListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$OnDismissListener;->onDismiss()V

    goto :goto_1
.end method
