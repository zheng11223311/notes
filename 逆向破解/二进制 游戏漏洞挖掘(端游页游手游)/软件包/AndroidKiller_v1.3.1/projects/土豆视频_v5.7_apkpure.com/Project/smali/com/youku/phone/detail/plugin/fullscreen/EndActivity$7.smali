.class Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$7;
.super Ljava/lang/Object;
.source "EndActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getReplayOnclickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$1500(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;Ljava/lang/String;Z)V

    .line 252
    return-void
.end method
