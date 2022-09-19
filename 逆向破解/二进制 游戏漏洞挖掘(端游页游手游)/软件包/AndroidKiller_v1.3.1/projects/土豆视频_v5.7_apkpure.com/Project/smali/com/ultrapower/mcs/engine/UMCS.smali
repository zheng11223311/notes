.class public Lcom/ultrapower/mcs/engine/UMCS;
.super Ljava/lang/Object;
.source "UMCS.java"

# interfaces
.implements Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;


# static fields
.field private static final PARTTIMERMS:I = 0xa


# instance fields
.field private currentCameraIndex:I

.field localContainer:Landroid/view/ViewGroup;

.field localOnTop:Z

.field localSv:Landroid/view/SurfaceView;

.field private localVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

.field private mContext:Landroid/content/Context;

.field private oldMode:I

.field private remoteVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

.field private transportCallback:Lcom/ultrapower/mcs/engine/ITransportCallback;

.field private transportListener:Lcom/ultrapower/mcs/engine/ITransportListener;

.field private transportType:Lcom/ultrapower/mcs/engine/TransportType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-string/jumbo v0, "umcs"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    .line 24
    iput-object v1, p0, Lcom/ultrapower/mcs/engine/UMCS;->localContainer:Landroid/view/ViewGroup;

    .line 25
    iput-object v1, p0, Lcom/ultrapower/mcs/engine/UMCS;->localSv:Landroid/view/SurfaceView;

    .line 26
    iput-object v1, p0, Lcom/ultrapower/mcs/engine/UMCS;->remoteVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    .line 27
    iput-object v1, p0, Lcom/ultrapower/mcs/engine/UMCS;->localVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    .line 28
    iput-object v1, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportListener:Lcom/ultrapower/mcs/engine/ITransportListener;

    .line 29
    iput-object v1, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportCallback:Lcom/ultrapower/mcs/engine/ITransportCallback;

    .line 30
    iput v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->oldMode:I

    .line 483
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->localOnTop:Z

    .line 124
    iput-object p1, p0, Lcom/ultrapower/mcs/engine/UMCS;->mContext:Landroid/content/Context;

    .line 125
    return-void
.end method

.method private native CreateLocalVideo(ILjava/lang/Object;)I
.end method

.method private native CreateRemoteVideo(ILjava/lang/Object;)I
.end method

.method private native Fini()I
.end method

.method private native Init(Landroid/content/Context;IILjava/lang/String;)I
.end method

