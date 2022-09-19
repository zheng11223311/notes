.class public Lcn/com/iresearch/mvideotracker/VVThread;
.super Ljava/lang/Object;
.source "VVThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static lock:[B


# instance fields
.field private irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

.field private isPlay:Ljava/lang/Boolean;

.field private urlString:Ljava/lang/String;

.field private videoAction:I

.field private videoID:Ljava/lang/String;

.field private videoLength:J

.field private videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcn/com/iresearch/mvideotracker/VVThread;->lock:[B

    return-void
.end method

.method public constructor <init>(Lcn/com/iresearch/mvideotracker/IRVideo;I)V
    .locals 0
    .param p1, "irVideo"    # Lcn/com/iresearch/mvideotracker/IRVideo;
    .param p2, "videoAction"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p2, p0, Lcn/com/iresearch/mvideotracker/VVThread;->videoAction:I

    .line 15
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/VVThread;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    .line 16
    return-void
.end method

.method public constructor <init>(Lcn/com/iresearch/mvideotracker/IRVideo;ILcn/com/iresearch/mvideotracker/VideoPlayInfo;)V
    .locals 0
    .param p1, "irVideo"    # Lcn/com/iresearch/mvideotracker/IRVideo;
    .param p2, "videoAction"    # I
    .param p3, "videoPlayInfo"    # Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcn/com/iresearch/mvideotracker/VVThread;-><init>(Lcn/com/iresearch/mvideotracker/IRVideo;I)V

    .line 33
    iput-object p3, p0, Lcn/com/iresearch/mvideotracker/VVThread;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcn/com/iresearch/mvideotracker/IRVideo;ILjava/lang/String;)V
    .locals 0
    .param p1, "irVideo"    # Lcn/com/iresearch/mvideotracker/IRVideo;
    .param p2, "videoAction"    # I
    .param p3, "urlString"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcn/com/iresearch/mvideotracker/VVThread;-><init>(Lcn/com/iresearch/mvideotracker/IRVideo;I)V

    .line 28
    iput-object p3, p0, Lcn/com/iresearch/mvideotracker/VVThread;->urlString:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcn/com/iresearch/mvideotracker/IRVideo;ILjava/lang/String;JLjava/lang/Boolean;)V
    .locals 0
    .param p1, "irVideo"    # Lcn/com/iresearch/mvideotracker/IRVideo;
    .param p2, "videoAction"    # I
    .param p3, "videoId"    # Ljava/lang/String;
    .param p4, "videoLength"    # J
    .param p6, "isPlay"    # Ljava/lang/Boolean;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcn/com/iresearch/mvideotracker/VVThread;-><init>(Lcn/com/iresearch/mvideotracker/IRVideo;I)V

    .line 21
    iput-object p3, p0, Lcn/com/iresearch/mvideotracker/VVThread;->videoID:Ljava/lang/String;

    .line 22
    iput-wide p4, p0, Lcn/com/iresearch/mvideotracker/VVThread;->videoLength:J

    .line 23
    iput-object p6, p0, Lcn/com/iresearch/mvideotracker/VVThread;->isPlay:Ljava/lang/Boolean;

    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 38
    iget v0, p0, Lcn/com/iresearch/mvideotracker/VVThread;->videoAction:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/VVThread;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/VVThread;->videoID:Ljava/lang/String;

    iget-wide v2, p0, Lcn/com/iresearch/mvideotracker/VVThread;->videoLength:J

    iget-object v4, p0, Lcn/com/iresearch/mvideotracker/VVThread;->isPlay:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/com/iresearch/mvideotracker/IRVideo;->newVideoPlayThread(Ljava/lang/String;JLjava/lang/Boolean;)V

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/VVThread;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayThread()V

    goto :goto_0

    .line 46
    :pswitch_2
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/VVThread;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPauseThread()V

    goto :goto_0

    .line 49
    :pswitch_3
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/VVThread;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/IRVideo;->videoEndThread()V

    goto :goto_0

    .line 52
    :pswitch_4
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/VVThread;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/IRVideo;->sendHistoryInfo()V

    goto :goto_0

    .line 55
    :pswitch_5
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/VVThread;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/VVThread;->urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mvideotracker/IRVideo;->sendAVideoInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_6
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/VVThread;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/VVThread;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mvideotracker/IRVideo;->sendBVideoInfo(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
