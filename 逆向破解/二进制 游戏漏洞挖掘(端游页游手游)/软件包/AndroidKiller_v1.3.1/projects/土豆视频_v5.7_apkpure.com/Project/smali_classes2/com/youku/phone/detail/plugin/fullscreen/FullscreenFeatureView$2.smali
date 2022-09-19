.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$2;
.super Ljava/lang/Object;
.source "FullscreenFeatureView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const-string v0, "\u89c6\u9891\u4fe1\u606f\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->getHintType()Lcom/youku/widget/HintView$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)V

    goto :goto_0
.end method
