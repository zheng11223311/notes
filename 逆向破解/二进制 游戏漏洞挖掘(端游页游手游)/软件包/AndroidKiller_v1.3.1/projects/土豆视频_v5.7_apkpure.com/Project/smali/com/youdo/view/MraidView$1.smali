.class Lcom/youdo/view/MraidView$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/view/MraidView;


# direct methods
.method constructor <init>(Lcom/youdo/view/MraidView;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    const-string v0, "handler"

    const-string v1, "message_expand_close!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youdo/view/MraidView$MraidViewListener;->onExpandClose()Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    sget-object v2, Lorg/openad/constants/IOpenAdContants$ViewState;->RESIZED:Lorg/openad/constants/IOpenAdContants$ViewState;

    invoke-static {v1, v2}, Lcom/youdo/view/MraidView;->access$102(Lcom/youdo/view/MraidView;Lorg/openad/constants/IOpenAdContants$ViewState;)Lorg/openad/constants/IOpenAdContants$ViewState;

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string/jumbo v2, "resize_height"

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const-string/jumbo v2, "resize_width"

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const-string/jumbo v2, "resize_offset_x"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const-string/jumbo v2, "resize_offset_y"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const-string/jumbo v2, "resize_custom_close_position"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->parse(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    const-string/jumbo v2, "resize_allow_off_screen"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    const-string/jumbo v2, "resize_height"

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string/jumbo v2, "resize_width"

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "window.mraidview.fireChangeEvent({ state: \'resized\', size: { width: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v3}, Lcom/youdo/view/MraidView;->access$200(Lcom/youdo/view/MraidView;)F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v2}, Lcom/youdo/view/MraidView;->access$200(Lcom/youdo/view/MraidView;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->requestLayout()V

    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youdo/view/MraidView$MraidViewListener;->onResize()Z

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "handler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message_close! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v2}, Lcom/youdo/view/MraidView;->access$100(Lcom/youdo/view/MraidView;)Lorg/openad/constants/IOpenAdContants$ViewState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openad/constants/IOpenAdContants$ViewState;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/youdo/view/MraidView$16;->$SwitchMap$org$openad$constants$IOpenAdContants$ViewState:[I

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v1}, Lcom/youdo/view/MraidView;->access$100(Lcom/youdo/view/MraidView;)Lorg/openad/constants/IOpenAdContants$ViewState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openad/constants/IOpenAdContants$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->hide()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$300(Lcom/youdo/view/MraidView;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->closeExpanded()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v1, v4, v3}, Lorg/openad/common/util/ViewUtils;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    if-eqz v0, :cond_2

    sget-object v1, Lorg/openad/constants/IOpenAdContants$MessageSender;->APP:Lorg/openad/constants/IOpenAdContants$MessageSender;

    invoke-virtual {v1}, Lorg/openad/constants/IOpenAdContants$MessageSender;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_sender"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "window.mraidview.fireChangeEvent({ xadsdkviewable: \'false\' });"

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    const-string/jumbo v0, "window.mraidview.fireChangeEvent({ AdPaused: \'true\' });"

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v1}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v1}, Lcom/youdo/view/MraidView;->access$400(Lcom/youdo/view/MraidView;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v1}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/youdo/view/MraidView$MraidViewListener;->onHide()Z

    :cond_1
    :goto_1
    const-string v1, "handler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message_hide!-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/youdo/view/MraidView;->setVisibility(I)V

    const-string/jumbo v0, "window.mraidview.fireChangeEvent({ state: \'hidden\' });"

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    const-string/jumbo v0, "window.mraidview.fireChangeEvent({ viewable: \'false\' });"

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    const-string v1, "handler"

    const-string v2, "message_show!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    const/4 v2, 0x1

    invoke-static {v1, v2, v3}, Lorg/openad/common/util/ViewUtils;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    if-eqz v0, :cond_3

    sget-object v1, Lorg/openad/constants/IOpenAdContants$MessageSender;->APP:Lorg/openad/constants/IOpenAdContants$MessageSender;

    invoke-virtual {v1}, Lorg/openad/constants/IOpenAdContants$MessageSender;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_sender"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "window.mraidview.fireChangeEvent({ xadsdkviewable: \'true\' });"

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    const-string/jumbo v0, "window.mraidview.fireChangeEvent({ AdPlaying: \'true\' });"

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$400(Lcom/youdo/view/MraidView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youdo/view/MraidView$MraidViewListener;->onShow()Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0, v4}, Lcom/youdo/view/MraidView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "window.mraidview.fireChangeEvent({ state: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v1}, Lcom/youdo/view/MraidView;->access$100(Lcom/youdo/view/MraidView;)Lorg/openad/constants/IOpenAdContants$ViewState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openad/constants/IOpenAdContants$ViewState;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' });"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    const-string/jumbo v0, "window.mraidview.fireChangeEvent({ viewable: \'true\' });"

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v1, "handler"

    const-string v2, "message_expand!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v1, v0}, Lcom/youdo/view/MraidView;->access$500(Lcom/youdo/view/MraidView;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ViewState;->LEFT_BEHIND:Lorg/openad/constants/IOpenAdContants$ViewState;

    invoke-static {v0, v1}, Lcom/youdo/view/MraidView;->access$102(Lcom/youdo/view/MraidView;Lorg/openad/constants/IOpenAdContants$ViewState;)Lorg/openad/constants/IOpenAdContants$ViewState;

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->playAudioImpl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->playVideoImpl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window.mraidview.fireErrorEvent(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/view/MraidView$1;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
