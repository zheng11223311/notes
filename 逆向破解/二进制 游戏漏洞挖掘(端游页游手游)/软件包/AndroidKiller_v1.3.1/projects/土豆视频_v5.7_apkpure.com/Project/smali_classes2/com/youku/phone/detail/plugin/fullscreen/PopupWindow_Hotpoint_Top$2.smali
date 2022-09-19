.class Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$2;
.super Ljava/lang/Object;
.source "PopupWindow_Hotpoint_Top.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->init()V
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
    .line 127
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 138
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xcc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 139
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Lcom/youku/player/goplay/Point;

    move-result-object v1

    iget-wide v2, v1, Lcom/youku/player/goplay/Point;->start:D

    double-to-int v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 141
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->dismiss()Z

    .line 144
    return-void
.end method