.method private OnDataNeedSend(ZZ[B)V
    .locals 2
    .param p1, "isAudio"    # Z
    .param p2, "isRtcp"    # Z
    .param p3, "data"    # [B

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportCallback:Lcom/ultrapower/mcs/engine/ITransportCallback;

    if-nez v0, :cond_0

    .line 94
    const-string/jumbo v0, "umcs"

    const-string/jumbo v1, "transport callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportType:Lcom/ultrapower/mcs/engine/TransportType;

    sget-object v1, Lcom/ultrapower/mcs/engine/TransportType;->kExternal:Lcom/ultrapower/mcs/engine/TransportType;

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportCallback:Lcom/ultrapower/mcs/engine/ITransportCallback;

    invoke-interface {v0, p3}, Lcom/ultrapower/mcs/engine/ITransportCallback;->SendData([B)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportType:Lcom/ultrapower/mcs/engine/TransportType;

    sget-object v1, Lcom/ultrapower/mcs/engine/TransportType;->kExternalOriginal:Lcom/ultrapower/mcs/engine/TransportType;

    if-ne v0, v1, :cond_5

    .line 100
    if-eqz p1, :cond_3

    .line 101
    if-eqz p2, :cond_2

    .line 102
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportCallback:Lcom/ultrapower/mcs/engine/ITransportCallback;

    invoke-interface {v0, p3}, Lcom/ultrapower/mcs/engine/ITransportCallback;->SendAudioRtcp([B)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportCallback:Lcom/ultrapower/mcs/engine/ITransportCallback;

    invoke-interface {v0, p3}, Lcom/ultrapower/mcs/engine/ITransportCallback;->SendAudioRtp([B)V

    goto :goto_0

    .line 107
    :cond_3
    if-eqz p2, :cond_4

    .line 108
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportCallback:Lcom/ultrapower/mcs/engine/ITransportCallback;

    invoke-interface {v0, p3}, Lcom/ultrapower/mcs/engine/ITransportCallback;->SendVideoRtcp([B)V

    goto :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportCallback:Lcom/ultrapower/mcs/engine/ITransportCallback;

    invoke-interface {v0, p3}, Lcom/ultrapower/mcs/engine/ITransportCallback;->SendVideoRtp([B)V

    goto :goto_0

    .line 115
    :cond_5
    const-string/jumbo v0, "umcs"

    const-string/jumbo v1, "transport type is not external"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private OnLocalNetworkStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->localVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->localVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    invoke-direct {p0, p1}, Lcom/ultrapower/mcs/engine/UMCS;->intToNetworkState(I)Lcom/ultrapower/mcs/engine/NetworkState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ultrapower/mcs/engine/IVideoObserver;->OnNetworkStateChanged(Lcom/ultrapower/mcs/engine/NetworkState;)V

    goto :goto_0
.end method

.method private OnLocalVideoLevelChanged(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->localVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->localVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    invoke-direct {p0, p1}, Lcom/ultrapower/mcs/engine/UMCS;->intToLevel(I)Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ultrapower/mcs/engine/IVideoObserver;->OnVideoLevelChanged(Lcom/ultrapower/mcs/engine/VideoCodecLevel;)V

    goto :goto_0
.end method

.method private native OnReceiveOriginalData(ZZ[B)I
.end method

.method private OnRemoteNetworkStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->remoteVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->remoteVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    invoke-direct {p0, p1}, Lcom/ultrapower/mcs/engine/UMCS;->intToNetworkState(I)Lcom/ultrapower/mcs/engine/NetworkState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ultrapower/mcs/engine/IVideoObserver;->OnNetworkStateChanged(Lcom/ultrapower/mcs/engine/NetworkState;)V

    goto :goto_0
.end method

.method private OnRemoteVideoLevelChanged(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->localVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->remoteVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    invoke-direct {p0, p1}, Lcom/ultrapower/mcs/engine/UMCS;->intToLevel(I)Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ultrapower/mcs/engine/IVideoObserver;->OnVideoLevelChanged(Lcom/ultrapower/mcs/engine/VideoCodecLevel;)V

    goto :goto_0
.end method

.method private OnTransportFailed()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportListener:Lcom/ultrapower/mcs/engine/ITransportListener;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportListener:Lcom/ultrapower/mcs/engine/ITransportListener;

    invoke-interface {v0}, Lcom/ultrapower/mcs/engine/ITransportListener;->OnTransportFailed()V

    .line 570
    :cond_0
    return-void
.end method

.method private native SetLocalVideoSendCodec(II)I
.end method

.method private native SetLoudSpeakerEnable(I)I
.end method

.method private native SetRotation(II)I
.end method

.method private native SetSendAudioCodec(I)I
.end method

.method private native SetTraceFilePath(Ljava/lang/String;I)I
.end method

.method private StartCamera(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 552
    invoke-static {}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->GetCameraSupportVideoSize()Ljava/util/ArrayList;

    move-result-object v1

    .line 554
    .local v1, "sizeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 555
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;

    .line 556
    .local v0, "csvs":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;
    iget v2, v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    iget v3, v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    invoke-direct {p0, p1, v2, v3}, Lcom/ultrapower/mcs/engine/UMCS;->StartCamera(III)I

    .line 557
    const/4 v2, 0x0

    .line 559
    .end local v0    # "csvs":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private native StartCamera(III)I
.end method

.method private native StartTransport(ILjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)I
.end method

.method private native StopCamera(I)I
.end method

.method private intToLevel(I)Lcom/ultrapower/mcs/engine/VideoCodecLevel;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 42
    sget-object v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->kCodecLevelLSD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    sget-object v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->kCodecLevelLSD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    goto :goto_0

    .line 38
    :pswitch_1
    sget-object v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->kCodecLevelSD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    goto :goto_0

    .line 40
    :pswitch_2
    sget-object v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->kCodecLevelHD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private intToNetworkState(I)Lcom/ultrapower/mcs/engine/NetworkState;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 56
    sget-object v0, Lcom/ultrapower/mcs/engine/NetworkState;->kNetworkStateLow:Lcom/ultrapower/mcs/engine/NetworkState;

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    sget-object v0, Lcom/ultrapower/mcs/engine/NetworkState;->kNetworkStateLow:Lcom/ultrapower/mcs/engine/NetworkState;

    goto :goto_0

    .line 52
    :pswitch_1
    sget-object v0, Lcom/ultrapower/mcs/engine/NetworkState;->kNetworkStateNormal:Lcom/ultrapower/mcs/engine/NetworkState;

    goto :goto_0

    .line 54
    :pswitch_2
    sget-object v0, Lcom/ultrapower/mcs/engine/NetworkState;->kNetworkStateGood:Lcom/ultrapower/mcs/engine/NetworkState;

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public ChangeCamera(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v1, -0x1

    .line 525
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/ultrapower/mcs/engine/UMCS;->GetCaptureDeviceNum()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    .line 526
    :cond_0
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera index is error , index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_0
    return v1

    .line 529
    :cond_1
    iget v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    if-ne v2, v1, :cond_2

    .line 530
    const-string v2, "camera"

    const-string v3, "change camera error,camera is not started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_2
    iget v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    if-ne v2, p1, :cond_3

    .line 534
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change camera error,current = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , change to = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :cond_3
    iget v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    invoke-direct {p0, v2}, Lcom/ultrapower/mcs/engine/UMCS;->StopCamera(I)I

    move-result v0

    .line 539
    .local v0, "ret":I
    if-ne v0, v1, :cond_4

    .line 540
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop camera error,current = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 543
    :cond_4
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->localContainer:Landroid/view/ViewGroup;

    iget-boolean v3, p0, Lcom/ultrapower/mcs/engine/UMCS;->localOnTop:Z

    invoke-virtual {p0, p1, v2, v3}, Lcom/ultrapower/mcs/engine/UMCS;->StartCamera(ILandroid/view/ViewGroup;Z)I

    move-result v0

    .line 544
    if-ne v0, v1, :cond_5

    .line 545
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start camera error,index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 548
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public native ChangeLocalRender(Ljava/lang/Object;)I
.end method

.method public native ChangeRemotelRender(Ljava/lang/Object;)I
.end method

.method public native CreateLocalAudio(I)I
.end method

.method public CreateLocalVideo(I)I
    .locals 1
    .param p1, "sessionId"    # I

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ultrapower/mcs/engine/UMCS;->CreateLocalVideo(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public native CreateRemoteAudio(I)I
.end method

.method public CreateRemoteVideo(ILandroid/view/ViewGroup;Z)I
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "onTop"    # Z

    .prologue
    .line 335
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/ultrapower/mcs/engine/video/ViERenderer;->CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;

    move-result-object v1

    .line 336
    .local v1, "sView":Landroid/view/SurfaceView;
    invoke-direct {p0, p1, v1}, Lcom/ultrapower/mcs/engine/UMCS;->CreateRemoteVideo(ILjava/lang/Object;)I

    move-result v0

    .line 337
    .local v0, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 338
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 339
    invoke-virtual {v1, p3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 341
    :cond_0
    return v0
.end method

.method public CurrentCameraIndex()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    return v0
.end method

.method public native DeleteLocalAudio(I)I
.end method

.method public native DeleteLocalVideo(I)I
.end method

.method public native DeleteRemoteAudio(I)I
.end method

.method public native DeleteRemoteVideo(I)I
.end method

.method public GetAudioCodecs()[Lcom/ultrapower/mcs/engine/AudioCodecInfo;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    const/4 v1, 0x5

    new-array v0, v1, [Lcom/ultrapower/mcs/engine/AudioCodecInfo;

    .line 234
    .local v0, "cai":[Lcom/ultrapower/mcs/engine/AudioCodecInfo;
    new-instance v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;

    invoke-direct {v1}, Lcom/ultrapower/mcs/engine/AudioCodecInfo;-><init>()V

    aput-object v1, v0, v3

    .line 235
    aget-object v1, v0, v3

    sget-object v2, Lcom/ultrapower/mcs/engine/AudioCodecType;->iSAC:Lcom/ultrapower/mcs/engine/AudioCodecType;

    iput-object v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->codecType:Lcom/ultrapower/mcs/engine/AudioCodecType;

    .line 236
    aget-object v1, v0, v3

    const/16 v2, 0x67

    iput v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->plType:I

    .line 237
    aget-object v1, v0, v3

    const-string v2, "ISAC/16000/1"

    iput-object v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->name:Ljava/lang/String;

    .line 239
    new-instance v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;

    invoke-direct {v1}, Lcom/ultrapower/mcs/engine/AudioCodecInfo;-><init>()V

    aput-object v1, v0, v4

    .line 240
    aget-object v1, v0, v4

    sget-object v2, Lcom/ultrapower/mcs/engine/AudioCodecType;->PCMU:Lcom/ultrapower/mcs/engine/AudioCodecType;

    iput-object v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->codecType:Lcom/ultrapower/mcs/engine/AudioCodecType;

    .line 241
    aget-object v1, v0, v4

    iput v3, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->plType:I

    .line 242
    aget-object v1, v0, v4

    const-string v2, "PCMU/8000/1"

    iput-object v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->name:Ljava/lang/String;

    .line 244
    new-instance v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;

    invoke-direct {v1}, Lcom/ultrapower/mcs/engine/AudioCodecInfo;-><init>()V

    aput-object v1, v0, v5

    .line 245
    aget-object v1, v0, v5

    sget-object v2, Lcom/ultrapower/mcs/engine/AudioCodecType;->iLBC:Lcom/ultrapower/mcs/engine/AudioCodecType;

    iput-object v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->codecType:Lcom/ultrapower/mcs/engine/AudioCodecType;

    .line 246
    aget-object v1, v0, v5

    const/16 v2, 0x66

    iput v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->plType:I

    .line 247
    aget-object v1, v0, v5

    const-string v2, "ILBC/8000/1"

    iput-object v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->name:Ljava/lang/String;

    .line 249
    new-instance v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;

    invoke-direct {v1}, Lcom/ultrapower/mcs/engine/AudioCodecInfo;-><init>()V

    aput-object v1, v0, v6

    .line 250
    aget-object v1, v0, v6

    sget-object v2, Lcom/ultrapower/mcs/engine/AudioCodecType;->AMRWB:Lcom/ultrapower/mcs/engine/AudioCodecType;

    iput-object v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->codecType:Lcom/ultrapower/mcs/engine/AudioCodecType;

    .line 251
    aget-object v1, v0, v6

    const/16 v2, 0x72

    iput v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->plType:I

    .line 252
    aget-object v1, v0, v6

    const-string v2, "AMR-WB/16000/1"

    iput-object v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->name:Ljava/lang/String;

    .line 254
    new-instance v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;

    invoke-direct {v1}, Lcom/ultrapower/mcs/engine/AudioCodecInfo;-><init>()V

    aput-object v1, v0, v7

    .line 255
    aget-object v1, v0, v7

    sget-object v2, Lcom/ultrapower/mcs/engine/AudioCodecType;->SILK:Lcom/ultrapower/mcs/engine/AudioCodecType;

    iput-object v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->codecType:Lcom/ultrapower/mcs/engine/AudioCodecType;

    .line 256
    aget-object v1, v0, v7

    const/16 v2, 0x7c

    iput v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->plType:I

    .line 257
    aget-object v1, v0, v7

    const-string v2, "SILK/16000/1"

    iput-object v2, v1, Lcom/ultrapower/mcs/engine/AudioCodecInfo;->name:Ljava/lang/String;

    .line 258
    return-object v0
.end method

.method public native GetCaptureDeviceNum()I
.end method

.method public native GetLoudSpeakerEnable()I
.end method

.method public GetVideoCodecs()[Lcom/ultrapower/mcs/engine/VideoCodecInfo;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 274
    iget-object v5, p0, Lcom/ultrapower/mcs/engine/UMCS;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 275
    const/4 v4, 0x0

    .line 290
    :goto_0
    return-object v4

    .line 277
    :cond_0
    const/4 v5, 0x1

    new-array v4, v5, [Lcom/ultrapower/mcs/engine/VideoCodecInfo;

    .line 278
    .local v4, "vcis":[Lcom/ultrapower/mcs/engine/VideoCodecInfo;
    new-instance v5, Lcom/ultrapower/mcs/engine/VideoCodecInfo;

    invoke-direct {v5}, Lcom/ultrapower/mcs/engine/VideoCodecInfo;-><init>()V

    aput-object v5, v4, v8

    .line 279
    aget-object v5, v4, v8

    const-string v6, "VP8"

    iput-object v6, v5, Lcom/ultrapower/mcs/engine/VideoCodecInfo;->codecName:Ljava/lang/String;

    .line 280
    aget-object v5, v4, v8

    sget-object v6, Lcom/ultrapower/mcs/engine/VideoCodecType;->VP8:Lcom/ultrapower/mcs/engine/VideoCodecType;

    iput-object v6, v5, Lcom/ultrapower/mcs/engine/VideoCodecInfo;->codecType:Lcom/ultrapower/mcs/engine/VideoCodecType;

    .line 281
    aget-object v5, v4, v8

    const/16 v6, 0x78

    iput v6, v5, Lcom/ultrapower/mcs/engine/VideoCodecInfo;->pyTpye:I

    .line 282
    new-instance v3, Lcom/ultrapower/mcs/engine/PhoneInfo;

    iget-object v5, p0, Lcom/ultrapower/mcs/engine/UMCS;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/ultrapower/mcs/engine/PhoneInfo;-><init>(Landroid/content/Context;)V

    .line 283
    .local v3, "pInfo":Lcom/ultrapower/mcs/engine/PhoneInfo;
    invoke-virtual {v3}, Lcom/ultrapower/mcs/engine/PhoneInfo;->getCpuFrequence()J

    move-result-wide v0

    .line 284
    .local v0, "cpuMaxFrequency":J
    invoke-virtual {v3}, Lcom/ultrapower/mcs/engine/PhoneInfo;->getNumCores()I

    move-result v2

    .line 285
    .local v2, "cpuNumber":I
    const/4 v5, 0x2

    if-lt v2, v5, :cond_1

    const-wide/32 v6, 0x124f80

    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    .line 286
    aget-object v5, v4, v8

    sget-object v6, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->kCodecLevelSD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    iput-object v6, v5, Lcom/ultrapower/mcs/engine/VideoCodecInfo;->maxCodecLevel:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    goto :goto_0

    .line 288
    :cond_1
    aget-object v5, v4, v8

    sget-object v6, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->kCodecLevelLSD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    iput-object v6, v5, Lcom/ultrapower/mcs/engine/VideoCodecInfo;->maxCodecLevel:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    goto :goto_0
.end method

.method public Init(Lcom/ultrapower/mcs/engine/UmcsConfig;)I
    .locals 10
    .param p1, "config"    # Lcom/ultrapower/mcs/engine/UmcsConfig;

    .prologue
    const/4 v6, 0x0

    .line 135
    invoke-virtual {p1}, Lcom/ultrapower/mcs/engine/UmcsConfig;->getTransportType()Lcom/ultrapower/mcs/engine/TransportType;

    move-result-object v5

    .line 136
    .local v5, "transportType":Lcom/ultrapower/mcs/engine/TransportType;
    sget-object v7, Lcom/ultrapower/mcs/engine/TransportType;->kExternal:Lcom/ultrapower/mcs/engine/TransportType;

    if-eq v5, v7, :cond_0

    sget-object v7, Lcom/ultrapower/mcs/engine/TransportType;->kExternalOriginal:Lcom/ultrapower/mcs/engine/TransportType;

    if-ne v5, v7, :cond_1

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/ultrapower/mcs/engine/UmcsConfig;->getTransportCallback()Lcom/ultrapower/mcs/engine/ITransportCallback;

    move-result-object v7

    if-nez v7, :cond_1

    .line 139
    const-string/jumbo v6, "umcs"

    const-string/jumbo v7, "transport callback is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v6, -0x1

    .line 172
    :goto_0
    return v6

    .line 143
    :cond_1
    invoke-virtual {p1}, Lcom/ultrapower/mcs/engine/UmcsConfig;->getTransportCallback()Lcom/ultrapower/mcs/engine/ITransportCallback;

    move-result-object v7

    iput-object v7, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportCallback:Lcom/ultrapower/mcs/engine/ITransportCallback;

    .line 144
    iput-object v5, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportType:Lcom/ultrapower/mcs/engine/TransportType;

    .line 146
    iget-object v7, p0, Lcom/ultrapower/mcs/engine/UMCS;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 148
    .local v0, "_audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v7

    iput v7, p0, Lcom/ultrapower/mcs/engine/UMCS;->oldMode:I

    .line 149
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 151
    .local v1, "apiLevel":I
    const/16 v7, 0xa

    if-gt v1, v7, :cond_4

    .line 153
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setMode(I)V

    .line 159
    :goto_1
    invoke-static {}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->Instances()Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    move-result-object v7

    iget-object v8, p0, Lcom/ultrapower/mcs/engine/UMCS;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->Start(Landroid/content/Context;)V

    .line 160
    const-string v7, "not supported"

    invoke-virtual {p1}, Lcom/ultrapower/mcs/engine/UmcsConfig;->getTraceFilter()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/ultrapower/mcs/engine/UMCS;->SetTraceFilePath(Ljava/lang/String;I)I

    .line 162
    iget-object v7, p0, Lcom/ultrapower/mcs/engine/UMCS;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 163
    .local v3, "exterFileDir":Ljava/io/File;
    const/4 v4, 0x0

    .line 164
    .local v4, "strDir":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 166
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "destDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 169
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 172
    .end local v2    # "destDir":Ljava/io/File;
    :cond_2
    iget-object v7, p0, Lcom/ultrapower/mcs/engine/UMCS;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ultrapower/mcs/engine/UmcsConfig;->getTransportType()Lcom/ultrapower/mcs/engine/TransportType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ultrapower/mcs/engine/TransportType;->getValue()I

    move-result v8

    invoke-virtual {p1}, Lcom/ultrapower/mcs/engine/UmcsConfig;->isMultiMode()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v6, 0x1

    :cond_3
    invoke-direct {p0, v7, v8, v6, v4}, Lcom/ultrapower/mcs/engine/UMCS;->Init(Landroid/content/Context;IILjava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 157
    .end local v3    # "exterFileDir":Ljava/io/File;
    .end local v4    # "strDir":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1
.end method

.method public OnOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 748
    invoke-virtual {p0, p1}, Lcom/ultrapower/mcs/engine/UMCS;->SetRotation(I)V

    .line 749
    return-void
.end method

.method public OnReceiveAudioRtcp([B)I
    .locals 1
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x1

    .line 627
    invoke-direct {p0, v0, v0, p1}, Lcom/ultrapower/mcs/engine/UMCS;->OnReceiveOriginalData(ZZ[B)I

    move-result v0

    return v0
.end method

.method public OnReceiveAudioRtp([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 618
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/ultrapower/mcs/engine/UMCS;->OnReceiveOriginalData(ZZ[B)I

    move-result v0

    return v0
.end method

.method public native OnReceiveData([B)I
.end method

.method public OnReceiveVideoRtcp([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 632
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/ultrapower/mcs/engine/UMCS;->OnReceiveOriginalData(ZZ[B)I

    move-result v0

    return v0
.end method

.method public OnReceiveVideoRtp([B)I
    .locals 1
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 622
    invoke-direct {p0, v0, v0, p1}, Lcom/ultrapower/mcs/engine/UMCS;->OnReceiveOriginalData(ZZ[B)I

    move-result v0

    return v0
.end method

.method public SetAudioSendCodec(Lcom/ultrapower/mcs/engine/AudioCodecType;)I
    .locals 1
    .param p1, "codecType"    # Lcom/ultrapower/mcs/engine/AudioCodecType;

    .prologue
    .line 664
    invoke-virtual {p1}, Lcom/ultrapower/mcs/engine/AudioCodecType;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ultrapower/mcs/engine/UMCS;->SetSendAudioCodec(I)I

    move-result v0

    return v0
.end method

.method public native SetLocalAudioMute(Z)I
.end method

.method public SetLocalVideoObserver(ILcom/ultrapower/mcs/engine/IVideoObserver;)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "observer"    # Lcom/ultrapower/mcs/engine/IVideoObserver;

    .prologue
    .line 698
    iput-object p2, p0, Lcom/ultrapower/mcs/engine/UMCS;->localVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    .line 699
    const/4 v0, 0x0

    return v0
.end method

.method public SetLoudSpeakerEnable(Z)I
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 209
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/ultrapower/mcs/engine/UMCS;->SetLoudSpeakerEnable(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetRemoteVideoObserver(ILcom/ultrapower/mcs/engine/IVideoObserver;)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "observer"    # Lcom/ultrapower/mcs/engine/IVideoObserver;

    .prologue
    .line 712
    iput-object p2, p0, Lcom/ultrapower/mcs/engine/UMCS;->remoteVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method public SetRotation(I)V
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    const/4 v3, 0x1

    .line 731
    move v1, p1

    .line 732
    .local v1, "or":I
    iget v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    if-gez v2, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 736
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 737
    iget v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    if-ne v2, v3, :cond_3

    .line 738
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 p1, v2, 0x168

    .line 742
    :cond_2
    :goto_1
    const-string/jumbo v2, "rotation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rocation ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "set send rotaion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    invoke-direct {p0, v2, p1}, Lcom/ultrapower/mcs/engine/UMCS;->SetRotation(II)I

    goto :goto_0

    .line 739
    :cond_3
    iget v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    if-nez v2, :cond_2

    .line 740
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 p1, v2, 0x168

    goto :goto_1
.end method

.method public SetVideoSendCodec(Lcom/ultrapower/mcs/engine/VideoCodecType;Lcom/ultrapower/mcs/engine/VideoCodecLevel;)I
    .locals 2
    .param p1, "codecType"    # Lcom/ultrapower/mcs/engine/VideoCodecType;
    .param p2, "level"    # Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    .prologue
    .line 680
    sget-object v0, Lcom/ultrapower/mcs/engine/VideoCodecType;->H264:Lcom/ultrapower/mcs/engine/VideoCodecType;

    if-ne p1, v0, :cond_0

    .line 681
    const/4 v0, -0x1

    .line 683
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/ultrapower/mcs/engine/VideoCodecType;->getValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->getValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ultrapower/mcs/engine/UMCS;->SetLocalVideoSendCodec(II)I

    move-result v0

    goto :goto_0
.end method

.method public StartCamera(ILandroid/view/ViewGroup;Z)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "onTop"    # Z

    .prologue
    const/4 v1, -0x1

    .line 486
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/ultrapower/mcs/engine/UMCS;->GetCaptureDeviceNum()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    .line 487
    :cond_0
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera index is error , index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 505
    :goto_0
    return v0

    .line 490
    :cond_1
    iput-object p2, p0, Lcom/ultrapower/mcs/engine/UMCS;->localContainer:Landroid/view/ViewGroup;

    .line 491
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ultrapower/mcs/engine/video/ViERenderer;->CreateLocalRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;

    move-result-object v2

    iput-object v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->localSv:Landroid/view/SurfaceView;

    .line 493
    invoke-direct {p0, p1}, Lcom/ultrapower/mcs/engine/UMCS;->StartCamera(I)I

    move-result v0

    .line 494
    .local v0, "ret":I
    if-ne v0, v1, :cond_2

    .line 495
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start camera error,index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    :cond_2
    iput p1, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    .line 499
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/UMCS;->localSv:Landroid/view/SurfaceView;

    invoke-virtual {v1, p3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 500
    iput-boolean p3, p0, Lcom/ultrapower/mcs/engine/UMCS;->localOnTop:Z

    .line 501
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 502
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/UMCS;->localSv:Landroid/view/SurfaceView;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 503
    invoke-static {}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->Instances()Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->RemoveObserver(Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;)V

    .line 504
    invoke-static {}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->Instances()Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->AddObserver(Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;)V

    goto :goto_0
.end method

.method public native StartRecvRemoteAudio(I)I
.end method

.method public native StartRecvRemoteVideo(I)I
.end method

.method public native StartSendLocalAudio(I)I
.end method

.method public native StartSendLocalVideo(I)I
.end method

.method public StartTransport(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;Lcom/ultrapower/mcs/engine/ITransportListener;)I
    .locals 7
    .param p1, "local_ip"    # Ljava/lang/String;
    .param p2, "local_port"    # I
    .param p3, "remote_ip"    # Ljava/lang/String;
    .param p4, "remote_port"    # I
    .param p5, "data"    # Ljava/lang/Object;
    .param p6, "failListener"    # Lcom/ultrapower/mcs/engine/ITransportListener;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportType:Lcom/ultrapower/mcs/engine/TransportType;

    sget-object v1, Lcom/ultrapower/mcs/engine/TransportType;->kExternal:Lcom/ultrapower/mcs/engine/TransportType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportType:Lcom/ultrapower/mcs/engine/TransportType;

    sget-object v1, Lcom/ultrapower/mcs/engine/TransportType;->kExternalOriginal:Lcom/ultrapower/mcs/engine/TransportType;

    if-ne v0, v1, :cond_1

    .line 596
    :cond_0
    const-string/jumbo v0, "umcs"

    const-string v1, "external transport does not support start transport"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v0, -0x1

    .line 601
    :goto_0
    return v0

    .line 599
    :cond_1
    iput-object p6, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportListener:Lcom/ultrapower/mcs/engine/ITransportListener;

    .line 600
    const-string v0, "UMCS.java StartTransport "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localIp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,remoteIp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportType:Lcom/ultrapower/mcs/engine/TransportType;

    invoke-virtual {v0}, Lcom/ultrapower/mcs/engine/TransportType;->getValue()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ultrapower/mcs/engine/UMCS;->StartTransport(ILjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public StopCamera()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 460
    iget v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->localContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 464
    invoke-static {}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->Instances()Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->RemoveObserver(Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;)V

    .line 465
    iget v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    invoke-direct {p0, v2}, Lcom/ultrapower/mcs/engine/UMCS;->StopCamera(I)I

    move-result v0

    .line 466
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 467
    iput v1, p0, Lcom/ultrapower/mcs/engine/UMCS;->currentCameraIndex:I

    goto :goto_0
.end method

.method public native StopRecvRemoteAudio(I)I
.end method

.method public native StopRecvRemoteVideo(I)I
.end method

.method public native StopSendLocalAudio(I)I
.end method

.method public native StopSendLocalVideo(I)I
.end method

.method public native StopTransport()I
.end method

.method public Terminate()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 188
    .local v0, "_audioManager":Landroid/media/AudioManager;
    iget v2, p0, Lcom/ultrapower/mcs/engine/UMCS;->oldMode:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 190
    invoke-static {}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->Instances()Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->Stop()V

    .line 191
    invoke-direct {p0}, Lcom/ultrapower/mcs/engine/UMCS;->Fini()I

    move-result v1

    .line 192
    .local v1, "ret":I
    iput-object v4, p0, Lcom/ultrapower/mcs/engine/UMCS;->localVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    .line 193
    iput-object v4, p0, Lcom/ultrapower/mcs/engine/UMCS;->remoteVideoObserver:Lcom/ultrapower/mcs/engine/IVideoObserver;

    .line 194
    iput-object v4, p0, Lcom/ultrapower/mcs/engine/UMCS;->transportListener:Lcom/ultrapower/mcs/engine/ITransportListener;

    .line 196
    return v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/UMCS;->mContext:Landroid/content/Context;

    .line 727
    return-void
.end method
