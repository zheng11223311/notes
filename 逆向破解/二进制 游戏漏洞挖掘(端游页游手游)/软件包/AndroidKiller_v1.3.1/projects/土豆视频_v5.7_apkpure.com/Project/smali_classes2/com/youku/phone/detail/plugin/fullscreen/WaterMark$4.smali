.class Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$4;
.super Ljava/lang/Object;
.source "WaterMark.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->startRotateAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->TUDOU:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;Z)V

    .line 171
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$302(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Z)Z

    .line 172
    return-void
.end method
