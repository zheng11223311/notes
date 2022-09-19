.class public interface abstract Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;
.super Ljava/lang/Object;
.source "FullscreenHotseat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onHotseatExpand(ZZ)V
.end method

.method public abstract onHotseatItemClick(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;)V
.end method

.method public abstract onHotseatItemTouch(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;Landroid/view/MotionEvent;)Z
.end method
