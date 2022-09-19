.class public interface abstract Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;
.super Ljava/lang/Object;
.source "BaseMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/BaseMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSwitchListener"
.end annotation


# virtual methods
.method public abstract onLarge(Landroid/view/SurfaceHolder;II)V
.end method

.method public abstract onResizeCurrent(II)V
.end method

.method public abstract onSmall(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract onSwitch(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;II)V
.end method
