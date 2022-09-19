.class Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$1;
.super Landroid/os/Handler;
.source "PopupWindow_Hotpoint_Top.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;-><init>(Landroid/content/Context;Landroid/os/Handler;IILcom/youku/player/goplay/Point;Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 106
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x31

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    iget v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pointY:I

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
