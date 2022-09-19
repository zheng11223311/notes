.class public Lcom/youku/statistics/IRVideoWrapper;
.super Ljava/lang/Object;
.source "IRVideoWrapper.java"


# static fields
.field private static isOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/statistics/IRVideoWrapper;->isOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearVideoPlayInfo(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-boolean v0, Lcom/youku/statistics/IRVideoWrapper;->isOpen:Z

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/IRVideo;->getInstance(Landroid/content/Context;)Lcn/com/iresearch/mvideotracker/IRVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/IRVideo;->clearVideoPlayInfo()V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uaid"    # Ljava/lang/String;
    .param p2, "customVal"    # Ljava/lang/String;

    .prologue
    .line 10
    sget-boolean v0, Lcom/youku/statistics/IRVideoWrapper;->isOpen:Z

    if-nez v0, :cond_0

    .line 13
    :goto_0
    return-void

    .line 12
    :cond_0
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/IRVideo;->getInstance(Landroid/content/Context;)Lcn/com/iresearch/mvideotracker/IRVideo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/com/iresearch/mvideotracker/IRVideo;->init(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static newVideo(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "videoTime"    # J
    .param p4, "isPlay"    # Z

    .prologue
    .line 17
    sget-boolean v0, Lcom/youku/statistics/IRVideoWrapper;->isOpen:Z

    if-nez v0, :cond_0

    .line 20
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/IRVideo;->getInstance(Landroid/content/Context;)Lcn/com/iresearch/mvideotracker/IRVideo;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/com/iresearch/mvideotracker/IRVideo;->newVideoPlay(Ljava/lang/String;JLjava/lang/Boolean;)V

    goto :goto_0
.end method

.method public static videoEnd(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-boolean v0, Lcom/youku/statistics/IRVideoWrapper;->isOpen:Z

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/IRVideo;->getInstance(Landroid/content/Context;)Lcn/com/iresearch/mvideotracker/IRVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/IRVideo;->videoEnd()V

    goto :goto_0
.end method

.method public static videoPause(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-boolean v0, Lcom/youku/statistics/IRVideoWrapper;->isOpen:Z

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/IRVideo;->getInstance(Landroid/content/Context;)Lcn/com/iresearch/mvideotracker/IRVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPause()V

    goto :goto_0
.end method

.method public static videoPlay(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-boolean v0, Lcom/youku/statistics/IRVideoWrapper;->isOpen:Z

    if-nez v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/IRVideo;->getInstance(Landroid/content/Context;)Lcn/com/iresearch/mvideotracker/IRVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlay()V

    goto :goto_0
.end method
