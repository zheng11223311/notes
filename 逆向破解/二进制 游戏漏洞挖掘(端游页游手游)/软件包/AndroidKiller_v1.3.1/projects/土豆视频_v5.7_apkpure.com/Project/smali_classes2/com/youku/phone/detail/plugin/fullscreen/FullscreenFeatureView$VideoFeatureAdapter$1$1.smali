.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1$1;
.super Ljava/lang/Object;
.source "FullscreenFeatureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    const-string v2, "\u82b1\u7d6e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t1.detail_player.playlistvideoclick.1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;->val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

    iget-object v2, v2, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;

    iget v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 220
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1$1;->val$v:Landroid/view/View;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;->val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;

    iget v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;->val$position:I

    invoke-interface {v1, v2, v3, v4}, Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;->onFeatureItemClick(Landroid/view/View;Lcom/tudou/detail/vo/DetailFeature$Feature;I)V

    .line 221
    return-void
.end method
