.class Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$5;
.super Lcom/tudou/detail/DetailAnimationListener;
.source "WaterMark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->switchMarkType(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

.field final synthetic val$type:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$5;->val$type:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    invoke-direct {p0}, Lcom/tudou/detail/DetailAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$5;->val$type:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;)V

    .line 227
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-static {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$502(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Lcom/youku/util/Rotate3dAnimation;)Lcom/youku/util/Rotate3dAnimation;

    .line 228
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-static {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$602(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Lcom/youku/util/Rotate3dAnimation;)Lcom/youku/util/Rotate3dAnimation;

    .line 229
    return-void
.end method
