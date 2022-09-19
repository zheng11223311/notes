.class Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView$1;
.super Ljava/lang/Object;
.source "AbsPluginFullScreenInnerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    const-string v0, "\u64ad\u653e\u9875\u9000\u51fa\u5168\u5c4f\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u9000\u51fa\u5168\u5c4f\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goSmall()V

    .line 80
    return-void
.end method
